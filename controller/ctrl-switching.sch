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
$Descr A3 16535 11693
encoding utf-8
Sheet 10 10
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 9300 4400 2    60   Input ~ 0
~DIR_FWD_ENABLE_PWR
Text HLabel 9300 4500 2    60   Input ~ 0
~DIR_BACK_ENABLE_PWR
Text HLabel 9400 8350 2    60   Input ~ 0
~HORN_ENABLE_PWR
Text HLabel 9400 8450 2    60   Input ~ 0
~PARKING_DISABLE_PWR
Text HLabel 9300 4300 2    60   Input ~ 0
~KEY_ENABLE_PWR
Text HLabel 9400 8550 2    60   Input ~ 0
~SEAT_ENABLE_PWR
Text HLabel 9400 8650 2    60   Input ~ 0
~LIGHTS_ENABLE_PWR
Text HLabel 9400 8750 2    60   Input ~ 0
~MIRGALKE_ENABLE_PWR
Text HLabel 9400 8850 2    60   Input ~ 0
~AUX_ENABLE_PWR
Text HLabel 9300 3800 2    60   Input ~ 0
~GAZ_ENABLE_PWR
Text HLabel 9300 4000 2    60   Input ~ 0
~GAZ_SPEED2_PWR
Text HLabel 9300 3900 2    60   Input ~ 0
~GAZ_SPEED1_PWR
Text HLabel 6400 4400 0    60   Input ~ 0
DIR_FWD_ENABLE
Text HLabel 6400 4500 0    60   Input ~ 0
DIR_BACK_ENABLE
Text HLabel 6400 4300 0    60   Input ~ 0
KEY_ENABLE
Text HLabel 9400 9150 2    60   Input ~ 0
VCC
Text HLabel 9300 4600 2    60   Input ~ 0
VCC
Text HLabel 6400 3800 0    60   Input ~ 0
GAZ_ENABLE
Text HLabel 6400 4000 0    60   Input ~ 0
GAZ_SPEED2
Text HLabel 6400 3900 0    60   Input ~ 0
GAZ_SPEED1
$Comp
L GND #PWR18
U 1 1 58CDDCEF
P 7850 4800
F 0 "#PWR18" H 4700 1700 50  0001 C CNN
F 1 "GND" H 7855 4627 50  0000 C CNN
F 2 "" H 4700 1950 50  0001 C CNN
F 3 "" H 4700 1950 50  0001 C CNN
	1    7850 4800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR19
U 1 1 58CDDD09
P 7950 9350
F 0 "#PWR19" H 4800 6250 50  0001 C CNN
F 1 "GND" H 7955 9177 50  0000 C CNN
F 2 "" H 4800 6500 50  0001 C CNN
F 3 "" H 4800 6500 50  0001 C CNN
	1    7950 9350
	1    0    0    -1  
$EndComp
$Comp
L R_Network08 RN2
U 1 1 58CDDEC7
P 7000 9650
F 0 "RN2" H 6520 9650 50  0000 R CNN
F 1 "R_Network08" H 6520 9695 50  0001 R CNN
F 2 "Resistors_THT:R_Array_SIP9" V 5375 4250 50  0001 C CNN
F 3 "" H 4900 4250 50  0001 C CNN
	1    7000 9650
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR17
U 1 1 58CDDF2F
P 7400 9850
F 0 "#PWR17" H 4250 6750 50  0001 C CNN
F 1 "GND" H 7405 9677 50  0000 C CNN
F 2 "" H 4250 7000 50  0001 C CNN
F 3 "" H 4250 7000 50  0001 C CNN
	1    7400 9850
	1    0    0    -1  
$EndComp
$Comp
L R_Network08 RN1
U 1 1 58CDE247
P 6850 5100
F 0 "RN1" H 6370 5100 50  0000 R CNN
F 1 "R_Network08" H 6370 5145 50  0001 R CNN
F 2 "Resistors_THT:R_Array_SIP9" V 5225 -300 50  0001 C CNN
F 3 "" H 4750 -300 50  0001 C CNN
	1    6850 5100
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR16
U 1 1 58CDE24D
P 7250 5300
F 0 "#PWR16" H 4100 2200 50  0001 C CNN
F 1 "GND" H 7255 5127 50  0000 C CNN
F 2 "" H 4100 2450 50  0001 C CNN
F 3 "" H 4100 2450 50  0001 C CNN
	1    7250 5300
	1    0    0    -1  
$EndComp
$Comp
L ULN2803A U10
U 1 1 58CDE823
P 7850 4100
F 0 "U10" H 7850 4667 50  0000 C CNN
F 1 "ULN2803A" H 7850 4576 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-18W_7.5x11.6mm_Pitch1.27mm" H 2000 1100 50  0001 L CNN
F 3 "" H 2050 1650 50  0001 C CNN
F 4 "?" H 7850 4100 60  0001 C CNN "PartNo"
F 5 "?" H 7850 4100 60  0001 C CNN "Manufacturer"
F 6 "1652420" H 7850 4100 60  0001 C CNN "Distributor"
	1    7850 4100
	1    0    0    -1  
$EndComp
$Comp
L ULN2803A U11
U 1 1 58CDE8BD
P 7950 8650
F 0 "U11" H 7950 9217 50  0000 C CNN
F 1 "ULN2803A" H 7950 9126 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-18W_7.5x11.6mm_Pitch1.27mm" H 2100 5650 50  0001 L CNN
F 3 "" H 2150 6200 50  0001 C CNN
F 4 "?" H 7950 8650 60  0001 C CNN "PartNo"
F 5 "?" H 7950 8650 60  0001 C CNN "Manufacturer"
F 6 "1652420" H 7950 8650 60  0001 C CNN "Distributor"
	1    7950 8650
	1    0    0    -1  
$EndComp
$Comp
L 74HC595 U9
U 1 1 58CF6330
P 5800 8800
F 0 "U9" H 5800 9566 50  0000 C CNN
F 1 "74HC595" H 5800 9475 50  0000 C CNN
F 2 "" H 1250 4650 50  0001 C CNN
F 3 "" H 1250 4650 50  0001 C CNN
	1    5800 8800
	1    0    0    -1  
$EndComp
Text Label 6750 8350 0    60   ~ 0
HORN_ENABLE
Text Label 6750 8450 0    60   ~ 0
PARKING_DISABLE
Text Label 6750 8550 0    60   ~ 0
SEAT_ENABLE
Text Label 6750 8650 0    60   ~ 0
LIGHTS_ENABLE
Text Label 6750 8750 0    60   ~ 0
MIRGALKE_ENABLE
Text Label 6750 8850 0    60   ~ 0
AUX_ENABLE
Text Label 4100 8550 0    60   ~ 0
CLK
Text Label 4100 8350 0    60   ~ 0
DATA
$Comp
L +5V #PWR14
U 1 1 58CF6852
P 4950 8050
F 0 "#PWR14" H 1550 3750 50  0001 C CNN
F 1 "+5V" H 4965 8223 50  0000 C CNN
F 2 "" H 1550 3900 50  0001 C CNN
F 3 "" H 1550 3900 50  0001 C CNN
	1    4950 8050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR15
U 1 1 58CF68A7
P 5100 8950
F 0 "#PWR15" H 1950 5850 50  0001 C CNN
F 1 "GND" H 5105 8777 50  0000 C CNN
F 2 "" H 1950 6100 50  0001 C CNN
F 3 "" H 1950 6100 50  0001 C CNN
	1    5100 8950
	1    0    0    -1  
$EndComp
Text Label 4100 8850 0    60   ~ 0
LATCH
$Comp
L R R23
U 1 1 58CF6932
P 4550 8350
F 0 "R23" V 4343 8350 50  0000 C CNN
F 1 "R" V 4434 8350 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 1730 4150 50  0001 C CNN
F 3 "" H 1800 4150 50  0001 C CNN
	1    4550 8350
	0    1    1    0   
$EndComp
$Comp
L R R24
U 1 1 58CF697B
P 4550 8550
F 0 "R24" V 4343 8550 50  0000 C CNN
F 1 "R" V 4434 8550 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 1730 4350 50  0001 C CNN
F 3 "" H 1800 4350 50  0001 C CNN
	1    4550 8550
	0    1    1    0   
$EndComp
$Comp
L R R25
U 1 1 58CF69A1
P 4550 8850
F 0 "R25" V 4343 8850 50  0000 C CNN
F 1 "R" V 4434 8850 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 1730 4650 50  0001 C CNN
F 3 "" H 1800 4650 50  0001 C CNN
	1    4550 8850
	0    1    1    0   
$EndComp
Text HLabel 4050 8350 0    60   Input ~ 0
SPI_DATA
Text HLabel 4050 8550 0    60   Input ~ 0
SPI_CLK
Text HLabel 4050 8850 0    60   Input ~ 0
SPI_LATCH
$Comp
L CONN_01X09 J25
U 1 1 58D28309
P 8750 1700
F 0 "J25" V 8965 1695 50  0000 C CNN
F 1 "INDICATION1" V 8874 1695 50  0000 C CNN
F 2 "" H 2000 400 50  0001 C CNN
F 3 "" H 2000 400 50  0001 C CNN
	1    8750 1700
	0    -1   -1   0   
$EndComp
Text HLabel 4950 8050 0    60   Input ~ 0
+5V
$Comp
L LED_Small_ALT D39
U 1 1 58D3EAC4
P 9400 2800
F 0 "D39" H 9400 2900 50  0000 C CNN
F 1 "LED_Small_ALT" H 9400 2944 50  0001 C CNN
F 2 "LEDs:LED_0805" V 1250 1700 50  0001 C CNN
F 3 "" V 1250 1700 50  0001 C CNN
	1    9400 2800
	1    0    0    -1  
$EndComp
$Comp
L R R30
U 1 1 58D3ECFD
P 9650 2800
F 0 "R30" V 9550 2800 50  0000 C CNN
F 1 "R" V 9650 2800 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 6830 -1400 50  0001 C CNN
F 3 "" H 6900 -1400 50  0001 C CNN
	1    9650 2800
	0    1    1    0   
$EndComp
$Comp
L LED_Small_ALT D40
U 1 1 58D3EFFD
P 9400 3000
F 0 "D40" H 9400 3100 50  0000 C CNN
F 1 "LED_Small_ALT" H 9400 3144 50  0001 C CNN
F 2 "LEDs:LED_0805" V 1250 1900 50  0001 C CNN
F 3 "" V 1250 1900 50  0001 C CNN
	1    9400 3000
	1    0    0    -1  
$EndComp
$Comp
L R R31
U 1 1 58D3F003
P 9650 3000
F 0 "R31" V 9550 3000 50  0000 C CNN
F 1 "R" V 9650 3000 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 6830 -1200 50  0001 C CNN
F 3 "" H 6900 -1200 50  0001 C CNN
	1    9650 3000
	0    1    1    0   
$EndComp
$Comp
L LED_Small_ALT D41
U 1 1 58D3F0FF
P 9400 3200
F 0 "D41" H 9400 3300 50  0000 C CNN
F 1 "LED_Small_ALT" H 9400 3344 50  0001 C CNN
F 2 "LEDs:LED_0805" V 1250 2100 50  0001 C CNN
F 3 "" V 1250 2100 50  0001 C CNN
	1    9400 3200
	1    0    0    -1  
$EndComp
$Comp
L R R32
U 1 1 58D3F105
P 9650 3200
F 0 "R32" V 9550 3200 50  0000 C CNN
F 1 "R" V 9650 3200 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 6830 -1000 50  0001 C CNN
F 3 "" H 6900 -1000 50  0001 C CNN
	1    9650 3200
	0    1    1    0   
$EndComp
$Comp
L LED_Small_ALT D42
U 1 1 58D3F10B
P 9400 3400
F 0 "D42" H 9400 3500 50  0000 C CNN
F 1 "LED_Small_ALT" H 9400 3544 50  0001 C CNN
F 2 "LEDs:LED_0805" V 1250 2300 50  0001 C CNN
F 3 "" V 1250 2300 50  0001 C CNN
	1    9400 3400
	1    0    0    -1  
$EndComp
$Comp
L R R33
U 1 1 58D3F111
P 9650 3400
F 0 "R33" V 9550 3400 50  0000 C CNN
F 1 "R" V 9650 3400 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 6830 -800 50  0001 C CNN
F 3 "" H 6900 -800 50  0001 C CNN
	1    9650 3400
	0    1    1    0   
$EndComp
$Comp
L LED_Small_ALT D35
U 1 1 58D3F3C1
P 9400 2000
F 0 "D35" H 9400 2100 50  0000 C CNN
F 1 "LED_Small_ALT" H 9400 2144 50  0001 C CNN
F 2 "LEDs:LED_0805" V 1250 900 50  0001 C CNN
F 3 "" V 1250 900 50  0001 C CNN
	1    9400 2000
	1    0    0    -1  
$EndComp
$Comp
L R R26
U 1 1 58D3F3C7
P 9650 2000
F 0 "R26" V 9550 2000 50  0000 C CNN
F 1 "R" V 9650 2000 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 6830 -2200 50  0001 C CNN
F 3 "" H 6900 -2200 50  0001 C CNN
	1    9650 2000
	0    1    1    0   
$EndComp
$Comp
L LED_Small_ALT D36
U 1 1 58D3F3CD
P 9400 2200
F 0 "D36" H 9400 2300 50  0000 C CNN
F 1 "LED_Small_ALT" H 9400 2344 50  0001 C CNN
F 2 "LEDs:LED_0805" V 1250 1100 50  0001 C CNN
F 3 "" V 1250 1100 50  0001 C CNN
	1    9400 2200
	1    0    0    -1  
$EndComp
$Comp
L R R27
U 1 1 58D3F3D3
P 9650 2200
F 0 "R27" V 9550 2200 50  0000 C CNN
F 1 "R" V 9650 2200 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 6830 -2000 50  0001 C CNN
F 3 "" H 6900 -2000 50  0001 C CNN
	1    9650 2200
	0    1    1    0   
$EndComp
$Comp
L LED_Small_ALT D37
U 1 1 58D3F3D9
P 9400 2400
F 0 "D37" H 9400 2500 50  0000 C CNN
F 1 "LED_Small_ALT" H 9400 2544 50  0001 C CNN
F 2 "LEDs:LED_0805" V 1250 1300 50  0001 C CNN
F 3 "" V 1250 1300 50  0001 C CNN
	1    9400 2400
	1    0    0    -1  
$EndComp
$Comp
L R R28
U 1 1 58D3F3DF
P 9650 2400
F 0 "R28" V 9550 2400 50  0000 C CNN
F 1 "R" V 9650 2400 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 6830 -1800 50  0001 C CNN
F 3 "" H 6900 -1800 50  0001 C CNN
	1    9650 2400
	0    1    1    0   
$EndComp
$Comp
L LED_Small_ALT D38
U 1 1 58D3F3E5
P 9400 2600
F 0 "D38" H 9400 2700 50  0000 C CNN
F 1 "LED_Small_ALT" H 9400 2744 50  0001 C CNN
F 2 "LEDs:LED_0805" V 1250 1500 50  0001 C CNN
F 3 "" V 1250 1500 50  0001 C CNN
	1    9400 2600
	1    0    0    -1  
$EndComp
$Comp
L R R29
U 1 1 58D3F3EB
P 9650 2600
F 0 "R29" V 9550 2600 50  0000 C CNN
F 1 "R" V 9650 2600 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 6830 -1600 50  0001 C CNN
F 3 "" H 6900 -1600 50  0001 C CNN
	1    9650 2600
	0    1    1    0   
$EndComp
Wire Wire Line
	6500 8350 7550 8350
Wire Wire Line
	6500 8450 7550 8450
Wire Wire Line
	6500 8550 7550 8550
Wire Wire Line
	6500 8650 7550 8650
Wire Wire Line
	6500 8750 7550 8750
Wire Wire Line
	6500 8850 7550 8850
Wire Wire Line
	6500 8950 7550 8950
Wire Wire Line
	6500 9050 7550 9050
Wire Wire Line
	7400 9450 7400 9050
Connection ~ 7400 9050
Wire Wire Line
	7300 9450 7300 8950
Connection ~ 7300 8950
Wire Wire Line
	7200 9450 7200 8850
Connection ~ 7200 8850
Wire Wire Line
	7100 9450 7100 8750
Connection ~ 7100 8750
Wire Wire Line
	7000 9450 7000 8650
Connection ~ 7000 8650
Wire Wire Line
	6900 9450 6900 8550
Connection ~ 6900 8550
Wire Wire Line
	6800 9450 6800 8450
Connection ~ 6800 8450
Wire Wire Line
	6700 9450 6700 8350
Connection ~ 6700 8350
Wire Wire Line
	7250 4900 7250 4500
Wire Wire Line
	7150 4900 7150 4400
Wire Wire Line
	7050 4900 7050 4300
Wire Wire Line
	6950 4900 6950 4200
Wire Wire Line
	6850 4900 6850 4100
Wire Wire Line
	6750 4900 6750 4000
Wire Wire Line
	6650 4900 6650 3900
Wire Wire Line
	6550 4900 6550 3800
Wire Wire Line
	6400 4500 7450 4500
Wire Wire Line
	6400 4400 7450 4400
Wire Wire Line
	6400 4300 7450 4300
Wire Wire Line
	6400 4200 7450 4200
Wire Wire Line
	6400 4100 7450 4100
Wire Wire Line
	6400 4000 7450 4000
Wire Wire Line
	6400 3900 7450 3900
Wire Wire Line
	6400 3800 7450 3800
Connection ~ 6550 3800
Connection ~ 6650 3900
Connection ~ 6750 4000
Connection ~ 6850 4100
Connection ~ 6950 4200
Connection ~ 7050 4300
Connection ~ 7150 4400
Connection ~ 7250 4500
Wire Wire Line
	5100 8350 4700 8350
Wire Wire Line
	5100 8550 4700 8550
Wire Wire Line
	5100 8650 4950 8650
Wire Wire Line
	4950 8650 4950 8050
Wire Wire Line
	5100 8850 4700 8850
Wire Wire Line
	4400 8350 4050 8350
Wire Wire Line
	4400 8550 4050 8550
Wire Wire Line
	4400 8850 4050 8850
Wire Wire Line
	8250 3800 9300 3800
Wire Wire Line
	8350 3800 8350 1900
Wire Wire Line
	8450 1900 8450 3900
Wire Wire Line
	8250 3900 9300 3900
Wire Wire Line
	8550 1900 8550 4000
Wire Wire Line
	8250 4000 9300 4000
Wire Wire Line
	8650 1900 8650 4100
Wire Wire Line
	8250 4100 9300 4100
Wire Wire Line
	8750 1900 8750 4200
Wire Wire Line
	8250 4200 9300 4200
Wire Wire Line
	8850 1900 8850 4300
Wire Wire Line
	8250 4300 9300 4300
Wire Wire Line
	8950 1900 8950 4400
Wire Wire Line
	8250 4400 9300 4400
Wire Wire Line
	9050 1900 9050 4500
Wire Wire Line
	8250 4500 9300 4500
Wire Wire Line
	9150 1900 9150 4600
Wire Wire Line
	8250 4600 9300 4600
Connection ~ 8350 3800
Connection ~ 8450 3900
Connection ~ 8550 4000
Connection ~ 8650 4100
Connection ~ 8750 4200
Connection ~ 8850 4300
Connection ~ 8950 4400
Connection ~ 9050 4500
Connection ~ 9150 4600
Wire Wire Line
	8350 8350 9400 8350
Wire Wire Line
	8350 8450 9400 8450
Wire Wire Line
	8350 8550 9400 8550
Wire Wire Line
	8350 8650 9400 8650
Wire Wire Line
	8350 8750 9400 8750
Wire Wire Line
	8350 8850 9400 8850
Wire Wire Line
	8350 8950 9400 8950
Wire Wire Line
	8350 9050 9400 9050
Wire Wire Line
	8350 9150 9400 9150
Connection ~ 8450 8350
Connection ~ 8550 8450
Connection ~ 8650 8550
Connection ~ 8750 8650
Connection ~ 8850 8750
Connection ~ 8950 8850
Connection ~ 9050 8950
Connection ~ 9150 9050
Connection ~ 9250 9150
Wire Wire Line
	9300 2000 8350 2000
Connection ~ 8350 2000
Wire Wire Line
	9300 2200 8450 2200
Connection ~ 8450 2200
Wire Wire Line
	9300 2400 8550 2400
Connection ~ 8550 2400
Wire Wire Line
	9300 2600 8650 2600
Connection ~ 8650 2600
Wire Wire Line
	9300 2800 8750 2800
Connection ~ 8750 2800
Wire Wire Line
	9300 3000 8850 3000
Connection ~ 8850 3000
Wire Wire Line
	9300 3200 8950 3200
Connection ~ 8950 3200
Wire Wire Line
	9300 3400 9050 3400
Connection ~ 9050 3400
Wire Wire Line
	9800 2000 9800 3550
Connection ~ 9800 2800
Connection ~ 9800 3200
Connection ~ 9800 3000
Connection ~ 9800 2600
Connection ~ 9800 2400
Connection ~ 9800 2200
Wire Wire Line
	9800 3550 9150 3550
Connection ~ 9150 3550
Connection ~ 9800 3400
$Comp
L CONN_01X09 J26
U 1 1 58D406B6
P 8850 6250
F 0 "J26" V 9065 6245 50  0000 C CNN
F 1 "INDICATION2" V 8974 6245 50  0000 C CNN
F 2 "" H 2100 4950 50  0001 C CNN
F 3 "" H 2100 4950 50  0001 C CNN
	1    8850 6250
	0    -1   -1   0   
$EndComp
$Comp
L LED_Small_ALT D47
U 1 1 58D406BC
P 9500 7350
F 0 "D47" H 9500 7450 50  0000 C CNN
F 1 "LED_Small_ALT" H 9500 7494 50  0001 C CNN
F 2 "LEDs:LED_0805" V 1350 6250 50  0001 C CNN
F 3 "" V 1350 6250 50  0001 C CNN
	1    9500 7350
	1    0    0    -1  
$EndComp
$Comp
L R R38
U 1 1 58D406C2
P 9750 7350
F 0 "R38" V 9650 7350 50  0000 C CNN
F 1 "R" V 9750 7350 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 6930 3150 50  0001 C CNN
F 3 "" H 7000 3150 50  0001 C CNN
	1    9750 7350
	0    1    1    0   
$EndComp
$Comp
L LED_Small_ALT D48
U 1 1 58D406C8
P 9500 7550
F 0 "D48" H 9500 7650 50  0000 C CNN
F 1 "LED_Small_ALT" H 9500 7694 50  0001 C CNN
F 2 "LEDs:LED_0805" V 1350 6450 50  0001 C CNN
F 3 "" V 1350 6450 50  0001 C CNN
	1    9500 7550
	1    0    0    -1  
$EndComp
$Comp
L R R39
U 1 1 58D406CE
P 9750 7550
F 0 "R39" V 9650 7550 50  0000 C CNN
F 1 "R" V 9750 7550 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 6930 3350 50  0001 C CNN
F 3 "" H 7000 3350 50  0001 C CNN
	1    9750 7550
	0    1    1    0   
$EndComp
$Comp
L LED_Small_ALT D49
U 1 1 58D406D4
P 9500 7750
F 0 "D49" H 9500 7850 50  0000 C CNN
F 1 "LED_Small_ALT" H 9500 7894 50  0001 C CNN
F 2 "LEDs:LED_0805" V 1350 6650 50  0001 C CNN
F 3 "" V 1350 6650 50  0001 C CNN
	1    9500 7750
	1    0    0    -1  
$EndComp
$Comp
L R R40
U 1 1 58D406DA
P 9750 7750
F 0 "R40" V 9650 7750 50  0000 C CNN
F 1 "R" V 9750 7750 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 6930 3550 50  0001 C CNN
F 3 "" H 7000 3550 50  0001 C CNN
	1    9750 7750
	0    1    1    0   
$EndComp
$Comp
L LED_Small_ALT D50
U 1 1 58D406E0
P 9500 7950
F 0 "D50" H 9500 8050 50  0000 C CNN
F 1 "LED_Small_ALT" H 9500 8094 50  0001 C CNN
F 2 "LEDs:LED_0805" V 1350 6850 50  0001 C CNN
F 3 "" V 1350 6850 50  0001 C CNN
	1    9500 7950
	1    0    0    -1  
$EndComp
$Comp
L R R41
U 1 1 58D406E6
P 9750 7950
F 0 "R41" V 9650 7950 50  0000 C CNN
F 1 "R" V 9750 7950 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 6930 3750 50  0001 C CNN
F 3 "" H 7000 3750 50  0001 C CNN
	1    9750 7950
	0    1    1    0   
$EndComp
$Comp
L LED_Small_ALT D43
U 1 1 58D406EC
P 9500 6550
F 0 "D43" H 9500 6650 50  0000 C CNN
F 1 "LED_Small_ALT" H 9500 6694 50  0001 C CNN
F 2 "LEDs:LED_0805" V 1350 5450 50  0001 C CNN
F 3 "" V 1350 5450 50  0001 C CNN
	1    9500 6550
	1    0    0    -1  
$EndComp
$Comp
L R R34
U 1 1 58D406F2
P 9750 6550
F 0 "R34" V 9650 6550 50  0000 C CNN
F 1 "R" V 9750 6550 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 6930 2350 50  0001 C CNN
F 3 "" H 7000 2350 50  0001 C CNN
	1    9750 6550
	0    1    1    0   
$EndComp
$Comp
L LED_Small_ALT D44
U 1 1 58D406F8
P 9500 6750
F 0 "D44" H 9500 6850 50  0000 C CNN
F 1 "LED_Small_ALT" H 9500 6894 50  0001 C CNN
F 2 "LEDs:LED_0805" V 1350 5650 50  0001 C CNN
F 3 "" V 1350 5650 50  0001 C CNN
	1    9500 6750
	1    0    0    -1  
$EndComp
$Comp
L R R35
U 1 1 58D406FE
P 9750 6750
F 0 "R35" V 9650 6750 50  0000 C CNN
F 1 "R" V 9750 6750 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 6930 2550 50  0001 C CNN
F 3 "" H 7000 2550 50  0001 C CNN
	1    9750 6750
	0    1    1    0   
$EndComp
$Comp
L LED_Small_ALT D45
U 1 1 58D40704
P 9500 6950
F 0 "D45" H 9500 7050 50  0000 C CNN
F 1 "LED_Small_ALT" H 9500 7094 50  0001 C CNN
F 2 "LEDs:LED_0805" V 1350 5850 50  0001 C CNN
F 3 "" V 1350 5850 50  0001 C CNN
	1    9500 6950
	1    0    0    -1  
$EndComp
$Comp
L R R36
U 1 1 58D4070A
P 9750 6950
F 0 "R36" V 9650 6950 50  0000 C CNN
F 1 "R" V 9750 6950 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 6930 2750 50  0001 C CNN
F 3 "" H 7000 2750 50  0001 C CNN
	1    9750 6950
	0    1    1    0   
$EndComp
$Comp
L LED_Small_ALT D46
U 1 1 58D40710
P 9500 7150
F 0 "D46" H 9500 7250 50  0000 C CNN
F 1 "LED_Small_ALT" H 9500 7294 50  0001 C CNN
F 2 "LEDs:LED_0805" V 1350 6050 50  0001 C CNN
F 3 "" V 1350 6050 50  0001 C CNN
	1    9500 7150
	1    0    0    -1  
$EndComp
$Comp
L R R37
U 1 1 58D40716
P 9750 7150
F 0 "R37" V 9650 7150 50  0000 C CNN
F 1 "R" V 9750 7150 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 6930 2950 50  0001 C CNN
F 3 "" H 7000 2950 50  0001 C CNN
	1    9750 7150
	0    1    1    0   
$EndComp
Wire Wire Line
	8450 8350 8450 6450
Wire Wire Line
	8550 6450 8550 8450
Wire Wire Line
	8650 6450 8650 8550
Wire Wire Line
	8750 6450 8750 8650
Wire Wire Line
	8850 6450 8850 8750
Wire Wire Line
	8950 6450 8950 8850
Wire Wire Line
	9050 6450 9050 8950
Wire Wire Line
	9150 6450 9150 9050
Wire Wire Line
	9250 6450 9250 9150
Wire Wire Line
	9400 6550 8450 6550
Connection ~ 8450 6550
Wire Wire Line
	9400 6750 8550 6750
Connection ~ 8550 6750
Wire Wire Line
	9400 6950 8650 6950
Connection ~ 8650 6950
Wire Wire Line
	9400 7150 8750 7150
Connection ~ 8750 7150
Wire Wire Line
	9400 7350 8850 7350
Connection ~ 8850 7350
Wire Wire Line
	9400 7550 8950 7550
Connection ~ 8950 7550
Wire Wire Line
	9400 7750 9050 7750
Connection ~ 9050 7750
Wire Wire Line
	9400 7950 9150 7950
Connection ~ 9150 7950
Wire Wire Line
	9900 6550 9900 8100
Connection ~ 9900 7350
Connection ~ 9900 7750
Connection ~ 9900 7550
Connection ~ 9900 7150
Connection ~ 9900 6950
Connection ~ 9900 6750
Wire Wire Line
	9900 8100 9250 8100
Connection ~ 9250 8100
Connection ~ 9900 7950
$EndSCHEMATC
