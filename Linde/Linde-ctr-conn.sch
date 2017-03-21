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
LIBS:conn_sbs_02x08
LIBS:switches
EELAYER 25 0
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
L CONN_SbS_02X08 P1
U 1 1 58C136A4
P 3300 2600
F 0 "P1" H 3300 3050 50  0000 C CNN
F 1 "CONN_SbS_02X08" V 3300 2600 50  0000 C CNN
F 2 "" H 3300 1400 50  0000 C CNN
F 3 "" H 3300 1400 50  0000 C CNN
	1    3300 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 2350 2750 2350
Wire Wire Line
	2750 2350 2750 2300
Wire Wire Line
	2750 2300 2050 2300
Wire Wire Line
	1900 2450 3050 2450
$Comp
L POT Throttle
U 1 1 58C12E46
P 1900 2300
F 0 "Throttle" V 1725 2300 50  0000 C CNN
F 1 "3k75" V 1800 2300 50  0000 C CNN
F 2 "" H 1900 2300 50  0000 C CNN
F 3 "" H 1900 2300 50  0000 C CNN
	1    1900 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 2250 2750 2150
Wire Wire Line
	2750 2150 1900 2150
Wire Wire Line
	2750 2250 3050 2250
Wire Wire Line
	3050 2550 1900 2550
Wire Wire Line
	1900 2550 1900 3850
Text Label 2600 2650 0    39   ~ 0
SPEED_BUTTON
Text Label 2700 2750 0    39   ~ 0
LIFT_UP
Text Label 2700 2850 0    39   ~ 0
LIFT_DOWN
Text Label 2750 2950 0    39   ~ 0
HORN
Text Label 2350 2550 0    39   ~ 0
COMMON
Wire Wire Line
	3550 2550 5000 2550
Wire Wire Line
	3550 2750 4450 2750
Text Label 3750 2750 0    39   ~ 0
SECURITY
$Comp
L SW_Push_Open_Dual SW1.1
U 1 1 58C13A8B
P 4650 2750
F 0 "SW1.1" H 4550 2850 50  0000 L CNN
F 1 "SW_Push_Open_Dual" H 5400 2650 50  0000 C CNN
F 2 "" H 4650 2950 50  0000 C CNN
F 3 "" H 4650 2950 50  0000 C CNN
	1    4650 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 2750 4250 3200
Wire Wire Line
	4250 2950 4450 2950
Connection ~ 4250 2750
$Comp
L SW_Push SW1.2
U 1 1 58C13B30
P 4000 3200
F 0 "SW1.2" H 3950 3400 50  0000 L CNN
F 1 "SW_Push" H 4000 3140 50  0000 C CNN
F 2 "" H 4000 3400 50  0000 C CNN
F 3 "" H 4000 3400 50  0000 C CNN
	1    4000 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 3200 4200 3200
Connection ~ 4250 2950
Wire Wire Line
	3800 3200 3800 2950
Wire Wire Line
	3800 2950 3550 2950
Wire Wire Line
	5000 2550 5000 2750
Wire Wire Line
	5000 2750 4850 2750
Wire Wire Line
	4850 2950 5000 2950
Wire Wire Line
	5000 2950 5000 3850
Wire Wire Line
	5000 3850 1900 3850
$Comp
L SW_Push SW1.?
U 1 1 58C13DCA
P 2250 2800
F 0 "SW1.?" H 2000 2750 50  0000 L CNN
F 1 "SW_Push" H 2400 2750 50  0000 C CNN
F 2 "" H 2250 3000 50  0000 C CNN
F 3 "" H 2250 3000 50  0000 C CNN
	1    2250 2800
	1    0    0    -1  
$EndComp
$Comp
L SW_Push SW1.?
U 1 1 58C13EA7
P 2250 3600
F 0 "SW1.?" H 2050 3550 50  0000 L CNN
F 1 "SW_Push" H 2500 3550 50  0000 C CNN
F 2 "" H 2250 3800 50  0000 C CNN
F 3 "" H 2250 3800 50  0000 C CNN
	1    2250 3600
	1    0    0    -1  
$EndComp
$Comp
L SW_Push SW1.?
U 1 1 58C13EE3
P 2250 3350
F 0 "SW1.?" H 2000 3300 50  0000 L CNN
F 1 "SW_Push" H 2500 3300 50  0000 C CNN
F 2 "" H 2250 3550 50  0000 C CNN
F 3 "" H 2250 3550 50  0000 C CNN
	1    2250 3350
	1    0    0    -1  
$EndComp
$Comp
L SW_Push SW1.?
U 1 1 58C13F26
P 2250 3100
F 0 "SW1.?" H 2000 3050 50  0000 L CNN
F 1 "SW_Push" H 2400 3050 50  0000 C CNN
F 2 "" H 2250 3300 50  0000 C CNN
F 3 "" H 2250 3300 50  0000 C CNN
	1    2250 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 3600 2750 3600
Wire Wire Line
	3050 2950 2750 2950
Wire Wire Line
	2750 2950 2750 3600
Wire Wire Line
	2450 3350 2700 3350
Wire Wire Line
	2450 3100 2650 3100
Wire Wire Line
	2050 3350 1900 3350
Connection ~ 1900 3350
Wire Wire Line
	2050 3600 1900 3600
Connection ~ 1900 3600
Wire Wire Line
	2050 3100 1900 3100
Connection ~ 1900 3100
Wire Wire Line
	3050 2850 2700 2850
Wire Wire Line
	2700 2850 2700 3350
Wire Wire Line
	3050 2750 2650 2750
Wire Wire Line
	2650 2750 2650 3100
Wire Wire Line
	2450 2650 2450 2800
Wire Wire Line
	3050 2650 2450 2650
Wire Wire Line
	2050 2800 1900 2800
Connection ~ 1900 2800
$Comp
L CONN_SbS_02X03 P3
U 1 1 58C28F6B
P 2750 4900
F 0 "P3" H 2750 5100 50  0000 C CNN
F 1 "CONN_SbS_02X03" H 2749 4672 50  0000 C CNN
F 2 "" H 2750 3700 50  0000 C CNN
F 3 "" H 2750 3700 50  0000 C CNN
	1    2750 4900
	1    0    0    -1  
$EndComp
$Comp
L POT Steering
U 1 1 58C2924E
P 1850 4900
F 0 "Steering" V 1675 4900 50  0000 C CNN
F 1 "1k" V 1750 4900 50  0000 C CNN
F 2 "" H 1850 4900 50  0000 C CNN
F 3 "" H 1850 4900 50  0000 C CNN
	1    1850 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 4800 2350 4800
Wire Wire Line
	2350 4800 2350 4650
Wire Wire Line
	2350 4650 1850 4650
Wire Wire Line
	1850 4650 1850 4750
Wire Wire Line
	2500 4900 2200 4900
Wire Wire Line
	2200 4900 2200 5200
Wire Wire Line
	2200 5200 1850 5200
Wire Wire Line
	1850 5200 1850 5050
Wire Wire Line
	3000 4800 3150 4800
Wire Wire Line
	3150 4800 3150 4500
Wire Wire Line
	3150 4500 2050 4500
Wire Wire Line
	2050 4500 2050 4900
Wire Wire Line
	2050 4900 2000 4900
$EndSCHEMATC