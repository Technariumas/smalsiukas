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
Sheet 7 10
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
L CONN_01X05 J6
U 1 1 58CA4536
P 9600 3250
F 0 "J6" H 9678 3291 50  0000 L CNN
F 1 "CONN_01X05" H 9678 3200 50  0000 L CNN
F 2 "smalsiukas-footpints:TerminalBlock_5.08-5pol" H 9600 3250 50  0001 C CNN
F 3 "" H 9600 3250 50  0001 C CNN
F 4 "?" H 9600 3250 60  0001 C CNN "PartNo"
F 5 "?" H 9600 3250 60  0001 C CNN "Manufacturer"
F 6 "?" H 9600 3250 60  0001 C CNN "Distributor"
	1    9600 3250
	1    0    0    1   
$EndComp
Wire Wire Line
	6650 3150 9000 3150
Wire Wire Line
	7750 3250 9400 3250
Wire Wire Line
	7750 3350 9400 3350
Wire Wire Line
	7050 3450 9400 3450
Wire Wire Line
	5400 3550 9150 3550
Text Label 7750 3150 0    60   ~ 0
GECKO_DISABLE
Text Label 7750 3250 0    60   ~ 0
GECKO_DIR
Text Label 7750 3350 0    60   ~ 0
GECKO_STEP
Text Label 7750 3450 0    60   ~ 0
GECKO_COMMON_GND
Text Label 7750 3550 0    60   ~ 0
GECKO_FAULT
Text HLabel 7200 2350 0    60   Input ~ 0
+5V
$Comp
L R R67
U 1 1 58CA49EF
P 8550 2850
F 0 "R67" H 8619 2896 50  0000 L CNN
F 1 "330" H 8619 2805 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 4080 -50 50  0001 C CNN
F 3 "" H 4150 -50 50  0001 C CNN
F 4 "?" H 8550 2850 60  0001 C CNN "PartNo"
F 5 "?" H 8550 2850 60  0001 C CNN "Manufacturer"
F 6 "?" H 8550 2850 60  0001 C CNN "Distributor"
	1    8550 2850
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7200 2350 8900 2350
Wire Wire Line
	8550 2350 8550 2700
Wire Wire Line
	8550 3000 8550 3150
Connection ~ 8550 3150
$Comp
L Q_NMOS_GSD Q9
U 1 1 58CA4F34
P 6550 3800
F 0 "Q9" H 6756 3800 50  0000 L CNN
F 1 "Q_NMOS_GSD" H 6755 3755 50  0001 L CNN
F 2 "Housings_SOT-23_SOT-143_TSOT-6:SOT-23_Handsoldering" H 2750 1200 50  0001 C CNN
F 3 "" H 2550 1100 50  0001 C CNN
	1    6550 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 3150 6650 3600
$Comp
L GND #PWR22
U 1 1 58CA4F91
P 6650 4100
F 0 "#PWR22" H 6650 3850 50  0001 C CNN
F 1 "GND" H 6655 3927 50  0000 C CNN
F 2 "" H 6650 4100 50  0001 C CNN
F 3 "" H 6650 4100 50  0001 C CNN
	1    6650 4100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR23
U 1 1 58CA4FA9
P 7050 4000
F 0 "#PWR23" H 7050 3750 50  0001 C CNN
F 1 "GND" H 7055 3827 50  0000 C CNN
F 2 "" H 7050 4000 50  0001 C CNN
F 3 "" H 7050 4000 50  0001 C CNN
	1    7050 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 3450 7050 4000
$Comp
L R R64
U 1 1 58CA4FE1
P 6350 3950
F 0 "R64" V 6557 3950 50  0000 C CNN
F 1 "100k" V 6466 3950 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 1880 1050 50  0001 C CNN
F 3 "" H 1950 1050 50  0001 C CNN
F 4 "?" H 6350 3950 60  0001 C CNN "PartNo"
F 5 "?" H 6350 3950 60  0001 C CNN "Manufacturer"
F 6 "?" H 6350 3950 60  0001 C CNN "Distributor"
	1    6350 3950
	-1   0    0    -1  
$EndComp
$Comp
L R R63
U 1 1 58CA5047
P 6200 3800
F 0 "R63" V 6407 3800 50  0000 C CNN
F 1 "169R" V 6316 3800 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 1730 900 50  0001 C CNN
F 3 "" H 1800 900 50  0001 C CNN
F 4 "?" H 6200 3800 60  0001 C CNN "PartNo"
F 5 "?" H 6200 3800 60  0001 C CNN "Manufacturer"
F 6 "?" H 6200 3800 60  0001 C CNN "Distributor"
	1    6200 3800
	0    1    -1   0   
$EndComp
Connection ~ 6350 3800
Wire Wire Line
	6650 4000 6650 4100
Wire Wire Line
	6650 4100 6350 4100
Connection ~ 6650 4100
Wire Wire Line
	6050 3800 5400 3800
Text HLabel 5400 3800 0    60   Input ~ 0
STEERING_ENABLE
$Comp
L R R65
U 1 1 58CA511C
P 7600 3250
F 0 "R65" V 7807 3250 50  0000 C CNN
F 1 "330" V 7716 3250 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 3130 350 50  0001 C CNN
F 3 "" H 3200 350 50  0001 C CNN
F 4 "?" H 7600 3250 60  0001 C CNN "PartNo"
F 5 "?" H 7600 3250 60  0001 C CNN "Manufacturer"
F 6 "?" H 7600 3250 60  0001 C CNN "Distributor"
	1    7600 3250
	0    1    -1   0   
$EndComp
$Comp
L R R66
U 1 1 58CA51EA
P 7600 3350
F 0 "R66" V 7807 3350 50  0000 C CNN
F 1 "330" V 7716 3350 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 3130 450 50  0001 C CNN
F 3 "" H 3200 450 50  0001 C CNN
F 4 "?" H 7600 3350 60  0001 C CNN "PartNo"
F 5 "?" H 7600 3350 60  0001 C CNN "Manufacturer"
F 6 "?" H 7600 3350 60  0001 C CNN "Distributor"
	1    7600 3350
	0    1    -1   0   
$EndComp
Wire Wire Line
	7450 3250 5400 3250
Wire Wire Line
	7450 3350 5400 3350
Text HLabel 5400 3350 0    60   Input ~ 0
STEERING_STEP
Text HLabel 5400 3250 0    60   Input ~ 0
STEERING_DIR
$Comp
L R R68
U 1 1 58CA539C
P 8900 2850
F 0 "R68" H 8969 2896 50  0000 L CNN
F 1 "1k" H 8969 2805 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 4430 -50 50  0001 C CNN
F 3 "" H 4500 -50 50  0001 C CNN
F 4 "?" H 8900 2850 60  0001 C CNN "PartNo"
F 5 "?" H 8900 2850 60  0001 C CNN "Manufacturer"
F 6 "?" H 8900 2850 60  0001 C CNN "Distributor"
	1    8900 2850
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8900 3000 8900 3550
Connection ~ 8900 3550
Wire Wire Line
	8900 2350 8900 2700
Connection ~ 8550 2350
Text HLabel 5400 3550 0    60   Input ~ 0
STEERING_FAULT
Wire Wire Line
	6100 3050 5900 3050
Wire Wire Line
	5900 3050 5900 3800
Connection ~ 5900 3800
Connection ~ 5800 3550
Wire Wire Line
	5700 3350 5700 2850
Wire Wire Line
	5700 2850 6100 2850
Connection ~ 5700 3350
Wire Wire Line
	5600 3250 5600 2750
Wire Wire Line
	5600 2750 6100 2750
Connection ~ 5600 3250
$Comp
L CONN_01X06 J7
U 1 1 58CF2456
P 6300 2800
F 0 "J7" H 6378 2841 50  0000 L CNN
F 1 "CONN_01X06" H 6378 2750 50  0000 L CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x06_Pitch2.54mm" H 6300 2800 50  0001 C CNN
F 3 "" H 6300 2800 50  0001 C CNN
F 4 "?" H 6300 2800 60  0001 C CNN "PartNo"
F 5 "?" H 6300 2800 60  0001 C CNN "Manufacturer"
F 6 "?" H 6300 2800 60  0001 C CNN "Distributor"
	1    6300 2800
	1    0    0    -1  
$EndComp
Text HLabel 5950 2000 0    60   Input ~ 0
+5V
$Comp
L GND #PWR19
U 1 1 58CF24DE
P 5450 2950
F 0 "#PWR19" H 5450 2700 50  0001 C CNN
F 1 "GND" H 5455 2777 50  0000 C CNN
F 2 "" H 5450 2950 50  0001 C CNN
F 3 "" H 5450 2950 50  0001 C CNN
	1    5450 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 2950 5450 2950
Wire Wire Line
	5800 3550 5800 2650
Wire Wire Line
	5800 2650 6100 2650
Wire Wire Line
	9000 3150 9000 3050
Wire Wire Line
	9000 3050 9400 3050
Wire Wire Line
	9150 3550 9150 3150
Wire Wire Line
	9150 3150 9400 3150
$Comp
L C C48
U 1 1 58CF2F69
P 5950 2150
F 0 "C48" H 6000 2250 50  0000 L CNN
F 1 "1u" H 6000 2050 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 5988 2000 30  0001 C CNN
F 3 "" H 5950 2150 60  0000 C CNN
	1    5950 2150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR20
U 1 1 58CF2F7A
P 5950 2300
F 0 "#PWR20" H 5950 2050 50  0001 C CNN
F 1 "GND" H 5955 2127 50  0000 C CNN
F 2 "" H 5950 2300 50  0001 C CNN
F 3 "" H 5950 2300 50  0001 C CNN
	1    5950 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 2000 6100 2000
Wire Wire Line
	6100 2000 6100 2550
$Comp
L +5V #PWR21
U 1 1 58CF31AE
P 6100 2000
F 0 "#PWR21" H 6100 1850 50  0001 C CNN
F 1 "+5V" H 6115 2173 50  0000 C CNN
F 2 "" H 6100 2000 50  0001 C CNN
F 3 "" H 6100 2000 50  0001 C CNN
	1    6100 2000
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR25
U 1 1 58CF31E8
P 8550 2350
F 0 "#PWR25" H 8550 2200 50  0001 C CNN
F 1 "+5V" H 8565 2523 50  0000 C CNN
F 2 "" H 8550 2350 50  0001 C CNN
F 3 "" H 8550 2350 50  0001 C CNN
	1    8550 2350
	1    0    0    -1  
$EndComp
$Comp
L D_TVS_ALT D59
U 1 1 58D0B63C
P 7950 4100
F 0 "D59" V 7800 4000 50  0000 L CNN
F 1 "D_TVS_ALT" V 7995 4179 50  0001 L CNN
F 2 "Diodes_SMD:SOD-323" H 7950 4100 50  0001 C CNN
F 3 "" H 7950 4100 50  0001 C CNN
F 4 "?" H 7950 4100 60  0001 C CNN "PartNo"
F 5 "?" H 7950 4100 60  0001 C CNN "Manufacturer"
F 6 "2059012" H 7950 4100 60  0001 C CNN "Distributor"
	1    7950 4100
	0    1    1    0   
$EndComp
Wire Wire Line
	7950 3950 7950 3250
Connection ~ 7950 3250
$Comp
L D_TVS_ALT D60
U 1 1 58D0B852
P 8100 4100
F 0 "D60" V 7950 4000 50  0000 L CNN
F 1 "D_TVS_ALT" V 8145 4179 50  0001 L CNN
F 2 "Diodes_SMD:SOD-323" H 8100 4100 50  0001 C CNN
F 3 "" H 8100 4100 50  0001 C CNN
F 4 "?" H 8100 4100 60  0001 C CNN "PartNo"
F 5 "?" H 8100 4100 60  0001 C CNN "Manufacturer"
F 6 "2059012" H 8100 4100 60  0001 C CNN "Distributor"
	1    8100 4100
	0    1    1    0   
$EndComp
Wire Wire Line
	8100 3950 8100 3350
Connection ~ 8100 3350
$Comp
L D_TVS_ALT D61
U 1 1 58D0B8BC
P 8250 4100
F 0 "D61" V 8100 4000 50  0000 L CNN
F 1 "D_TVS_ALT" V 8295 4179 50  0001 L CNN
F 2 "Diodes_SMD:SOD-323" H 8250 4100 50  0001 C CNN
F 3 "" H 8250 4100 50  0001 C CNN
F 4 "?" H 8250 4100 60  0001 C CNN "PartNo"
F 5 "?" H 8250 4100 60  0001 C CNN "Manufacturer"
F 6 "2059012" H 8250 4100 60  0001 C CNN "Distributor"
	1    8250 4100
	0    1    1    0   
$EndComp
Wire Wire Line
	8250 3950 8250 3550
Connection ~ 8250 3550
Wire Wire Line
	7950 4250 8250 4250
Connection ~ 8100 4250
$Comp
L GND #PWR24
U 1 1 58D0B9A6
P 8100 4250
F 0 "#PWR24" H 8100 4000 50  0001 C CNN
F 1 "GND" H 8105 4077 50  0000 C CNN
F 2 "" H 8100 4250 50  0001 C CNN
F 3 "" H 8100 4250 50  0001 C CNN
	1    8100 4250
	1    0    0    -1  
$EndComp
$EndSCHEMATC
