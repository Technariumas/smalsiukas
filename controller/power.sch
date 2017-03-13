EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:mic-parts
LIBS:controller-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 10
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
L CONN_01X02 J22
U 1 1 58C0B3B4
P 900 1650
F 0 "J22" H 819 1375 50  0000 C CNN
F 1 "BATT" H 819 1466 50  0000 C CNN
F 2 "" H -600 -1600 50  0001 C CNN
F 3 "" H -600 -1600 50  0001 C CNN
	1    900  1650
	-1   0    0    1   
$EndComp
Text HLabel 6700 1900 2    60   Input ~ 0
VCC_CLEAN
Text HLabel 6700 2100 2    60   Input ~ 0
VCC_DIRTY
Text HLabel 1400 1350 2    60   Input ~ 0
VCC_HIGH
Text HLabel 6700 2600 2    60   Input ~ 0
GND
$Comp
L Fuse F2
U 1 1 58C0B526
P 1250 1600
F 0 "F2" V 1447 1600 50  0000 C CNN
F 1 "Fuse" V 1356 1600 50  0000 C CNN
F 2 "" V -1770 -50 50  0001 C CNN
F 3 "" H -1700 -50 50  0001 C CNN
	1    1250 1600
	0    -1   -1   0   
$EndComp
Text HLabel 1100 1950 2    60   Input ~ 0
GND
Wire Wire Line
	1100 1950 1100 1700
Wire Wire Line
	1400 1350 1400 1600
$EndSCHEMATC
