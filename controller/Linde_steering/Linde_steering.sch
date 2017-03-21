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
LIBS:Linde_steering-cache
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
L TL072 U2
U 1 1 58D117AB
P 7450 5250
F 0 "U2" H 7450 5450 50  0000 L CNN
F 1 "TL072" H 7450 5050 50  0000 L CNN
F 2 "SMD_Packages:SOIC-8-N" H 7450 5250 50  0000 C CNN
F 3 "" H 7450 5250 50  0000 C CNN
	1    7450 5250
	1    0    0    -1  
$EndComp
$Comp
L TL072 U2
U 2 1 58D1183C
P 7450 3950
F 0 "U2" H 7450 4150 50  0000 L CNN
F 1 "TL072" H 7450 3750 50  0000 L CNN
F 2 "SMD_Packages:SOIC-8-N" H 7450 3950 50  0000 C CNN
F 3 "" H 7450 3950 50  0000 C CNN
	2    7450 3950
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR01
U 1 1 58D1187D
P 7350 4850
F 0 "#PWR01" H 7350 4700 50  0001 C CNN
F 1 "VCC" H 7350 5000 50  0000 C CNN
F 2 "" H 7350 4850 50  0000 C CNN
F 3 "" H 7350 4850 50  0000 C CNN
	1    7350 4850
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR02
U 1 1 58D118C3
P 7350 3550
F 0 "#PWR02" H 7350 3400 50  0001 C CNN
F 1 "VCC" H 7350 3700 50  0000 C CNN
F 2 "" H 7350 3550 50  0000 C CNN
F 3 "" H 7350 3550 50  0000 C CNN
	1    7350 3550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 58D118DD
P 7350 4250
F 0 "#PWR03" H 7350 4000 50  0001 C CNN
F 1 "GND" H 7350 4100 50  0000 C CNN
F 2 "" H 7350 4250 50  0000 C CNN
F 3 "" H 7350 4250 50  0000 C CNN
	1    7350 4250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 58D11945
P 7350 5550
F 0 "#PWR04" H 7350 5300 50  0001 C CNN
F 1 "GND" H 7350 5400 50  0000 C CNN
F 2 "" H 7350 5550 50  0000 C CNN
F 3 "" H 7350 5550 50  0000 C CNN
	1    7350 5550
	1    0    0    -1  
$EndComp
$Comp
L D_Zener D2
U 1 1 58D11987
P 8250 5550
F 0 "D2" H 8250 5650 50  0000 C CNN
F 1 "6V8" H 8250 5450 50  0000 C CNN
F 2 "Diodes_SMD:D_SMA_Handsoldering" H 8250 5550 50  0000 C CNN
F 3 "" H 8250 5550 50  0000 C CNN
	1    8250 5550
	0    1    1    0   
$EndComp
$Comp
L D_Zener D1
U 1 1 58D119FC
P 8250 4200
F 0 "D1" H 8250 4300 50  0000 C CNN
F 1 "6V8" H 8250 4100 50  0000 C CNN
F 2 "Diodes_SMD:D_SMA_Handsoldering" H 8250 4200 50  0000 C CNN
F 3 "" H 8250 4200 50  0000 C CNN
	1    8250 4200
	0    1    1    0   
$EndComp
$Comp
L GND #PWR05
U 1 1 58D11A91
P 8250 4350
F 0 "#PWR05" H 8250 4100 50  0001 C CNN
F 1 "GND" H 8250 4200 50  0000 C CNN
F 2 "" H 8250 4350 50  0000 C CNN
F 3 "" H 8250 4350 50  0000 C CNN
	1    8250 4350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 58D11AA8
P 8250 5700
F 0 "#PWR06" H 8250 5450 50  0001 C CNN
F 1 "GND" H 8250 5550 50  0000 C CNN
F 2 "" H 8250 5700 50  0000 C CNN
F 3 "" H 8250 5700 50  0000 C CNN
	1    8250 5700
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X06 P2
U 1 1 58D11B41
P 9650 4600
F 0 "P2" H 9650 4950 50  0000 C CNN
F 1 "CONN_01X06" V 9750 4600 50  0000 C CNN
F 2 "smalsiukas-footprints:TerminalBlock_5.08-6pol" H 9650 4600 50  0000 C CNN
F 3 "" H 9650 4600 50  0000 C CNN
	1    9650 4600
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR07
U 1 1 58D11C00
P 8800 4200
F 0 "#PWR07" H 8800 4050 50  0001 C CNN
F 1 "VCC" H 8800 4350 50  0000 C CNN
F 2 "" H 8800 4200 50  0000 C CNN
F 3 "" H 8800 4200 50  0000 C CNN
	1    8800 4200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR08
U 1 1 58D11C1A
P 8800 4450
F 0 "#PWR08" H 8800 4200 50  0001 C CNN
F 1 "GND" H 8800 4300 50  0000 C CNN
F 2 "" H 8800 4450 50  0000 C CNN
F 3 "" H 8800 4450 50  0000 C CNN
	1    8800 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	9450 4350 8800 4350
Wire Wire Line
	8800 4350 8800 4200
Wire Wire Line
	9450 4450 8800 4450
Wire Wire Line
	7750 3950 9000 3950
Wire Wire Line
	8950 4550 9450 4550
Wire Wire Line
	8250 4050 8250 3950
Connection ~ 8250 3950
Wire Wire Line
	9000 4650 9450 4650
Wire Wire Line
	8250 5250 8250 5400
Connection ~ 8250 5250
Wire Wire Line
	7350 4850 7350 4950
Wire Wire Line
	7850 5250 7850 4900
Wire Wire Line
	7850 4900 7000 4900
Wire Wire Line
	7000 4900 7000 5350
Wire Wire Line
	7000 5350 7150 5350
Connection ~ 7850 5250
Wire Wire Line
	7850 3950 7850 3600
Wire Wire Line
	7850 3600 7000 3600
Wire Wire Line
	7000 3600 7000 4050
Wire Wire Line
	7000 4050 7150 4050
Connection ~ 7850 3950
Wire Wire Line
	7350 3650 7350 3550
$Comp
L CP C1
U 1 1 58D12123
P 6650 4100
F 0 "C1" H 6675 4200 50  0000 L CNN
F 1 "10uF 35V" H 6675 4000 50  0000 L CNN
F 2 "Capacitors_SMD:CP_Elec_5x5.7" H 6688 3950 50  0000 C CNN
F 3 "" H 6650 4100 50  0000 C CNN
	1    6650 4100
	1    0    0    -1  
$EndComp
$Comp
L CP C2
U 1 1 58D1217C
P 6650 5400
F 0 "C2" H 6675 5500 50  0000 L CNN
F 1 "10uF 35V" H 6675 5300 50  0000 L CNN
F 2 "Capacitors_SMD:CP_Elec_5x5.7" H 6688 5250 50  0000 C CNN
F 3 "" H 6650 5400 50  0000 C CNN
	1    6650 5400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR09
U 1 1 58D12238
P 6650 4250
F 0 "#PWR09" H 6650 4000 50  0001 C CNN
F 1 "GND" H 6650 4100 50  0000 C CNN
F 2 "" H 6650 4250 50  0000 C CNN
F 3 "" H 6650 4250 50  0000 C CNN
	1    6650 4250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR010
U 1 1 58D12258
P 6650 5550
F 0 "#PWR010" H 6650 5300 50  0001 C CNN
F 1 "GND" H 6650 5400 50  0000 C CNN
F 2 "" H 6650 5550 50  0000 C CNN
F 3 "" H 6650 5550 50  0000 C CNN
	1    6650 5550
	1    0    0    -1  
$EndComp
$Comp
L R R7
U 1 1 58D122D1
P 6250 3850
F 0 "R7" V 6330 3850 50  0000 C CNN
F 1 "10k" V 6250 3850 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 6180 3850 50  0000 C CNN
F 3 "" H 6250 3850 50  0000 C CNN
	1    6250 3850
	0    1    1    0   
$EndComp
$Comp
L R R8
U 1 1 58D12408
P 6250 5150
F 0 "R8" V 6330 5150 50  0000 C CNN
F 1 "10k" V 6250 5150 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 6180 5150 50  0000 C CNN
F 3 "" H 6250 5150 50  0000 C CNN
	1    6250 5150
	0    1    1    0   
$EndComp
Wire Wire Line
	6400 3850 7150 3850
Wire Wire Line
	6650 3950 6650 3850
Connection ~ 6650 3850
Wire Wire Line
	6400 5150 7150 5150
Wire Wire Line
	6650 5250 6650 5150
Connection ~ 6650 5150
$Comp
L LTV-827 U1
U 1 1 58D12625
P 4850 4450
F 0 "U1" H 4650 4850 50  0000 L CNN
F 1 "LTV-827" H 4850 4850 50  0000 L CNN
F 2 "SMD_Packages:DIP-8_SMD" H 4650 4100 50  0000 L CIN
F 3 "" H 4850 4350 50  0000 L CNN
	1    4850 4450
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR011
U 1 1 58D12716
P 5450 3500
F 0 "#PWR011" H 5450 3350 50  0001 C CNN
F 1 "VCC" H 5450 3650 50  0000 C CNN
F 2 "" H 5450 3500 50  0000 C CNN
F 3 "" H 5450 3500 50  0000 C CNN
	1    5450 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 3500 5450 4450
Wire Wire Line
	5450 4150 5150 4150
Wire Wire Line
	5450 4450 5150 4450
Connection ~ 5450 4150
$Comp
L R R5
U 1 1 58D127AD
P 5700 4600
F 0 "R5" V 5780 4600 50  0000 C CNN
F 1 "1k" V 5700 4600 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 5630 4600 50  0000 C CNN
F 3 "" H 5700 4600 50  0000 C CNN
	1    5700 4600
	1    0    0    -1  
$EndComp
$Comp
L R R6
U 1 1 58D12844
P 5400 5400
F 0 "R6" V 5480 5400 50  0000 C CNN
F 1 "1k" V 5400 5400 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 5330 5400 50  0000 C CNN
F 3 "" H 5400 5400 50  0000 C CNN
	1    5400 5400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR012
U 1 1 58D12988
P 5400 5550
F 0 "#PWR012" H 5400 5300 50  0001 C CNN
F 1 "GND" H 5400 5400 50  0000 C CNN
F 2 "" H 5400 5550 50  0000 C CNN
F 3 "" H 5400 5550 50  0000 C CNN
	1    5400 5550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR013
U 1 1 58D129B7
P 5700 4750
F 0 "#PWR013" H 5700 4500 50  0001 C CNN
F 1 "GND" H 5700 4600 50  0000 C CNN
F 2 "" H 5700 4750 50  0000 C CNN
F 3 "" H 5700 4750 50  0000 C CNN
	1    5700 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 4350 5700 4350
Wire Wire Line
	5700 3850 5700 4450
Wire Wire Line
	6100 3850 5700 3850
Connection ~ 5700 4350
Wire Wire Line
	5150 4650 5400 4650
Wire Wire Line
	5400 4650 5400 5250
Wire Wire Line
	6100 5150 5400 5150
Connection ~ 5400 5150
$Comp
L R R10
U 1 1 58D13610
P 9250 5750
F 0 "R10" V 9330 5750 50  0000 C CNN
F 1 "2k" V 9250 5750 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 9180 5750 50  0000 C CNN
F 3 "" H 9250 5750 50  0000 C CNN
	1    9250 5750
	1    0    0    -1  
$EndComp
$Comp
L R R9
U 1 1 58D137DD
P 9250 5300
F 0 "R9" V 9330 5300 50  0000 C CNN
F 1 "2k" V 9250 5300 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 9180 5300 50  0000 C CNN
F 3 "" H 9250 5300 50  0000 C CNN
	1    9250 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	9250 5450 9250 5600
$Comp
L GND #PWR014
U 1 1 58D13AD7
P 9250 5900
F 0 "#PWR014" H 9250 5650 50  0001 C CNN
F 1 "GND" H 9250 5750 50  0000 C CNN
F 2 "" H 9250 5900 50  0000 C CNN
F 3 "" H 9250 5900 50  0000 C CNN
	1    9250 5900
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR015
U 1 1 58D13C82
P 9250 5150
F 0 "#PWR015" H 9250 5000 50  0001 C CNN
F 1 "VCC" H 9250 5300 50  0000 C CNN
F 2 "" H 9250 5150 50  0000 C CNN
F 3 "" H 9250 5150 50  0000 C CNN
	1    9250 5150
	1    0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 58D14288
P 4500 4900
F 0 "R4" V 4580 4900 50  0000 C CNN
F 1 "200" V 4500 4900 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 4430 4900 50  0000 C CNN
F 3 "" H 4500 4900 50  0000 C CNN
	1    4500 4900
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 58D14300
P 4250 4900
F 0 "R3" V 4330 4900 50  0000 C CNN
F 1 "200" V 4250 4900 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 4180 4900 50  0000 C CNN
F 3 "" H 4250 4900 50  0000 C CNN
	1    4250 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 4350 4250 4350
Wire Wire Line
	4250 4350 4250 4750
Wire Wire Line
	4500 4750 4500 4650
Wire Wire Line
	4500 4650 4550 4650
$Comp
L CONN_01X06 P1
U 1 1 58D14582
P 2750 5400
F 0 "P1" H 2750 5750 50  0000 C CNN
F 1 "CONN_01X06" V 2850 5400 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x06_Pitch2.54mm" H 2750 5400 50  0000 C CNN
F 3 "" H 2750 5400 50  0000 C CNN
	1    2750 5400
	-1   0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 58D15126
P 9200 3350
F 0 "C3" H 9225 3450 50  0000 L CNN
F 1 "C" H 9225 3250 50  0000 L CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" H 9238 3200 50  0000 C CNN
F 3 "" H 9200 3350 50  0000 C CNN
	1    9200 3350
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR016
U 1 1 58D15289
P 9200 3200
F 0 "#PWR016" H 9200 3050 50  0001 C CNN
F 1 "VCC" H 9200 3350 50  0000 C CNN
F 2 "" H 9200 3200 50  0000 C CNN
F 3 "" H 9200 3200 50  0000 C CNN
	1    9200 3200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR017
U 1 1 58D152CA
P 9200 3500
F 0 "#PWR017" H 9200 3250 50  0001 C CNN
F 1 "GND" H 9200 3350 50  0000 C CNN
F 2 "" H 9200 3500 50  0000 C CNN
F 3 "" H 9200 3500 50  0000 C CNN
	1    9200 3500
	1    0    0    -1  
$EndComp
$Comp
L GNDD #PWR018
U 1 1 58D15B64
P 4250 5850
F 0 "#PWR018" H 4250 5600 50  0001 C CNN
F 1 "GNDD" H 4250 5700 50  0000 C CNN
F 2 "" H 4250 5850 50  0000 C CNN
F 3 "" H 4250 5850 50  0000 C CNN
	1    4250 5850
	1    0    0    -1  
$EndComp
$Comp
L Q_NMOS_GDS Q1
U 1 1 58D15D9E
P 4150 5450
F 0 "Q1" H 4350 5500 50  0000 L CNN
F 1 "Q_NMOS_GDS" H 4350 5400 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 4350 5550 50  0000 C CNN
F 3 "" H 4150 5450 50  0000 C CNN
	1    4150 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 3850 4400 4450
Wire Wire Line
	4400 4150 4550 4150
Wire Wire Line
	4400 4450 4550 4450
Connection ~ 4400 4150
Wire Wire Line
	4250 5650 4250 5850
Wire Wire Line
	4250 5050 4250 5250
Wire Wire Line
	4500 5050 4500 5200
Wire Wire Line
	4500 5200 4250 5200
Connection ~ 4250 5200
$Comp
L R R1
U 1 1 58D16CA8
P 3550 5450
F 0 "R1" V 3630 5450 50  0000 C CNN
F 1 "150" V 3550 5450 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 3480 5450 50  0000 C CNN
F 3 "" H 3550 5450 50  0000 C CNN
	1    3550 5450
	0    1    1    0   
$EndComp
$Comp
L R R2
U 1 1 58D16DCE
P 4000 5700
F 0 "R2" V 4080 5700 50  0000 C CNN
F 1 "100k" V 4000 5700 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 3930 5700 50  0000 C CNN
F 3 "" H 4000 5700 50  0000 C CNN
	1    4000 5700
	0    1    1    0   
$EndComp
Wire Wire Line
	4150 5700 4250 5700
Connection ~ 4250 5700
Wire Wire Line
	3700 5450 3950 5450
Wire Wire Line
	3850 5700 3800 5700
Wire Wire Line
	3800 5700 3800 5450
Connection ~ 3800 5450
Wire Wire Line
	2950 5450 3400 5450
$Comp
L +5V #PWR019
U 1 1 58D17908
P 4400 3850
F 0 "#PWR019" H 4400 3700 50  0001 C CNN
F 1 "+5V" H 4400 3990 50  0000 C CNN
F 2 "" H 4400 3850 50  0000 C CNN
F 3 "" H 4400 3850 50  0000 C CNN
	1    4400 3850
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR020
U 1 1 58D17D00
P 3150 5000
F 0 "#PWR020" H 3150 4850 50  0001 C CNN
F 1 "+5V" H 3150 5140 50  0000 C CNN
F 2 "" H 3150 5000 50  0000 C CNN
F 3 "" H 3150 5000 50  0000 C CNN
	1    3150 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 5150 3150 5150
Wire Wire Line
	3150 5150 3150 5000
$Comp
L GNDD #PWR021
U 1 1 58D17EF1
P 3150 5700
F 0 "#PWR021" H 3150 5450 50  0001 C CNN
F 1 "GNDD" H 3150 5550 50  0000 C CNN
F 2 "" H 3150 5700 50  0000 C CNN
F 3 "" H 3150 5700 50  0000 C CNN
	1    3150 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 5550 3150 5550
Wire Wire Line
	3150 5550 3150 5700
Wire Wire Line
	3150 5450 3150 5450
Wire Wire Line
	7750 5250 8950 5250
Wire Wire Line
	8950 5250 8950 4550
Wire Wire Line
	9000 3950 9000 4650
$Comp
L R R11
U 1 1 58D07019
P 8250 3250
F 0 "R11" V 8330 3250 50  0000 C CNN
F 1 "0R" V 8250 3250 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 8180 3250 50  0000 C CNN
F 3 "" H 8250 3250 50  0000 C CNN
	1    8250 3250
	0    1    1    0   
$EndComp
$Comp
L VCC #PWR022
U 1 1 58D07201
P 8100 3250
F 0 "#PWR022" H 8100 3100 50  0001 C CNN
F 1 "VCC" H 8100 3400 50  0000 C CNN
F 2 "" H 8100 3250 50  0000 C CNN
F 3 "" H 8100 3250 50  0000 C CNN
	1    8100 3250
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR023
U 1 1 58D0724E
P 8400 3250
F 0 "#PWR023" H 8400 3100 50  0001 C CNN
F 1 "VCC" H 8400 3400 50  0000 C CNN
F 2 "" H 8400 3250 50  0000 C CNN
F 3 "" H 8400 3250 50  0000 C CNN
	1    8400 3250
	1    0    0    -1  
$EndComp
$EndSCHEMATC