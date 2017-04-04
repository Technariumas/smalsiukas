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
$Descr A3 16535 11693
encoding utf-8
Sheet 6 10
Title "Smalsiukas - Toyota lifter hack"
Date "2017-04-01"
Rev "Rev1"
Comp "TECHNARIUM"
Comment1 "Albertas Mickėnas"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L R R4
U 1 1 58BEE596
P 13850 5250
F 0 "R4" H 13920 5296 50  0000 L CNN
F 1 "3.6k" H 13920 5205 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 9380 2350 50  0001 C CNN
F 3 "" H 9450 2350 50  0001 C CNN
	1    13850 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	13850 4700 13850 5100
$Comp
L R R3
U 1 1 58BEE735
P 12350 5650
F 0 "R3" H 12420 5696 50  0000 L CNN
F 1 "1k" H 12420 5605 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 7880 2750 50  0001 C CNN
F 3 "" H 7950 2750 50  0001 C CNN
	1    12350 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 6400 13850 6400
Connection ~ 13850 6400
Text Label 12850 5500 2    60   ~ 0
CONTROL
$Comp
L Q_NMOS_GSD Q1
U 1 1 58BEE8F0
P 11750 6100
F 0 "Q1" H 11956 6100 50  0000 L CNN
F 1 "Q_NMOS_GSD" H 11955 6055 50  0001 L CNN
F 2 "Housings_SOT-23_SOT-143_TSOT-6:SOT-23_Handsoldering" H 7950 3500 50  0001 C CNN
F 3 "" H 7750 3400 50  0001 C CNN
F 4 "?" H 11750 6100 60  0001 C CNN "PartNo"
F 5 "?" H 11750 6100 60  0001 C CNN "Manufacturer"
F 6 "2469640" H 11750 6100 60  0001 C CNN "Distributor"
	1    11750 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	11850 5100 12000 5100
Wire Wire Line
	12000 5100 12000 4950
Wire Wire Line
	5150 4700 13850 4700
Wire Wire Line
	11850 4700 11850 4800
$Comp
L R R2
U 1 1 58BEEB23
P 11550 4950
F 0 "R2" H 11620 4996 50  0000 L CNN
F 1 "100k" H 11620 4905 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 7080 2050 50  0001 C CNN
F 3 "" H 7150 2050 50  0001 C CNN
	1    11550 4950
	-1   0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 58BEEBA1
P 10750 4000
F 0 "R1" V 10957 4000 50  0000 C CNN
F 1 "100k" V 10866 4000 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 6280 1100 50  0001 C CNN
F 3 "" H 6350 1100 50  0001 C CNN
	1    10750 4000
	0    -1   -1   0   
$EndComp
Connection ~ 11850 4700
Wire Wire Line
	12350 4850 12350 4700
Connection ~ 12350 4700
Wire Wire Line
	12350 5500 12350 5150
Connection ~ 12350 5500
Text HLabel 13850 4700 2    60   Input ~ 0
PEDAL_POT_VCC
Text HLabel 13850 6400 2    60   Input ~ 0
PEDAL_POT_GND
Text HLabel 12850 5500 2    60   Input ~ 0
PEDAL_POT_WIPER
Wire Wire Line
	12350 5800 12350 6400
Connection ~ 12350 6400
Wire Wire Line
	8550 5100 8700 5100
Wire Wire Line
	8700 5100 8700 4950
Wire Wire Line
	8550 4700 8550 4800
$Comp
L R R10
U 1 1 58C00A17
P 8250 5000
F 0 "R10" H 8320 5046 50  0000 L CNN
F 1 "100k" H 8320 4955 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 3780 2100 50  0001 C CNN
F 3 "" H 3850 2100 50  0001 C CNN
	1    8250 5000
	-1   0    0    -1  
$EndComp
Connection ~ 8550 4700
Text HLabel 9400 4200 0    60   Input ~ 0
~GAZ_SPEED1_PWR
Text HLabel 9800 4000 0    60   Input ~ 0
VCC
Text HLabel 9450 9250 0    60   Input ~ 0
PEDAL_SWITCH_COMMON
Text HLabel 10050 9150 2    60   Input ~ 0
PEDAL_SWITCH_NC
Text HLabel 10050 9350 2    60   Input ~ 0
PEDAL_SWITCH_NO
$Comp
L RELAY_SEPARATED K17
U 2 1 58C01F4B
P 9750 9250
F 0 "K17" V 9516 9250 50  0000 C CNN
F 1 "RELAY_SEPARATED" H 9905 9205 50  0001 L CNN
F 2 "smalsiukas-footpints:Relay_SPDT" H 2100 4950 50  0001 C CNN
F 3 "" H 2100 4950 50  0000 C CNN
	2    9750 9250
	0    1    1    0   
$EndComp
$Comp
L RELAY_SEPARATED K17
U 1 1 58C01FFF
P 7750 9250
F 0 "K17" H 7595 9250 50  0000 R CNN
F 1 "RELAY_SEPARATED" V 7516 9250 50  0001 C CNN
F 2 "smalsiukas-footpints:Relay_SPDT" H 2650 4650 50  0001 C CNN
F 3 "" H 2650 4650 50  0000 C CNN
F 4 "?" H 7750 9250 60  0001 C CNN "PartNo"
F 5 "?" H 7750 9250 60  0001 C CNN "Manufacturer"
F 6 "?" H 7750 9250 60  0001 C CNN "Distributor"
	1    7750 9250
	-1   0    0    1   
$EndComp
Text HLabel 6100 4200 0    60   Input ~ 0
~GAZ_SPEED2_PWR
$Comp
L R R7
U 1 1 58C023B7
P 9550 4200
F 0 "R7" V 9665 4200 50  0000 C CNN
F 1 "330" V 9756 4200 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 5080 1300 50  0001 C CNN
F 3 "" H 5150 1300 50  0001 C CNN
	1    9550 4200
	0    1    1    0   
$EndComp
$Comp
L R R9
U 1 1 58C024A6
P 9650 3400
F 0 "R9" V 9765 3400 50  0000 C CNN
F 1 "330" V 9856 3400 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 5180 500 50  0001 C CNN
F 3 "" H 5250 500 50  0001 C CNN
	1    9650 3400
	0    1    1    0   
$EndComp
Wire Wire Line
	7750 8550 7750 8950
Text HLabel 7750 9850 0    60   Input ~ 0
~GAZ_ENABLE_PWR
Wire Wire Line
	7750 9550 7750 9850
$Comp
L D_ALT D17
U 1 1 58C0A9F4
P 7250 9200
F 0 "D17" V 7204 9121 50  0000 R CNN
F 1 "D_ALT" V 7295 9121 50  0000 R CNN
F 2 "Diodes_SMD:D_SOD-123" H 2350 6900 50  0001 C CNN
F 3 "" H 2350 6900 50  0001 C CNN
	1    7250 9200
	0    -1   1    0   
$EndComp
Wire Wire Line
	7250 8850 7250 9050
Wire Wire Line
	7250 9350 7250 9550
Wire Wire Line
	6950 9550 7750 9550
Connection ~ 7750 9550
$Comp
L C C22
U 1 1 58C0ABFE
P 6950 9200
F 0 "C22" H 7065 9246 50  0000 L CNN
F 1 "C" H 7065 9155 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 4988 7250 50  0001 C CNN
F 3 "" H 4950 7400 50  0001 C CNN
	1    6950 9200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 9050 6950 8850
Connection ~ 7750 8850
Wire Wire Line
	6950 9350 6950 9550
Connection ~ 7250 9550
Connection ~ 7250 8850
Wire Wire Line
	12350 5150 12500 5150
Wire Wire Line
	12500 5150 12500 5000
$Comp
L R R11
U 1 1 58C42979
P 13850 5550
F 0 "R11" H 13920 5596 50  0000 L CNN
F 1 "0" H 13920 5505 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 9380 2650 50  0001 C CNN
F 3 "" H 9450 2650 50  0001 C CNN
	1    13850 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	13850 6400 13850 5700
Connection ~ 13850 5400
Wire Wire Line
	5450 5500 12850 5500
$Comp
L Q_PMOS_GSD Q6
U 1 1 58C7BA3E
P 11750 5300
F 0 "Q6" H 11956 5300 50  0000 L CNN
F 1 "Q_PMOS_GSD" H 11956 5255 50  0001 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23_Handsoldering" H 11950 5400 50  0001 C CNN
F 3 "" H 11750 5300 50  0001 C CNN
F 4 "?" H 11750 5300 60  0001 C CNN "PartNo"
F 5 "?" H 11750 5300 60  0001 C CNN "Manufacturer"
F 6 "1510765" H 11750 5300 60  0001 C CNN "Distributor"
	1    11750 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	11550 4800 11550 4700
Connection ~ 11550 4700
Wire Wire Line
	11550 5100 11550 5300
Wire Wire Line
	12000 5650 12000 5800
Wire Wire Line
	12000 5800 11850 5800
Wire Wire Line
	11850 5800 11850 5900
Wire Wire Line
	11850 6300 11850 6400
Connection ~ 11850 6400
$Comp
L R R53
U 1 1 58C7C0D2
P 11550 6250
F 0 "R53" H 11620 6296 50  0000 L CNN
F 1 "100k" H 11620 6205 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 7080 3350 50  0001 C CNN
F 3 "" H 7150 3350 50  0001 C CNN
	1    11550 6250
	-1   0    0    -1  
$EndComp
Connection ~ 11550 6400
Connection ~ 11550 5300
Connection ~ 11550 6100
$Comp
L Q_PMOS_GSD Q5
U 1 1 58C7C2F6
P 8450 5300
F 0 "Q5" H 8656 5300 50  0000 L CNN
F 1 "Q_PMOS_GSD" H 8656 5255 50  0001 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23_Handsoldering" H 8650 5400 50  0001 C CNN
F 3 "" H 8450 5300 50  0001 C CNN
F 4 "?" H 8450 5300 60  0001 C CNN "PartNo"
F 5 "?" H 8450 5300 60  0001 C CNN "Manufacturer"
F 6 "1510765" H 8450 5300 60  0001 C CNN "Distributor"
	1    8450 5300
	1    0    0    -1  
$EndComp
Connection ~ 11850 5100
Connection ~ 8550 5100
Wire Wire Line
	8250 5150 8250 5300
Wire Wire Line
	8250 4850 8250 4700
Connection ~ 8250 4700
$Comp
L R R51
U 1 1 58C7C4D5
P 8250 6250
F 0 "R51" H 8320 6296 50  0000 L CNN
F 1 "100k" H 8320 6205 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 3780 3350 50  0001 C CNN
F 3 "" H 3850 3350 50  0001 C CNN
	1    8250 6250
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8550 6300 8550 6400
Connection ~ 8550 6400
Connection ~ 11850 5500
Connection ~ 8550 5500
Connection ~ 8250 5300
Connection ~ 8250 6100
Text HLabel 10400 4200 2    60   Input ~ 0
PEDAL_POT_GND
Wire Wire Line
	11550 5300 11250 5300
Wire Wire Line
	11250 5300 11250 4000
Wire Wire Line
	10400 4000 10600 4000
Wire Wire Line
	11250 4000 10900 4000
Wire Wire Line
	9800 4200 9700 4200
Text HLabel 7750 8550 0    60   Input ~ 0
VCC
Wire Wire Line
	6950 8850 7750 8850
Wire Wire Line
	5450 5100 5600 5100
Wire Wire Line
	5600 5100 5600 4950
Wire Wire Line
	5450 4700 5450 4800
$Comp
L R R45
U 1 1 58C7D9C7
P 5150 5000
F 0 "R45" H 5220 5046 50  0000 L CNN
F 1 "100k" H 5220 4955 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 680 2100 50  0001 C CNN
F 3 "" H 750 2100 50  0001 C CNN
	1    5150 5000
	-1   0    0    -1  
$EndComp
Connection ~ 5450 4700
$Comp
L Q_PMOS_GSD Q3
U 1 1 58C7D9CF
P 5350 5300
F 0 "Q3" H 5556 5300 50  0000 L CNN
F 1 "Q_PMOS_GSD" H 5556 5255 50  0001 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23_Handsoldering" H 5550 5400 50  0001 C CNN
F 3 "" H 5350 5300 50  0001 C CNN
F 4 "?" H 5350 5300 60  0001 C CNN "PartNo"
F 5 "?" H 5350 5300 60  0001 C CNN "Manufacturer"
F 6 "1510765" H 5350 5300 60  0001 C CNN "Distributor"
	1    5350 5300
	1    0    0    -1  
$EndComp
Connection ~ 5450 5100
Wire Wire Line
	5150 5150 5150 5300
Wire Wire Line
	5150 4850 5150 4700
$Comp
L R R46
U 1 1 58C7D9D9
P 5150 6250
F 0 "R46" H 5220 6296 50  0000 L CNN
F 1 "100k" H 5220 6205 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 680 3350 50  0001 C CNN
F 3 "" H 750 3350 50  0001 C CNN
	1    5150 6250
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5450 6300 5450 6400
Connection ~ 5450 6400
Connection ~ 5450 5500
Connection ~ 5150 5300
Connection ~ 5150 6100
Connection ~ 8250 6400
$Comp
L R R52
U 1 1 58C7FBC5
P 10750 3400
F 0 "R52" V 10957 3400 50  0000 C CNN
F 1 "100k" V 10866 3400 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 6280 500 50  0001 C CNN
F 3 "" H 6350 500 50  0001 C CNN
	1    10750 3400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	11550 6100 11150 6100
Wire Wire Line
	11150 6100 11150 3400
Text HLabel 10400 3050 2    60   Input ~ 0
PEDAL_POT_VCC
Text HLabel 9800 3200 0    60   Input ~ 0
VCC
Wire Wire Line
	10400 3400 10600 3400
Wire Wire Line
	11150 3400 10900 3400
Wire Wire Line
	10400 3050 10400 3200
Wire Wire Line
	9400 4200 9400 3400
Wire Wire Line
	9400 3400 9500 3400
$Comp
L R R50
U 1 1 58C818D2
P 7450 4000
F 0 "R50" V 7657 4000 50  0000 C CNN
F 1 "100k" V 7566 4000 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 2980 1100 50  0001 C CNN
F 3 "" H 3050 1100 50  0001 C CNN
	1    7450 4000
	0    -1   -1   0   
$EndComp
Text HLabel 6500 4000 0    60   Input ~ 0
VCC
$Comp
L R R47
U 1 1 58C818E0
P 6250 4200
F 0 "R47" V 6365 4200 50  0000 C CNN
F 1 "330" V 6456 4200 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 1780 1300 50  0001 C CNN
F 3 "" H 1850 1300 50  0001 C CNN
	1    6250 4200
	0    1    1    0   
$EndComp
$Comp
L R R48
U 1 1 58C818E6
P 6350 3400
F 0 "R48" V 6465 3400 50  0000 C CNN
F 1 "330" V 6556 3400 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 1880 500 50  0001 C CNN
F 3 "" H 1950 500 50  0001 C CNN
	1    6350 3400
	0    1    1    0   
$EndComp
Text HLabel 7100 4200 2    60   Input ~ 0
PEDAL_POT_GND
Wire Wire Line
	7950 5300 7950 4000
Wire Wire Line
	7100 4000 7300 4000
Wire Wire Line
	7950 4000 7600 4000
Wire Wire Line
	6500 4200 6400 4200
$Comp
L R R49
U 1 1 58C818F1
P 7450 3400
F 0 "R49" V 7657 3400 50  0000 C CNN
F 1 "100k" V 7566 3400 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 2980 500 50  0001 C CNN
F 3 "" H 3050 500 50  0001 C CNN
	1    7450 3400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7850 6100 7850 3400
Text HLabel 7100 3050 2    60   Input ~ 0
PEDAL_POT_VCC
Text HLabel 6500 3200 0    60   Input ~ 0
VCC
Wire Wire Line
	7100 3400 7300 3400
Wire Wire Line
	7850 3400 7600 3400
Wire Wire Line
	7100 3050 7100 3200
Wire Wire Line
	6100 4200 6100 3400
Wire Wire Line
	6100 3400 6200 3400
Wire Wire Line
	8250 5300 7950 5300
Wire Wire Line
	7850 6100 8250 6100
Text HLabel 3000 4200 0    60   Input ~ 0
~GAZ_SPEED3_PWR
$Comp
L R R44
U 1 1 58C82FC0
P 4350 4000
F 0 "R44" V 4557 4000 50  0000 C CNN
F 1 "100k" V 4466 4000 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V -120 1100 50  0001 C CNN
F 3 "" H -50 1100 50  0001 C CNN
	1    4350 4000
	0    -1   -1   0   
$EndComp
Text HLabel 3400 4000 0    60   Input ~ 0
VCC
$Comp
L R R8
U 1 1 58C82FCD
P 3150 4200
F 0 "R8" V 3265 4200 50  0000 C CNN
F 1 "330" V 3356 4200 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V -1320 1300 50  0001 C CNN
F 3 "" H -1250 1300 50  0001 C CNN
	1    3150 4200
	0    1    1    0   
$EndComp
$Comp
L R R42
U 1 1 58C82FD3
P 3250 3400
F 0 "R42" V 3365 3400 50  0000 C CNN
F 1 "330" V 3456 3400 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V -1220 500 50  0001 C CNN
F 3 "" H -1150 500 50  0001 C CNN
	1    3250 3400
	0    1    1    0   
$EndComp
Text HLabel 4000 4200 2    60   Input ~ 0
PEDAL_POT_GND
Wire Wire Line
	4850 5300 4850 4000
Wire Wire Line
	4000 4000 4200 4000
Wire Wire Line
	4850 4000 4500 4000
Wire Wire Line
	3400 4200 3300 4200
$Comp
L R R43
U 1 1 58C82FDE
P 4350 3400
F 0 "R43" V 4557 3400 50  0000 C CNN
F 1 "100k" V 4466 3400 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V -120 500 50  0001 C CNN
F 3 "" H -50 500 50  0001 C CNN
	1    4350 3400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4750 6100 4750 3400
Text HLabel 4000 3050 2    60   Input ~ 0
PEDAL_POT_VCC
Text HLabel 3400 3200 0    60   Input ~ 0
VCC
Wire Wire Line
	4000 3400 4200 3400
Wire Wire Line
	4750 3400 4500 3400
Wire Wire Line
	4000 3050 4000 3200
Wire Wire Line
	3000 4200 3000 3400
Wire Wire Line
	3000 3400 3100 3400
Wire Wire Line
	5150 5300 4850 5300
Wire Wire Line
	4750 6100 5150 6100
Wire Wire Line
	5450 5800 5450 5900
Wire Wire Line
	8550 5800 8550 5900
Wire Wire Line
	8550 5800 8700 5800
Wire Wire Line
	8700 5800 8700 5650
Wire Wire Line
	5450 5800 5600 5800
Wire Wire Line
	5600 5800 5600 5650
$Comp
L POT RV5
U 1 1 58C85E15
P 11850 4950
F 0 "RV5" H 11780 4996 50  0000 R CNN
F 1 "40k" H 11780 4905 50  0000 R CNN
F 2 "Potentiometers:Potentiometer_Trimmer_Bourns_3296W" H 7700 2650 50  0001 C CNN
F 3 "" H 7700 2650 50  0001 C CNN
F 4 "?" H 11850 4950 60  0001 C CNN "PartNo"
F 5 "?" H 11850 4950 60  0001 C CNN "Manufacturer"
F 6 "9353305" H 11850 4950 60  0001 C CNN "Distributor"
	1    11850 4950
	1    0    0    -1  
$EndComp
$Comp
L Q_NMOS_GSD Q2
U 1 1 58C00A06
P 8450 6100
F 0 "Q2" H 8656 6100 50  0000 L CNN
F 1 "Q_NMOS_GSD" H 8655 6055 50  0001 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23_Handsoldering" H 4650 3500 50  0001 C CNN
F 3 "" H 4450 3400 50  0001 C CNN
F 4 "?" H 8450 6100 60  0001 C CNN "PartNo"
F 5 "?" H 8450 6100 60  0001 C CNN "Manufacturer"
F 6 "2469640" H 8450 6100 60  0001 C CNN "Distributor"
	1    8450 6100
	1    0    0    -1  
$EndComp
$Comp
L Q_NMOS_GSD Q4
U 1 1 58C7D9B8
P 5350 6100
F 0 "Q4" H 5556 6100 50  0000 L CNN
F 1 "Q_NMOS_GSD" H 5555 6055 50  0001 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23_Handsoldering" H 1550 3500 50  0001 C CNN
F 3 "" H 1350 3400 50  0001 C CNN
F 4 "?" H 5350 6100 60  0001 C CNN "PartNo"
F 5 "?" H 5350 6100 60  0001 C CNN "Manufacturer"
F 6 "2469640" H 5350 6100 60  0001 C CNN "Distributor"
	1    5350 6100
	1    0    0    -1  
$EndComp
$Comp
L POT RV7
U 1 1 58C8B732
P 12350 5000
F 0 "RV7" H 12280 5046 50  0000 R CNN
F 1 "40k" H 12280 4955 50  0000 R CNN
F 2 "Potentiometers:Potentiometer_Trimmer_Bourns_3296W" H 8200 2700 50  0001 C CNN
F 3 "" H 8200 2700 50  0001 C CNN
F 4 "?" H 12350 5000 60  0001 C CNN "PartNo"
F 5 "?" H 12350 5000 60  0001 C CNN "Manufacturer"
F 6 "9353305" H 12350 5000 60  0001 C CNN "Distributor"
	1    12350 5000
	1    0    0    -1  
$EndComp
$Comp
L POT RV6
U 1 1 58C8B8F1
P 11850 5650
F 0 "RV6" H 11780 5696 50  0000 R CNN
F 1 "40k" H 11780 5605 50  0000 R CNN
F 2 "Potentiometers:Potentiometer_Trimmer_Bourns_3296W" H 7700 3350 50  0001 C CNN
F 3 "" H 7700 3350 50  0001 C CNN
F 4 "?" H 11850 5650 60  0001 C CNN "PartNo"
F 5 "?" H 11850 5650 60  0001 C CNN "Manufacturer"
F 6 "9353305" H 11850 5650 60  0001 C CNN "Distributor"
	1    11850 5650
	1    0    0    -1  
$EndComp
$Comp
L POT RV3
U 1 1 58C8B98D
P 8550 4950
F 0 "RV3" H 8480 4996 50  0000 R CNN
F 1 "40k" H 8480 4905 50  0000 R CNN
F 2 "Potentiometers:Potentiometer_Trimmer_Bourns_3296W" H 4400 2650 50  0001 C CNN
F 3 "" H 4400 2650 50  0001 C CNN
F 4 "?" H 8550 4950 60  0001 C CNN "PartNo"
F 5 "?" H 8550 4950 60  0001 C CNN "Manufacturer"
F 6 "9353305" H 8550 4950 60  0001 C CNN "Distributor"
	1    8550 4950
	1    0    0    -1  
$EndComp
$Comp
L POT RV4
U 1 1 58C8BB3F
P 8550 5650
F 0 "RV4" H 8480 5696 50  0000 R CNN
F 1 "40k" H 8480 5605 50  0000 R CNN
F 2 "Potentiometers:Potentiometer_Trimmer_Bourns_3296W" H 4400 3350 50  0001 C CNN
F 3 "" H 4400 3350 50  0001 C CNN
F 4 "?" H 8550 5650 60  0001 C CNN "PartNo"
F 5 "?" H 8550 5650 60  0001 C CNN "Manufacturer"
F 6 "9353305" H 8550 5650 60  0001 C CNN "Distributor"
	1    8550 5650
	1    0    0    -1  
$EndComp
$Comp
L POT RV2
U 1 1 58C8BD08
P 5450 5650
F 0 "RV2" H 5380 5696 50  0000 R CNN
F 1 "40k" H 5380 5605 50  0000 R CNN
F 2 "Potentiometers:Potentiometer_Trimmer_Bourns_3296W" H 1300 3350 50  0001 C CNN
F 3 "" H 1300 3350 50  0001 C CNN
F 4 "?" H 5450 5650 60  0001 C CNN "PartNo"
F 5 "?" H 5450 5650 60  0001 C CNN "Manufacturer"
F 6 "9353305" H 5450 5650 60  0001 C CNN "Distributor"
	1    5450 5650
	1    0    0    -1  
$EndComp
$Comp
L POT RV1
U 1 1 58C8BF2C
P 5450 4950
F 0 "RV1" H 5380 4996 50  0000 R CNN
F 1 "40k" H 5380 4905 50  0000 R CNN
F 2 "Potentiometers:Potentiometer_Trimmer_Bourns_3296W" H 1300 2650 50  0001 C CNN
F 3 "" H 1300 2650 50  0001 C CNN
F 4 "?" H 5450 4950 60  0001 C CNN "PartNo"
F 5 "?" H 5450 4950 60  0001 C CNN "Manufacturer"
F 6 "9353305" H 5450 4950 60  0001 C CNN "Distributor"
	1    5450 4950
	1    0    0    -1  
$EndComp
$Comp
L LTV-814 U1
U 1 1 58C92A00
P 3700 3300
F 0 "U1" H 3700 3625 50  0000 C CNN
F 1 "LTV-814" H 3700 3534 50  0000 C CNN
F 2 "Housings_DIP:DIP-4_W11.48mm_SMD" H 3500 3100 50  0001 L CIN
F 3 "" H 3725 3300 50  0001 L CNN
F 4 "?" H 3700 3300 60  0001 C CNN "PartNo"
F 5 "?" H 3700 3300 60  0001 C CNN "Manufacturer"
F 6 "1779744" H 3700 3300 60  0001 C CNN "Distributor"
	1    3700 3300
	1    0    0    -1  
$EndComp
$Comp
L LTV-814 U4
U 1 1 58C93128
P 3700 4100
F 0 "U4" H 3700 4425 50  0000 C CNN
F 1 "LTV-814" H 3700 4334 50  0000 C CNN
F 2 "Housings_DIP:DIP-4_W11.48mm_SMD" H 3500 3900 50  0001 L CIN
F 3 "" H 3725 4100 50  0001 L CNN
F 4 "?" H 3700 4100 60  0001 C CNN "PartNo"
F 5 "?" H 3700 4100 60  0001 C CNN "Manufacturer"
F 6 "1779744" H 3700 4100 60  0001 C CNN "Distributor"
	1    3700 4100
	1    0    0    -1  
$EndComp
$Comp
L LTV-814 U13
U 1 1 58C931B4
P 6800 4100
F 0 "U13" H 6800 4425 50  0000 C CNN
F 1 "LTV-814" H 6800 4334 50  0000 C CNN
F 2 "Housings_DIP:DIP-4_W11.48mm_SMD" H 6600 3900 50  0001 L CIN
F 3 "" H 6825 4100 50  0001 L CNN
F 4 "?" H 6800 4100 60  0001 C CNN "PartNo"
F 5 "?" H 6800 4100 60  0001 C CNN "Manufacturer"
F 6 "1779744" H 6800 4100 60  0001 C CNN "Distributor"
	1    6800 4100
	1    0    0    -1  
$EndComp
$Comp
L LTV-814 U12
U 1 1 58C9346F
P 6800 3300
F 0 "U12" H 6800 3625 50  0000 C CNN
F 1 "LTV-814" H 6800 3534 50  0000 C CNN
F 2 "Housings_DIP:DIP-4_W11.48mm_SMD" H 6600 3100 50  0001 L CIN
F 3 "" H 6825 3300 50  0001 L CNN
F 4 "?" H 6800 3300 60  0001 C CNN "PartNo"
F 5 "?" H 6800 3300 60  0001 C CNN "Manufacturer"
F 6 "1779744" H 6800 3300 60  0001 C CNN "Distributor"
	1    6800 3300
	1    0    0    -1  
$EndComp
$Comp
L LTV-814 U15
U 1 1 58C934F3
P 10100 4100
F 0 "U15" H 10100 4425 50  0000 C CNN
F 1 "LTV-814" H 10100 4334 50  0000 C CNN
F 2 "Housings_DIP:DIP-4_W11.48mm_SMD" H 9900 3900 50  0001 L CIN
F 3 "" H 10125 4100 50  0001 L CNN
F 4 "?" H 10100 4100 60  0001 C CNN "PartNo"
F 5 "?" H 10100 4100 60  0001 C CNN "Manufacturer"
F 6 "1779744" H 10100 4100 60  0001 C CNN "Distributor"
	1    10100 4100
	1    0    0    -1  
$EndComp
$Comp
L LTV-814 U14
U 1 1 58C93593
P 10100 3300
F 0 "U14" H 10100 3625 50  0000 C CNN
F 1 "LTV-814" H 10100 3534 50  0000 C CNN
F 2 "Housings_DIP:DIP-4_W11.48mm_SMD" H 9900 3100 50  0001 L CIN
F 3 "" H 10125 3300 50  0001 L CNN
F 4 "?" H 10100 3300 60  0001 C CNN "PartNo"
F 5 "?" H 10100 3300 60  0001 C CNN "Manufacturer"
F 6 "1779744" H 10100 3300 60  0001 C CNN "Distributor"
	1    10100 3300
	1    0    0    -1  
$EndComp
$Comp
L TEST TP1
U 1 1 58D2390B
P 12850 5500
F 0 "TP1" H 12928 5640 50  0000 L CNN
F 1 "TEST" H 12928 5549 50  0000 L CNN
F 2 "Measurement_Points:Measurement_Point_Round-TH_Small" H 12850 5500 50  0001 C CNN
F 3 "" H 12850 5500 50  0001 C CNN
F 4 "?" H 12850 5500 60  0001 C CNN "PartNo"
F 5 "?" H 12850 5500 60  0001 C CNN "Manufacturer"
F 6 "?" H 12850 5500 60  0001 C CNN "Distributor"
	1    12850 5500
	1    0    0    -1  
$EndComp
Text Notes 7350 6650 0    60   ~ 0
!!!! FIX: p-channel mosfets are in wrong orientation!
$EndSCHEMATC
