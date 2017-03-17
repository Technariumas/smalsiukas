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

inline static void serialSetup() {
    #define BAUD 9600
    #include <util/setbaud.h>
    DDRA |= _BV(DRIVER_ENABLE);
    UBRR0H = UBRRH_VALUE;
    UBRR0L = UBRRL_VALUE;
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

inline static void serialDriverEnable() {
    PORTA |= _BV(DRIVER_ENABLE);
}

inline static void serialDriverDisable() {
    PORTA &= ~_BV(DRIVER_ENABLE);
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

char sensorData  = 0;

int main (void) {
    wdt_disable();

    ledSetup();
    stdout = &uart_output;
    serialSetup();
    serialDriverEnable();
    setupSPI();

    while(1) {
        ledOn();
        _delay_ms(100);
        ledOff();
        _delay_ms(100);
        sensorData = readSPI();
        outputBits(sensorData);
    }
}
