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
L R R1
U 1 1 58C28E39
P 7300 1350
F 0 "R1" V 7380 1350 50  0000 C CNN
F 1 "50" V 7300 1350 50  0000 C CNN
F 2 "" V 7230 1350 50  0000 C CNN
F 3 "" H 7300 1350 50  0000 C CNN
	1    7300 1350
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 58C28F1A
P 7300 1950
F 0 "R2" V 7380 1950 50  0000 C CNN
F 1 "200" V 7300 1950 50  0000 C CNN
F 2 "" V 7230 1950 50  0000 C CNN
F 3 "" H 7300 1950 50  0000 C CNN
	1    7300 1950
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 58C28F4A
P 7300 2550
F 0 "R3" V 7380 2550 50  0000 C CNN
F 1 "200" V 7300 2550 50  0000 C CNN
F 2 "" V 7230 2550 50  0000 C CNN
F 3 "" H 7300 2550 50  0000 C CNN
	1    7300 2550
	1    0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 58C28F7B
P 7300 3000
F 0 "R4" V 7380 3000 50  0000 C CNN
F 1 "50" V 7300 3000 50  0000 C CNN
F 2 "" V 7230 3000 50  0000 C CNN
F 3 "" H 7300 3000 50  0000 C CNN
	1    7300 3000
	1    0    0    -1  
$EndComp
$Comp
L R R5
U 1 1 58C28FA7
P 7300 3450
F 0 "R5" V 7380 3450 50  0000 C CNN
F 1 "50" V 7300 3450 50  0000 C CNN
F 2 "" V 7230 3450 50  0000 C CNN
F 3 "" H 7300 3450 50  0000 C CNN
	1    7300 3450
	1    0    0    -1  
$EndComp
$Comp
L R R6
U 1 1 58C29002
P 7300 3900
F 0 "R6" V 7380 3900 50  0000 C CNN
F 1 "200" V 7300 3900 50  0000 C CNN
F 2 "" V 7230 3900 50  0000 C CNN
F 3 "" H 7300 3900 50  0000 C CNN
	1    7300 3900
	1    0    0    -1  
$EndComp
$Comp
L R R7
U 1 1 58C29038
P 7300 4550
F 0 "R7" V 7380 4550 50  0000 C CNN
F 1 "200" V 7300 4550 50  0000 C CNN
F 2 "" V 7230 4550 50  0000 C CNN
F 3 "" H 7300 4550 50  0000 C CNN
	1    7300 4550
	1    0    0    -1  
$EndComp
$Comp
L R R8
U 1 1 58C2910E
P 7300 5200
F 0 "R8" V 7380 5200 50  0000 C CNN
F 1 "50" V 7300 5200 50  0000 C CNN
F 2 "" V 7230 5200 50  0000 C CNN
F 3 "" H 7300 5200 50  0000 C CNN
	1    7300 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 1000 7300 1200
Wire Wire Line
	7300 1500 7300 1800
Wire Wire Line
	7300 2100 7300 2400
Wire Wire Line
	7300 2700 7300 2850
Wire Wire Line
	7300 3150 7300 3300
Wire Wire Line
	7300 3600 7300 3750
Wire Wire Line
	7300 4050 7300 4400
Wire Wire Line
	7300 4700 7300 5050
Wire Wire Line
	7300 5350 7300 6100
Wire Wire Line
	7300 3200 7950 3200
Connection ~ 7300 3200
$Comp
L D D?
U 1 1 58C29EB0
P 8100 3200
F 0 "D?" H 8100 3300 50  0000 C CNN
F 1 "D" H 8100 3100 50  0000 C CNN
F 2 "" H 8100 3200 50  0000 C CNN
F 3 "" H 8100 3200 50  0000 C CNN
	1    8100 3200
	-1   0    0    1   
$EndComp
Wire Wire Line
	8250 3200 10450 3200
$Comp
L Q_NJFET_DGS Q?
U 1 1 58C2A14F
P 8350 3750
F 0 "Q?" H 8550 3800 50  0000 L CNN
F 1 "Q_NJFET_DGS" H 8550 3700 50  0000 L CNN
F 2 "" H 8550 3850 50  0000 C CNN
F 3 "" H 8350 3750 50  0000 C CNN
	1    8350 3750
	0    -1   -1   0   
$EndComp
$Comp
L Q_NJFET_DGS Q?
U 1 1 58C2A226
P 8400 4400
F 0 "Q?" H 8600 4450 50  0000 L CNN
F 1 "Q_NJFET_DGS" H 8600 4350 50  0000 L CNN
F 2 "" H 8600 4500 50  0000 C CNN
F 3 "" H 8400 4400 50  0000 C CNN
	1    8400 4400
	0    -1   -1   0   
$EndComp
$Comp
L Q_NJFET_DGS Q?
U 1 1 58C2A277
P 8400 5050
F 0 "Q?" H 8600 5100 50  0000 L CNN
F 1 "Q_NJFET_DGS" H 8600 5000 50  0000 L CNN
F 2 "" H 8600 5150 50  0000 C CNN
F 3 "" H 8400 5050 50  0000 C CNN
	1    8400 5050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8200 4950 7300 4950
Connection ~ 7300 4950
Wire Wire Line
	8200 4300 7300 4300
Connection ~ 7300 4300
Wire Wire Line
	8150 3650 7300 3650
Connection ~ 7300 3650
Wire Wire Line
	8200 2750 7300 2750
Connection ~ 7300 2750
$Comp
L Q_NJFET_DGS Q?
U 1 1 58C2A65A
P 8400 2050
F 0 "Q?" V 8300 2200 50  0000 L CNN
F 1 "Q_NJFET_DGS" H 8600 2000 50  0000 L CNN
F 2 "" H 8600 2150 50  0000 C CNN
F 3 "" H 8400 2050 50  0000 C CNN
	1    8400 2050
	0    -1   1    0   
$EndComp
$Comp
L Q_NJFET_DGS Q?
U 1 1 58C2A6A6
P 8400 1450
F 0 "Q?" V 8250 1250 50  0000 L CNN
F 1 "Q_NJFET_DGS" V 8350 850 50  0000 L CNN
F 2 "" H 8600 1550 50  0000 C CNN
F 3 "" H 8400 1450 50  0000 C CNN
	1    8400 1450
	0    -1   1    0   
$EndComp
Wire Wire Line
	8200 1550 7300 1550
Connection ~ 7300 1550
Wire Wire Line
	8200 2150 7300 2150
Connection ~ 7300 2150
Wire Wire Line
	8950 2750 8600 2750
Wire Wire Line
	8950 1550 8950 4950
Connection ~ 8950 3200
Wire Wire Line
	8600 2150 8950 2150
Connection ~ 8950 2750
Wire Wire Line
	8950 1550 8600 1550
Connection ~ 8950 2150
Wire Wire Line
	8950 3650 8550 3650
Wire Wire Line
	8600 4300 8950 4300
Connection ~ 8950 3650
Wire Wire Line
	8950 4950 8600 4950
Connection ~ 8950 4300
Wire Wire Line
	8400 5400 8400 5250
Wire Wire Line
	6150 5400 8400 5400
Wire Wire Line
	8400 4750 8400 4600
Wire Wire Line
	6150 4750 8400 4750
Wire Wire Line
	6150 4100 8350 4100
Wire Wire Line
	6250 2350 8400 2350
Wire Wire Line
	8400 1150 8400 1250
Wire Wire Line
	6300 1150 8400 1150
$Comp
L OPTO-TRANSISTOR-4 U?
U 1 1 58C2B4D4
P 5850 4850
F 0 "U?" H 5650 5050 50  0000 L CNN
F 1 "OPTO-TRANSISTOR-4" H 5650 4650 50  0000 L CNN
F 2 "" H 5650 4650 50  0000 L CIN
F 3 "" H 5850 4850 50  0000 L CNN
	1    5850 4850
	1    0    0    -1  
$EndComp
$Comp
L OPTO-TRANSISTOR-4 U?
U 1 1 58C2B547
P 5850 5500
F 0 "U?" H 5650 5700 50  0000 L CNN
F 1 "OPTO-TRANSISTOR-4" H 5650 5300 50  0000 L CNN
F 2 "" H 5650 5300 50  0000 L CIN
F 3 "" H 5850 5500 50  0000 L CNN
	1    5850 5500
	1    0    0    -1  
$EndComp
$Comp
L OPTO-TRANSISTOR-4 U?
U 1 1 58C2B59E
P 5850 4200
F 0 "U?" H 5650 4400 50  0000 L CNN
F 1 "OPTO-TRANSISTOR-4" H 5650 4000 50  0000 L CNN
F 2 "" H 5650 4000 50  0000 L CIN
F 3 "" H 5850 4200 50  0000 L CNN
	1    5850 4200
	1    0    0    -1  
$EndComp
$Comp
L OPTO-TRANSISTOR-4 U?
U 1 1 58C2B5FA
P 5950 2450
F 0 "U?" H 5750 2650 50  0000 L CNN
F 1 "OPTO-TRANSISTOR-4" H 5750 2250 50  0000 L CNN
F 2 "" H 5750 2250 50  0000 L CIN
F 3 "" H 5950 2450 50  0000 L CNN
	1    5950 2450
	1    0    0    -1  
$EndComp
$Comp
L OPTO-TRANSISTOR-4 U?
U 1 1 58C2B7EB
P 5950 1850
F 0 "U?" H 5750 2050 50  0000 L CNN
F 1 "OPTO-TRANSISTOR-4" H 5750 1650 50  0000 L CNN
F 2 "" H 5750 1650 50  0000 L CIN
F 3 "" H 5950 1850 50  0000 L CNN
	1    5950 1850
	1    0    0    -1  
$EndComp
$Comp
L OPTO-TRANSISTOR-4 U?
U 1 1 58C2B841
P 6000 1250
F 0 "U?" H 5800 1450 50  0000 L CNN
F 1 "OPTO-TRANSISTOR-4" H 5800 1050 50  0000 L CNN
F 2 "" H 5800 1050 50  0000 L CIN
F 3 "" H 6000 1250 50  0000 L CNN
	1    6000 1250
	1    0    0    -1  
$EndComp
$Comp
L R R9
U 1 1 58C2BB21
P 6500 950
F 0 "R9" V 6580 950 50  0000 C CNN
F 1 "1k" V 6500 950 50  0000 C CNN
F 2 "" V 6430 950 50  0000 C CNN
F 3 "" H 6500 950 50  0000 C CNN
	1    6500 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 4950 6150 4950
Wire Wire Line
	6500 4300 6150 4300
Connection ~ 6500 4950
Wire Wire Line
	6500 2550 6250 2550
Wire Wire Line
	6500 1950 6250 1950
Connection ~ 6500 2550
Wire Wire Line
	6500 1350 6300 1350
Connection ~ 6500 1950
$Comp
L R R15
U 1 1 58C2C91C
P 6850 5650
F 0 "R15" V 6930 5650 50  0000 C CNN
F 1 "10k" V 6850 5650 50  0000 C CNN
F 2 "" V 6780 5650 50  0000 C CNN
F 3 "" H 6850 5650 50  0000 C CNN
	1    6850 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 5500 6850 5400
Connection ~ 6850 5400
Connection ~ 6500 4300
$Comp
L R R14
U 1 1 58C2CEA0
P 6850 4950
F 0 "R14" V 6930 4950 50  0000 C CNN
F 1 "10k" V 6850 4950 50  0000 C CNN
F 2 "" V 6780 4950 50  0000 C CNN
F 3 "" H 6850 4950 50  0000 C CNN
	1    6850 4950
	1    0    0    -1  
$EndComp
$Comp
L R R13
U 1 1 58C2CF61
P 6850 4300
F 0 "R13" V 6930 4300 50  0000 C CNN
F 1 "10k" V 6850 4300 50  0000 C CNN
F 2 "" V 6780 4300 50  0000 C CNN
F 3 "" H 6850 4300 50  0000 C CNN
	1    6850 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 4100 6850 4150
Connection ~ 6850 4100
$Comp
L R R12
U 1 1 58C2D715
P 6850 2550
F 0 "R12" V 6930 2550 50  0000 C CNN
F 1 "10k" V 6850 2550 50  0000 C CNN
F 2 "" V 6780 2550 50  0000 C CNN
F 3 "" H 6850 2550 50  0000 C CNN
	1    6850 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 2350 6850 2400
Connection ~ 6850 2350
$Comp
L R R11
U 1 1 58C2DE45
P 6850 1950
F 0 "R11" V 6930 1950 50  0000 C CNN
F 1 "10k" V 6850 1950 50  0000 C CNN
F 2 "" V 6780 1950 50  0000 C CNN
F 3 "" H 6850 1950 50  0000 C CNN
	1    6850 1950
	1    0    0    -1  
$EndComp
$Comp
L R R10
U 1 1 58C2E0B7
P 6850 1350
F 0 "R10" V 6930 1350 50  0000 C CNN
F 1 "10k" V 6850 1350 50  0000 C CNN
F 2 "" V 6780 1350 50  0000 C CNN
F 3 "" H 6850 1350 50  0000 C CNN
	1    6850 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 1200 6850 1150
Connection ~ 6850 1150
Wire Wire Line
	6250 1750 8400 1750
Wire Wire Line
	8400 1750 8400 1850
Wire Wire Line
	6850 1800 6850 1750
Connection ~ 6850 1750
$Comp
L Q_NJFET_DGS Q?
U 1 1 58C2A47F
P 8400 2650
F 0 "Q?" H 8600 2700 50  0000 L CNN
F 1 "Q_NJFET_DGS" H 8600 2600 50  0000 L CNN
F 2 "" H 8600 2750 50  0000 C CNN
F 3 "" H 8400 2650 50  0000 C CNN
	1    8400 2650
	0    -1   1    0   
$EndComp
Wire Wire Line
	8400 2350 8400 2450
Wire Wire Line
	8350 4100 8350 3950
Wire Wire Line
	6850 4800 6850 4750
Connection ~ 6850 4750
$Comp
L Earth #PWR?
U 1 1 58C31C5C
P 7300 6100
F 0 "#PWR?" H 7300 5850 50  0001 C CNN
F 1 "Earth" H 7300 5950 50  0001 C CNN
F 2 "" H 7300 6100 50  0000 C CNN
F 3 "" H 7300 6100 50  0000 C CNN
	1    7300 6100
	1    0    0    -1  
$EndComp
$Comp
L Earth #PWR?
U 1 1 58C31CBE
P 6850 5800
F 0 "#PWR?" H 6850 5550 50  0001 C CNN
F 1 "Earth" H 6850 5650 50  0001 C CNN
F 2 "" H 6850 5800 50  0000 C CNN
F 3 "" H 6850 5800 50  0000 C CNN
	1    6850 5800
	1    0    0    -1  
$EndComp
$Comp
L Earth #PWR?
U 1 1 58C321CB
P 6850 5100
F 0 "#PWR?" H 6850 4850 50  0001 C CNN
F 1 "Earth" H 6850 4950 50  0001 C CNN
F 2 "" H 6850 5100 50  0000 C CNN
F 3 "" H 6850 5100 50  0000 C CNN
	1    6850 5100
	1    0    0    -1  
$EndComp
$Comp
L Earth #PWR?
U 1 1 58C3222D
P 6850 4450
F 0 "#PWR?" H 6850 4200 50  0001 C CNN
F 1 "Earth" H 6850 4300 50  0001 C CNN
F 2 "" H 6850 4450 50  0000 C CNN
F 3 "" H 6850 4450 50  0000 C CNN
	1    6850 4450
	1    0    0    -1  
$EndComp
$Comp
L Earth #PWR?
U 1 1 58C32C73
P 6850 2700
F 0 "#PWR?" H 6850 2450 50  0001 C CNN
F 1 "Earth" H 6850 2550 50  0001 C CNN
F 2 "" H 6850 2700 50  0000 C CNN
F 3 "" H 6850 2700 50  0000 C CNN
	1    6850 2700
	1    0    0    -1  
$EndComp
$Comp
L Earth #PWR?
U 1 1 58C32F53
P 6850 2100
F 0 "#PWR?" H 6850 1850 50  0001 C CNN
F 1 "Earth" H 6850 1950 50  0001 C CNN
F 2 "" H 6850 2100 50  0000 C CNN
F 3 "" H 6850 2100 50  0000 C CNN
	1    6850 2100
	1    0    0    -1  
$EndComp
$Comp
L Earth #PWR?
U 1 1 58C331DC
P 6850 1500
F 0 "#PWR?" H 6850 1250 50  0001 C CNN
F 1 "Earth" H 6850 1350 50  0001 C CNN
F 2 "" H 6850 1500 50  0000 C CNN
F 3 "" H 6850 1500 50  0000 C CNN
	1    6850 1500
	1    0    0    -1  
$EndComp
$Comp
L HT #PWR?
U 1 1 58C33223
P 7300 1000
F 0 "#PWR?" H 7300 1120 50  0001 C CNN
F 1 "HT" H 7300 1090 50  0000 C CNN
F 2 "" H 7300 1000 50  0000 C CNN
F 3 "" H 7300 1000 50  0000 C CNN
	1    7300 1000
	1    0    0    -1  
$EndComp
$Comp
L 4028 U?
U 1 1 58C29638
P 3800 3500
F 0 "U?" H 3800 3500 50  0000 C CNN
F 1 "4028" H 3750 3200 50  0000 C CNN
F 2 "" H 3800 3500 60  0001 C CNN
F 3 "" H 3800 3500 60  0001 C CNN
	1    3800 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 3050 4600 3050
Wire Wire Line
	4400 3150 4750 3150
Wire Wire Line
	4750 3150 4750 1950
Wire Wire Line
	4400 3250 4900 3250
Wire Wire Line
	4900 3250 4900 2550
Wire Wire Line
	4900 3450 4900 4300
Wire Wire Line
	4900 3450 4400 3450
Wire Wire Line
	4750 3550 4750 4950
Wire Wire Line
	4750 3550 4400 3550
Wire Wire Line
	4600 3650 4600 5600
Wire Wire Line
	4600 3650 4400 3650
Connection ~ 6500 1350
Wire Wire Line
	6500 1100 6500 5600
Wire Wire Line
	6500 5600 6150 5600
$Comp
L HT #PWR?
U 1 1 58C2D61A
P 6500 800
F 0 "#PWR?" H 6500 920 50  0001 C CNN
F 1 "HT" H 6500 890 50  0000 C CNN
F 2 "" H 6500 800 50  0000 C CNN
F 3 "" H 6500 800 50  0000 C CNN
	1    6500 800 
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 1950 5650 1950
Wire Wire Line
	4900 2550 5650 2550
Wire Wire Line
	4600 3050 4600 1350
Wire Wire Line
	4600 1350 5700 1350
Wire Wire Line
	4900 4300 5550 4300
Wire Wire Line
	4750 4950 5550 4950
Wire Wire Line
	4600 5600 5550 5600
Wire Wire Line
	5550 5400 5300 5400
Wire Wire Line
	5300 5400 5300 1050
$Comp
L R R16
U 1 1 58C30B4E
P 5300 900
F 0 "R16" V 5380 900 50  0000 C CNN
F 1 "150" V 5300 900 50  0000 C CNN
F 2 "" V 5230 900 50  0000 C CNN
F 3 "" H 5300 900 50  0000 C CNN
	1    5300 900 
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR?
U 1 1 58C30D30
P 5300 750
F 0 "#PWR?" H 5300 600 50  0001 C CNN
F 1 "VCC" H 5300 900 50  0000 C CNN
F 2 "" H 5300 750 50  0000 C CNN
F 3 "" H 5300 750 50  0000 C CNN
	1    5300 750 
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 1150 5300 1150
Connection ~ 5300 1150
Wire Wire Line
	5650 1750 5300 1750
Connection ~ 5300 1750
Wire Wire Line
	5650 2350 5300 2350
Connection ~ 5300 2350
Wire Wire Line
	5550 4100 5300 4100
Connection ~ 5300 4100
Wire Wire Line
	5550 4750 5300 4750
Connection ~ 5300 4750
$EndSCHEMATC
