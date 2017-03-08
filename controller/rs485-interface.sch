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
Sheet 4 6
Title "Digital soil moisture sensor"
Date "Tue 17 Feb 2015"
Rev ""
Comp "Catnip electronics"
Comment1 "by Albertas Mickėnas mic@wemakethings.net"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L SP3481EN U?
U 1 1 58C048AA
P 6000 3600
F 0 "U?" H 5700 3950 50  0000 L CNN
F 1 "SN65HVD72" H 6100 3950 50  0000 L CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 6000 3600 50  0001 C CIN
F 3 "" H 6000 3600 60  0000 C CNN
F 4 "MAX13442EASA" H 6000 3600 60  0001 C CNN "PartNo"
F 5 "MAXIM" H 6000 3600 60  0001 C CNN "Manufacturer"
F 6 "2511930" H 6000 3600 60  0001 C CNN "Distributor"
	1    6000 3600
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 58C048AB
P 4800 2700
F 0 "C?" H 4850 2800 50  0000 L CNN
F 1 "1u" H 4850 2600 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 4838 2550 30  0001 C CNN
F 3 "" H 4800 2700 60  0000 C CNN
	1    4800 2700
	1    0    0    -1  
$EndComp
Text Label 6900 3500 2    60   ~ 0
RS485A
Text Label 6900 3700 2    60   ~ 0
RS485B
Wire Wire Line
	6000 3200 6000 2550
Wire Wire Line
	6000 2550 4800 2550
Wire Wire Line
	6400 3500 7050 3500
Connection ~ 4800 2550
Wire Wire Line
	6400 3700 7050 3700
Wire Wire Line
	7050 3700 7050 3650
Wire Wire Line
	7050 3500 7050 3550
Wire Wire Line
	5600 3400 5250 3400
Wire Wire Line
	5600 3800 5250 3800
Wire Wire Line
	5600 3500 5600 3700
Wire Wire Line
	5600 3600 5250 3600
Connection ~ 5600 3600
Text Label 5250 3400 0    60   ~ 0
RX
Text Label 5250 3800 0    60   ~ 0
TX
Text Label 5250 3600 0    60   ~ 0
~RE
Text HLabel 5250 3400 0    60   Input ~ 0
RX
Text HLabel 5250 3800 0    60   Input ~ 0
TX
Text HLabel 5250 3600 0    60   Input ~ 0
~RE
Text HLabel 4800 2350 0    60   Input ~ 0
VCC
Wire Wire Line
	4800 2550 4800 2350
Text HLabel 6000 4150 3    60   Input ~ 0
GND
Wire Wire Line
	6000 4150 6000 4000
Wire Wire Line
	4800 2850 4800 2850
Wire Wire Line
	4800 2850 4800 4150
Wire Wire Line
	4800 4150 7200 4150
Connection ~ 6000 4150
$Comp
L CONN_01X04 J?
U 1 1 58C08A57
P 7400 3600
F 0 "J?" H 7478 3641 50  0000 L CNN
F 1 "CONN_01X04" H 7478 3550 50  0000 L CNN
F 2 "" H -400 250 50  0001 C CNN
F 3 "" H -400 250 50  0001 C CNN
	1    7400 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 3550 7200 3550
Wire Wire Line
	7050 3650 7200 3650
Wire Wire Line
	7200 4150 7200 3750
Text HLabel 7200 2900 2    60   Input ~ 0
VCC_HIGH
$Comp
L Fuse F?
U 1 1 58C08BC1
P 7200 3150
F 0 "F?" H 7260 3196 50  0000 L CNN
F 1 "Fuse" H 7260 3105 50  0000 L CNN
F 2 "" V -1620 0   50  0001 C CNN
F 3 "" H -1550 0   50  0001 C CNN
	1    7200 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 2900 7200 3000
Wire Wire Line
	7200 3300 7200 3450
$EndSCHEMATC
