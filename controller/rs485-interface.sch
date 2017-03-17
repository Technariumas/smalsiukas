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
LIBS:shield_arduino
LIBS:controller-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 10
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
L SP3481EN U3
U 1 1 58C048AA
P 6000 3600
F 0 "U3" H 5700 3950 50  0000 L CNN
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
L C C20
U 1 1 58C048AB
P 4800 2700
F 0 "C20" H 4850 2800 50  0000 L CNN
F 1 "1u" H 4850 2600 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 4838 2550 30  0001 C CNN
F 3 "" H 4800 2700 60  0000 C CNN
	1    4800 2700
	1    0    0    -1  
$EndComp
Text Label 6900 3500 2    60   ~ 0
RS485A
Text Label 6900 3700 2    60   ~ 0
RS485B
Wire Wire Line
	6000 2550 6000 3200
Wire Wire Line
	4800 2550 6000 2550
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
	4450 3600 5600 3600
Connection ~ 5600 3600
Text HLabel 4450 3400 0    60   Input ~ 0
RX
Text HLabel 4450 3800 0    60   Input ~ 0
TX
Text HLabel 4450 3600 0    60   Input ~ 0
~RE
Text HLabel 4800 2350 0    60   Input ~ 0
+5V
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
L CONN_01X04 J21
U 1 1 58C08A57
P 7400 3600
F 0 "J21" H 7478 3641 50  0000 L CNN
F 1 "CONN_01X04" H 7478 3550 50  0000 L CNN
F 2 "Connectors_JST:JST_EH_B04B-EH-A_04x2.50mm_Straight" H -400 250 50  0001 C CNN
F 3 "" H -400 250 50  0001 C CNN
F 4 "?" H 7400 3600 60  0001 C CNN "PartNo"
F 5 "?" H 7400 3600 60  0001 C CNN "Manufacturer"
F 6 "1830714, 1830708, 1863249" H 7400 3600 60  0001 C CNN "Distributor"
	1    7400 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 3550 7200 3550
Wire Wire Line
	7050 3650 7200 3650
Wire Wire Line
	7200 4150 7200 3750
Text HLabel 7200 2100 2    60   Input ~ 0
VCC_HIGH
Wire Wire Line
	7200 2100 7200 2200
Wire Wire Line
	7200 2500 7200 3450
$Comp
L Fuse F1
U 1 1 58C9F8B4
P 7200 2350
F 0 "F1" H 7260 2396 50  0000 L CNN
F 1 "Fuse" H 7260 2305 50  0000 L CNN
F 2 "smalsiukas-footpints:Automotive-Fuse-Holder" V 4180 700 50  0001 C CNN
F 3 "" H 4250 700 50  0001 C CNN
F 4 "?" H 7200 2350 60  0001 C CNN "PartNo"
F 5 "?" H 7200 2350 60  0001 C CNN "Manufacturer"
F 6 "1586596" H 7200 2350 60  0001 C CNN "Distributor"
	1    7200 2350
	1    0    0    -1  
$EndComp
$Comp
L CP1 C34
U 1 1 58C9FD4F
P 6850 3000
F 0 "C34" H 6965 3046 50  0000 L CNN
F 1 "470u" H 6965 2955 50  0000 L CNN
F 2 "Capacitors_ThroughHole:CP_Radial_D16.0mm_P7.50mm" H 1700 1250 50  0001 C CNN
F 3 "" H 1700 1250 50  0001 C CNN
F 4 "ECA2AAM471X" H 6850 3000 60  0001 C CNN "PartNo"
F 5 "PANASONIC" H 6850 3000 60  0001 C CNN "Manufacturer"
F 6 "8767696" H 6850 3000 60  0001 C CNN "Distributor"
	1    6850 3000
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6850 2850 7200 2850
Connection ~ 7200 2850
Wire Wire Line
	6850 3150 6850 4150
Connection ~ 6850 4150
$Comp
L GND #PWR011
U 1 1 58C9FF15
P 6850 4150
F 0 "#PWR011" H 6850 3900 50  0001 C CNN
F 1 "GND" H 6855 3977 50  0000 C CNN
F 2 "" H 6850 4150 50  0001 C CNN
F 3 "" H 6850 4150 50  0001 C CNN
	1    6850 4150
	1    0    0    -1  
$EndComp
$Comp
L C C35
U 1 1 58CA11C9
P 7050 3000
F 0 "C35" H 7100 3100 50  0000 L CNN
F 1 "1u" H 7100 2900 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 7088 2850 30  0001 C CNN
F 3 "" H 7050 3000 60  0000 C CNN
	1    7050 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 3150 6850 3150
Connection ~ 7050 2850
$Comp
L R R59
U 1 1 58CB3B0F
P 5450 2950
F 0 "R59" H 5519 2996 50  0000 L CNN
F 1 "100k" H 5519 2905 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 1830 450 50  0001 C CNN
F 3 "" H 1900 450 50  0001 C CNN
	1    5450 2950
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5450 2800 5450 2550
Connection ~ 5450 2550
Wire Wire Line
	5450 3100 5450 3600
Connection ~ 5450 3600
$Comp
L R R58
U 1 1 58CB3BD1
P 5100 3800
F 0 "R58" V 5215 3800 50  0000 C CNN
F 1 "1k" V 5306 3800 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 1480 1300 50  0001 C CNN
F 3 "" H 1550 1300 50  0001 C CNN
	1    5100 3800
	0    1    1    0   
$EndComp
$Comp
L R R57
U 1 1 58CB3CD2
P 5100 3400
F 0 "R57" V 4893 3400 50  0000 C CNN
F 1 "1k" V 4984 3400 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 1480 900 50  0001 C CNN
F 3 "" H 1550 900 50  0001 C CNN
	1    5100 3400
	0    -1   1    0   
$EndComp
Wire Wire Line
	4950 3400 4450 3400
Wire Wire Line
	4950 3800 4450 3800
$EndSCHEMATC
