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
P 9200 3350
F 0 "J6" H 9278 3391 50  0000 L CNN
F 1 "CONN_01X05" H 9278 3300 50  0000 L CNN
F 2 "" H 9200 3350 50  0001 C CNN
F 3 "" H 9200 3350 50  0001 C CNN
	1    9200 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 3150 9000 3150
Wire Wire Line
	9000 3250 7750 3250
Wire Wire Line
	9000 3350 7750 3350
Wire Wire Line
	7050 3450 9000 3450
Wire Wire Line
	5400 3550 9000 3550
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
L GND #PWR016
U 1 1 58CA4F91
P 6650 4100
F 0 "#PWR016" H 6650 3850 50  0001 C CNN
F 1 "GND" H 6655 3927 50  0000 C CNN
F 2 "" H 6650 4100 50  0001 C CNN
F 3 "" H 6650 4100 50  0001 C CNN
	1    6650 4100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR017
U 1 1 58CA4FA9
P 7050 4000
F 0 "#PWR017" H 7050 3750 50  0001 C CNN
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
$EndSCHEMATC
