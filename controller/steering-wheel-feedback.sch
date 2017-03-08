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
LIBS:line-interface-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 6 6
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
L CONN_01X02 J?
U 1 1 58C0E3DC
P 6150 3200
F 0 "J?" H 6228 3241 50  0000 L CNN
F 1 "CONN_01X02" H 6228 3150 50  0000 L CNN
F 2 "" H -3300 -450 50  0001 C CNN
F 3 "" H -3300 -450 50  0001 C CNN
	1    6150 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 3150 5050 3150
$Comp
L R R?
U 1 1 58C0E434
P 5050 3300
F 0 "R?" H 5120 3346 50  0000 L CNN
F 1 "R" H 5120 3255 50  0000 L CNN
F 2 "" V -2970 350 50  0001 C CNN
F 3 "" H -2900 350 50  0001 C CNN
	1    5050 3300
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 58C0E45C
P 5050 3600
F 0 "R?" H 5120 3646 50  0000 L CNN
F 1 "R" H 5120 3555 50  0000 L CNN
F 2 "" V -2970 650 50  0001 C CNN
F 3 "" H -2900 650 50  0001 C CNN
	1    5050 3600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 58C0E4A6
P 5050 3750
F 0 "#PWR?" H 5100 3800 50  0001 C CNN
F 1 "GND" H 5055 3577 50  0000 C CNN
F 2 "" H -3000 100 50  0001 C CNN
F 3 "" H -3000 100 50  0001 C CNN
	1    5050 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 3450 5050 3450
$Comp
L D_Zener D?
U 1 1 58C0E5E3
P 4800 3600
F 0 "D?" V 4754 3679 50  0000 L CNN
F 1 "5V" V 4845 3679 50  0000 L CNN
F 2 "" H -2700 150 50  0001 C CNN
F 3 "" H -2700 150 50  0001 C CNN
	1    4800 3600
	0    1    1    0   
$EndComp
Wire Wire Line
	4500 3750 5250 3750
Connection ~ 5050 3750
Connection ~ 5050 3450
Connection ~ 4800 3450
$Comp
L C C?
U 1 1 58C0E685
P 4500 3600
F 0 "C?" H 4615 3646 50  0000 L CNN
F 1 "C" H 4615 3555 50  0000 L CNN
F 2 "" H -2962 50  50  0001 C CNN
F 3 "" H -3000 200 50  0001 C CNN
	1    4500 3600
	1    0    0    -1  
$EndComp
Connection ~ 4500 3450
Connection ~ 4800 3750
Text HLabel 4250 3450 0    60   Input ~ 0
WHEEL_POS_ANALOG
Text HLabel 5250 3750 2    60   Input ~ 0
GND
$EndSCHEMATC
