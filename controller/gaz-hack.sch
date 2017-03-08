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
Sheet 3 6
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
L R R4
U 1 1 58BEE596
P 9950 2400
F 0 "R4" H 10020 2446 50  0000 L CNN
F 1 "3.6k" H 10020 2355 50  0000 L CNN
F 2 "" V 5480 -500 50  0001 C CNN
F 3 "" H 5550 -500 50  0001 C CNN
	1    9950 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	9950 1600 9950 2250
Wire Wire Line
	9950 3300 9950 2550
$Comp
L OPTO-TRANSISTOR-4 U1
U 1 1 58BEE64D
P 5900 2100
F 0 "U1" H 5900 2333 50  0000 C CNN
F 1 "OPTO-TRANSISTOR-4" H 5900 2334 50  0001 C CNN
F 2 "" H 1250 -1050 50  0001 L CIN
F 3 "" H 1450 -850 50  0001 L CNN
	1    5900 2100
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 58BEE735
P 8250 2550
F 0 "R3" H 8320 2596 50  0000 L CNN
F 1 "1k" H 8320 2505 50  0000 L CNN
F 2 "" V 3780 -350 50  0001 C CNN
F 3 "" H 3850 -350 50  0001 C CNN
	1    8250 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 3300 9950 3300
Connection ~ 9950 3300
Wire Wire Line
	6850 2400 8750 2400
Text Label 8750 2400 2    60   ~ 0
CONTROL
$Comp
L Q_NMOS_GSD Q1
U 1 1 58BEE8F0
P 7800 2200
F 0 "Q1" H 8006 2200 50  0000 L CNN
F 1 "Q_NMOS_GSD" H 8005 2155 50  0001 L CNN
F 2 "" H 4000 -400 50  0001 C CNN
F 3 "" H 3800 -500 50  0001 C CNN
	1    7800 2200
	1    0    0    -1  
$EndComp
$Comp
L POT RV1
U 1 1 58BEEA50
P 7900 1850
F 0 "RV1" H 7830 1896 50  0000 R CNN
F 1 "40k" H 7830 1805 50  0000 R CNN
F 2 "" H 3750 -450 50  0001 C CNN
F 3 "" H 3750 -450 50  0001 C CNN
	1    7900 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 2000 8050 2000
Wire Wire Line
	8050 2000 8050 1850
Wire Wire Line
	4600 1600 9950 1600
Wire Wire Line
	7900 1600 7900 1700
$Comp
L R R2
U 1 1 58BEEB23
P 7600 2900
F 0 "R2" H 7670 2946 50  0000 L CNN
F 1 "100k" H 7670 2855 50  0000 L CNN
F 2 "" V 3130 0   50  0001 C CNN
F 3 "" H 3200 0   50  0001 C CNN
	1    7600 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 3050 7600 3300
Wire Wire Line
	7600 2200 7600 2750
$Comp
L R R1
U 1 1 58BEEBA1
P 6200 1850
F 0 "R1" H 6270 1896 50  0000 L CNN
F 1 "100k" H 6270 1805 50  0000 L CNN
F 2 "" V 1730 -1050 50  0001 C CNN
F 3 "" H 1800 -1050 50  0001 C CNN
	1    6200 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 1700 6200 1600
Connection ~ 7900 1600
Connection ~ 7600 2200
$Comp
L R R5
U 1 1 58BEEDC4
P 8250 1900
F 0 "R5" H 8320 1946 50  0000 L CNN
F 1 "40k" H 8320 1855 50  0000 L CNN
F 2 "" V 3780 -1000 50  0001 C CNN
F 3 "" H 3850 -1000 50  0001 C CNN
	1    8250 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 1750 8250 1600
Connection ~ 8250 1600
Wire Wire Line
	8250 2050 8250 2400
Connection ~ 8250 2400
Text HLabel 9950 1600 2    60   Input ~ 0
PEDAL_POT_VCC
Text HLabel 9950 3300 2    60   Input ~ 0
PEDAL_POT_GND
Text HLabel 8750 2400 2    60   Input ~ 0
PEDAL_POT_WIPER
Wire Wire Line
	8250 2700 8250 3300
Connection ~ 8250 3300
$Comp
L Q_NMOS_GSD Q?
U 1 1 58C00A06
P 6750 2200
F 0 "Q?" H 6956 2200 50  0000 L CNN
F 1 "Q_NMOS_GSD" H 6955 2155 50  0001 L CNN
F 2 "" H 2950 -400 50  0001 C CNN
F 3 "" H 2750 -500 50  0001 C CNN
	1    6750 2200
	1    0    0    -1  
$EndComp
$Comp
L POT RV?
U 1 1 58C00A0C
P 6850 1850
F 0 "RV?" H 6780 1896 50  0000 R CNN
F 1 "40k" H 6780 1805 50  0000 R CNN
F 2 "" H 2700 -450 50  0001 C CNN
F 3 "" H 2700 -450 50  0001 C CNN
	1    6850 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 2000 7000 2000
Wire Wire Line
	7000 2000 7000 1850
Wire Wire Line
	6850 1600 6850 1700
$Comp
L R R?
U 1 1 58C00A17
P 6550 2900
F 0 "R?" H 6620 2946 50  0000 L CNN
F 1 "100k" H 6620 2855 50  0000 L CNN
F 2 "" V 2080 0   50  0001 C CNN
F 3 "" H 2150 0   50  0001 C CNN
	1    6550 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 3050 6550 3300
Wire Wire Line
	6550 2200 6550 2750
Connection ~ 6550 2200
Connection ~ 6850 1600
Connection ~ 7600 3300
$Comp
L OPTO-TRANSISTOR-4 U?
U 1 1 58C01026
P 4300 2100
F 0 "U?" H 4300 2333 50  0000 C CNN
F 1 "OPTO-TRANSISTOR-4" H 4300 2334 50  0001 C CNN
F 2 "" H -350 -1050 50  0001 L CIN
F 3 "" H -150 -850 50  0001 L CNN
	1    4300 2100
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 58C01078
P 4600 1850
F 0 "R?" H 4670 1896 50  0000 L CNN
F 1 "100k" H 4670 1805 50  0000 L CNN
F 2 "" V 130 -1050 50  0001 C CNN
F 3 "" H 200 -1050 50  0001 C CNN
	1    4600 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 1700 4600 1600
Connection ~ 6200 1600
Wire Wire Line
	6200 2200 6550 2200
Wire Wire Line
	4600 2200 4600 2550
Wire Wire Line
	4600 2550 7450 2550
Wire Wire Line
	7450 2550 7450 2200
Wire Wire Line
	7450 2200 7600 2200
Connection ~ 7900 2400
Wire Wire Line
	5600 2200 5600 3100
Wire Wire Line
	4000 2200 4000 3100
Text HLabel 5600 3100 0    60   Input ~ 0
~GAZ_SPEED1_PWR
Text HLabel 3750 1250 0    60   Input ~ 0
VCC
Text HLabel 9350 5000 0    60   Input ~ 0
PEDAL_SWITCH_COMMON
Text HLabel 9950 4900 2    60   Input ~ 0
PEDAL_SWITCH_NC
Text HLabel 9950 5100 2    60   Input ~ 0
PEDAL_SWITCH_NO
$Comp
L RELAY_SEPARATED K?
U 1 1 58C01F4B
P 2700 1800
F 0 "K?" H 2855 1846 50  0000 L CNN
F 1 "RELAY_SEPARATED" H 2855 1755 50  0000 L CNN
F 2 "" H -4950 -2500 50  0000 C CNN
F 3 "" H -4950 -2500 50  0000 C CNN
	1    2700 1800
	1    0    0    -1  
$EndComp
$Comp
L RELAY_SEPARATED K?
U 2 1 58C01FFF
P 9650 5000
F 0 "K?" V 9325 5000 50  0000 C CNN
F 1 "RELAY_SEPARATED" V 9416 5000 50  0000 C CNN
F 2 "" H 4550 400 50  0000 C CNN
F 3 "" H 4550 400 50  0000 C CNN
F 4 "?" H 9650 5000 60  0001 C CNN "PartNo"
F 5 "?" H 9650 5000 60  0001 C CNN "Manufacturer"
F 6 "?" H 9650 5000 60  0001 C CNN "Distributor"
	2    9650 5000
	0    1    1    0   
$EndComp
Text HLabel 4000 3100 0    60   Input ~ 0
~GAZ_SPEED2_PWR
Wire Wire Line
	3750 2000 4000 2000
Wire Wire Line
	1900 1400 5600 1400
Connection ~ 3750 1400
$Comp
L R R?
U 1 1 58C023B7
P 3750 1850
F 0 "R?" H 3820 1896 50  0000 L CNN
F 1 "330" H 3820 1805 50  0000 L CNN
F 2 "" V -720 -1050 50  0001 C CNN
F 3 "" H -650 -1050 50  0001 C CNN
	1    3750 1850
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 58C024A6
P 5600 1850
F 0 "R?" H 5670 1896 50  0000 L CNN
F 1 "330" H 5670 1805 50  0000 L CNN
F 2 "" V 1130 -1050 50  0001 C CNN
F 3 "" H 1200 -1050 50  0001 C CNN
	1    5600 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 1400 2700 1500
Text HLabel 2700 2400 0    60   Input ~ 0
~GAZ_ENABLE_PWR
Wire Wire Line
	2700 2100 2700 2400
Wire Wire Line
	5600 1400 5600 1700
Wire Wire Line
	3750 1250 3750 1700
$Comp
L D_ALT D?
U 1 1 58C0A9F4
P 2200 1750
F 0 "D?" V 2154 1671 50  0000 R CNN
F 1 "D_ALT" V 2245 1671 50  0000 R CNN
F 2 "" H -2700 -550 50  0001 C CNN
F 3 "" H -2700 -550 50  0001 C CNN
	1    2200 1750
	0    -1   1    0   
$EndComp
Wire Wire Line
	2200 1400 2200 1600
Wire Wire Line
	2200 1900 2200 2100
Wire Wire Line
	1900 2100 2700 2100
Connection ~ 2700 2100
$Comp
L C C?
U 1 1 58C0ABFE
P 1900 1750
F 0 "C?" H 2015 1796 50  0000 L CNN
F 1 "C" H 2015 1705 50  0000 L CNN
F 2 "" H -62 -200 50  0001 C CNN
F 3 "" H -100 -50 50  0001 C CNN
	1    1900 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 1600 1900 1400
Connection ~ 2700 1400
Wire Wire Line
	1900 1900 1900 2100
Connection ~ 2200 2100
Connection ~ 2200 1400
$EndSCHEMATC
