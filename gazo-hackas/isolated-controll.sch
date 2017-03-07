EESchema Schematic File Version 2
LIBS:Oscillators
LIBS:nordicsemi
LIBS:gennum
LIBS:Power_Management
LIBS:transistors
LIBS:transf
LIBS:regul
LIBS:microcontrollers
LIBS:atmel
LIBS:Worldsemi
LIBS:rfcom
LIBS:ttl_ieee
LIBS:Xicor
LIBS:device
LIBS:conn
LIBS:nxp_armmcu
LIBS:dsp
LIBS:74xx
LIBS:microchip_pic24mcu
LIBS:modules
LIBS:sensors
LIBS:cypress
LIBS:maxim
LIBS:interface
LIBS:digital-audio
LIBS:valves
LIBS:motor_drivers
LIBS:msp430
LIBS:audio
LIBS:onsemi
LIBS:Altera
LIBS:74xgxx
LIBS:philips
LIBS:adc-dac
LIBS:allegro
LIBS:graphic
LIBS:opto
LIBS:xilinx
LIBS:ac-dc
LIBS:linear
LIBS:ftdi
LIBS:analog_switches
LIBS:display
LIBS:bosch
LIBS:analog_devices
LIBS:stm32
LIBS:nxp
LIBS:mechanical
LIBS:bbd
LIBS:stm8
LIBS:logo
LIBS:zetex
LIBS:intel
LIBS:brooktre
LIBS:texas
LIBS:Lattice
LIBS:switches
LIBS:intersil
LIBS:microchip_pic18mcu
LIBS:Zilog
LIBS:elec-unifil
LIBS:memory
LIBS:battery_management
LIBS:motors
LIBS:hc11
LIBS:dc-dc
LIBS:microchip_pic32mcu
LIBS:pspice
LIBS:microchip_pic10mcu
LIBS:supertex
LIBS:ir
LIBS:cmos4000
LIBS:siliconi
LIBS:powerint
LIBS:microchip_pic16mcu
LIBS:triac_thyristor
LIBS:silabs
LIBS:microchip
LIBS:actel
LIBS:references
LIBS:microchip_pic12mcu
LIBS:cmos_ieee
LIBS:contrib
LIBS:power
LIBS:ESD_Protection
LIBS:motorola
LIBS:microchip_dspic33dsc
LIBS:video
LIBS:wiznet
LIBS:leds
LIBS:diode
LIBS:relays
LIBS:w_connectors
LIBS:special
LIBS:isolated-controll-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L GND #PWR2
U 1 1 58BEE528
P 5100 3250
F 0 "#PWR2" H 1550 -50 50  0001 C CNN
F 1 "GND" H 5105 3077 50  0000 C CNN
F 2 "" H 1550 200 50  0001 C CNN
F 3 "" H 1550 200 50  0001 C CNN
	1    5100 3250
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR1
U 1 1 58BEE558
P 5100 2100
F 0 "#PWR1" H 1550 -650 50  0001 C CNN
F 1 "VCC" H 5117 2273 50  0000 C CNN
F 2 "" H 1550 -500 50  0001 C CNN
F 3 "" H 1550 -500 50  0001 C CNN
	1    5100 2100
	1    0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 58BEE596
P 5100 2900
F 0 "R4" H 5170 2946 50  0000 L CNN
F 1 "3.6k" H 5170 2855 50  0000 L CNN
F 2 "" V 630 0   50  0001 C CNN
F 3 "" H 700 0   50  0001 C CNN
	1    5100 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 2100 5100 2750
Wire Wire Line
	5100 3250 5100 3050
$Comp
L OPTO-TRANSISTOR-4 U1
U 1 1 58BEE64D
P 3100 2600
F 0 "U1" H 3100 2833 50  0000 C CNN
F 1 "OPTO-TRANSISTOR-4" H 3100 2834 50  0001 C CNN
F 2 "" H -1550 -550 50  0001 L CIN
F 3 "" H -1350 -350 50  0001 L CNN
	1    3100 2600
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 58BEE735
P 4100 3050
F 0 "R3" H 4170 3096 50  0000 L CNN
F 1 "1k" H 4170 3005 50  0000 L CNN
F 2 "" V -370 150 50  0001 C CNN
F 3 "" H -300 150 50  0001 C CNN
	1    4100 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 3250 5100 3250
Wire Wire Line
	4100 3250 4100 3200
Connection ~ 5100 3250
Wire Wire Line
	4100 2900 4950 2900
Text Label 4950 2900 2    60   ~ 0
CONTROL
$Comp
L Q_NMOS_GSD Q1
U 1 1 58BEE8F0
P 4000 2700
F 0 "Q1" H 4206 2700 50  0000 L CNN
F 1 "Q_NMOS_GSD" H 4205 2655 50  0001 L CNN
F 2 "" H 200 100 50  0001 C CNN
F 3 "" H 0   0   50  0001 C CNN
	1    4000 2700
	1    0    0    -1  
$EndComp
$Comp
L POT RV1
U 1 1 58BEEA50
P 4100 2350
F 0 "RV1" H 4030 2396 50  0000 R CNN
F 1 "40k" H 4030 2305 50  0000 R CNN
F 2 "" H -50 50  50  0001 C CNN
F 3 "" H -50 50  50  0001 C CNN
	1    4100 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 2500 4250 2500
Wire Wire Line
	4250 2500 4250 2350
Wire Wire Line
	3400 2100 5100 2100
Wire Wire Line
	4100 2100 4100 2200
$Comp
L R R2
U 1 1 58BEEB23
P 3800 3050
F 0 "R2" H 3870 3096 50  0000 L CNN
F 1 "100k" H 3870 3005 50  0000 L CNN
F 2 "" V -670 150 50  0001 C CNN
F 3 "" H -600 150 50  0001 C CNN
	1    3800 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 3200 3800 3250
Connection ~ 4100 3250
Wire Wire Line
	3800 2700 3800 2900
$Comp
L R R1
U 1 1 58BEEBA1
P 3400 2350
F 0 "R1" H 3470 2396 50  0000 L CNN
F 1 "100k" H 3470 2305 50  0000 L CNN
F 2 "" V -1070 -550 50  0001 C CNN
F 3 "" H -1000 -550 50  0001 C CNN
	1    3400 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 2200 3400 2100
Connection ~ 4100 2100
Wire Wire Line
	3400 2700 3800 2700
Connection ~ 3800 2700
$Comp
L R R5
U 1 1 58BEEDC4
P 4450 2400
F 0 "R5" H 4520 2446 50  0000 L CNN
F 1 "40k" H 4520 2355 50  0000 L CNN
F 2 "" V -20 -500 50  0001 C CNN
F 3 "" H 50  -500 50  0001 C CNN
	1    4450 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 2250 4450 2100
Connection ~ 4450 2100
Wire Wire Line
	4450 2550 4450 2900
Connection ~ 4450 2900
$EndSCHEMATC
