#include <inttypes.h>
#include <avr/io.h>
#include <util/delay.h>
#include <avr/interrupt.h>
#include <avr/wdt.h>
#include <stdio.h>

#define LED_A PA3
#define LED_DDR DDRA
#define LED_PORT PORTA
#define DRIVER_ENABLE PA0
#define SPI_CS PA7
#define SPI_MOSI PA6
#define SPI_CLK PA4

char lineData = 0;
char lineFiltered = 0;
uint8_t sensors[8];

inline static void serialSetup() {
    #define BAUD 115200
    #include <util/setbaud.h>
    DDRA |= _BV(DRIVER_ENABLE);
    PORTA &= ~_BV(DRIVER_ENABLE);

    UBRR0H = UBRRH_VALUE;
    UBRR0L = UBRRL_VALUE;
    UCSR0A |= _BV(U2X0);
    UCSR0B = _BV(RXEN0) | _BV(TXEN0);
    UCSR0C = _BV(UCSZ00) | _BV(UCSZ01);
}

inline static setupSPI() {
    DDRA |= _BV(SPI_CS) | _BV(SPI_CLK) | _BV(SPI_MOSI);
    PORTA |= _BV(SPI_CS);
    SPCR = _BV(SPE) | _BV(MSTR);
}

inline static uint8_t readSPI() {
    PORTA &= ~_BV(SPI_CS);
    _delay_ms(1);
    PORTA |= _BV(SPI_CS);

    SPDR = 0;
    while(!(SPSR & (1<<SPIF))){
        //wait
    }
    return SPDR;
}

inline static void timerSetup() {
    OCR1A = 20000;
    TIMSK1 = _BV(OCIE1A);
    TCCR1B = _BV(WGM12) | _BV(CS11);
}

inline static void serialDriverEnable() {
    PORTA |= _BV(DRIVER_ENABLE);
}

inline static void serialDriverDisable() {
    PORTA &= ~_BV(DRIVER_ENABLE);
    UCSR0A |= _BV(TXC0);
}

void uart_putchar(char c, FILE *stream) {
    if (c == '\n') {
        uart_putchar('\r', stream);
    }
    loop_until_bit_is_set(UCSR0A, UDRE0);
    UDR0 = c;
}

FILE uart_output = FDEV_SETUP_STREAM(uart_putchar, NULL, _FDEV_SETUP_WRITE);


inline static void ledSetup(){
    LED_DDR |= _BV(LED_A);
    LED_PORT &= ~_BV(LED_A);
}

inline static void ledOn() {
    LED_PORT |= _BV(LED_A);
}

inline static void ledOff() {
    LED_PORT &= ~_BV(LED_A);
}

inline static ledToggle() {
    LED_PORT ^= _BV(LED_A);
}

inline static outputBits(char c) {
    uint8_t i;
    for(i = 0; i < 8; i++) {
        if(0 != (0b10000000 & c)) {
            uart_putchar('1', stdout);
        } else {
            uart_putchar('0', stdout);
        }
        c = c << 1;
    }
    uart_putchar('\n', stdout);
}

inline static outputSensors() {
    uint8_t i;
    for(i = 0; i < 8; i++) {
        if(sensors[i] == 255) {
            uart_putchar('1', stdout);
        } else {
            uart_putchar('0', stdout);
        }
    }    
    uart_putchar('\n', stdout);
}

inline static void filter(uint8_t line) {
    uint8_t i;
    for(i = 0; i < 8;i++) {
        sensors[i] = (sensors[i] << 1) | (0 != (line & _BV(i)));
        if(lineFiltered & _BV(i) && 0 == sensors[i]) {
            lineFiltered &= ~_BV(i);
        } else if(0 == (lineFiltered & _BV(i)) && 255 == sensors[i]) {
            lineFiltered |= _BV(i);
        }
    }
}

volatile uint8_t doScan = 0;

ISR(TIMER1_COMPA_vect) {
    doScan = 1;
}

inline static uint8_t isRequest() {
    return (_BV(RXC0) & UCSR0A) && '?' == UDR0;
}

inline static uint8_t isTxDone() {
    return (_BV(TXC0) & UCSR0A);
}

int main (void) {
    wdt_disable();

    ledSetup();
    stdout = &uart_output;
    serialSetup();
    setupSPI();
    timerSetup();
    sei();

    while(1) {
        if(doScan) {
            lineData = readSPI();
            filter(lineData);
            doScan = 0;
        }
        if(isRequest()) {
            ledOn();
            serialDriverEnable();
            _delay_us(200);
            uart_putchar(lineFiltered, stdout);
            uart_putchar(~lineFiltered + 1, stdout);
        }else{
            if(isTxDone()) {
                serialDriverDisable();
                ledOff();
            }
        }
    }
}
