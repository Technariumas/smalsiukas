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
Sheet 4 10
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
L CONN_01X02 J22
U 1 1 58C0B3B4
P 2400 3500
F 0 "J22" H 2319 3225 50  0000 C CNN
F 1 "BATT" H 2319 3316 50  0000 C CNN
F 2 "smalsiukas-footpints:TerminalBlock_5.08-2pol" H 900 250 50  0001 C CNN
F 3 "" H 900 250 50  0001 C CNN
F 4 "?" H 2400 3500 60  0001 C CNN "PartNo"
F 5 "?" H 2400 3500 60  0001 C CNN "Manufacturer"
F 6 "?" H 2400 3500 60  0001 C CNN "Distributor"
	1    2400 3500
	-1   0    0    1   
$EndComp
Text HLabel 8550 3450 2    60   Input ~ 0
+5V
Text HLabel 5000 3150 2    60   Input ~ 0
VCC_HIGH
Text HLabel 8550 4250 2    60   Input ~ 0
GND
$Comp
L Fuse F2
U 1 1 58C0B526
P 2750 3450
F 0 "F2" V 2947 3450 50  0000 C CNN
F 1 "Fuse" V 2856 3450 50  0000 C CNN
F 2 "smalsiukas-footpints:Automotive-Fuse-Holder" V -270 1800 50  0001 C CNN
F 3 "" H -200 1800 50  0001 C CNN
F 4 "?" H 2750 3450 60  0001 C CNN "PartNo"
F 5 "?" H 2750 3450 60  0001 C CNN "Manufacturer"
F 6 "1586596" H 2750 3450 60  0001 C CNN "Distributor"
	1    2750 3450
	0    -1   -1   0   
$EndComp
Text HLabel 2600 3800 2    60   Input ~ 0
GND
Wire Wire Line
	2600 3800 2600 3550
Wire Wire Line
	5000 3150 5000 3450
$Comp
L VCC #PWR15
U 1 1 58C97562
P 5000 3150
F 0 "#PWR15" H 5000 3000 60  0001 C CNN
F 1 "VCC" H 5000 3300 60  0000 C CNN
F 2 "" H 5000 3150 60  0000 C CNN
F 3 "" H 5000 3150 60  0000 C CNN
	1    5000 3150
	1    0    0    -1  
$EndComp
Connection ~ 6900 3450
$Comp
L C C38
U 1 1 58C97572
P 6900 3600
F 0 "C38" H 6950 3700 50  0000 L CNN
F 1 "1u" H 6950 3500 50  0000 L CNN
F 2 "Capacitors_SMD:C_1210_HandSoldering" H 6938 3450 30  0001 C CNN
F 3 "" H 6900 3600 60  0000 C CNN
F 4 "?" H 6900 3600 60  0001 C CNN "PartNo"
F 5 "?" H 6900 3600 60  0001 C CNN "Manufacturer"
F 6 "2320928" H 6900 3600 60  0001 C CNN "Distributor"
	1    6900 3600
	-1   0    0    -1  
$EndComp
$Comp
L C C39
U 1 1 58C97574
P 8100 3600
F 0 "C39" H 8150 3700 50  0000 L CNN
F 1 "1u" H 8150 3500 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 8138 3450 30  0001 C CNN
F 3 "" H 8100 3600 60  0000 C CNN
	1    8100 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 3450 8550 3450
Connection ~ 7300 4250
Wire Wire Line
	8100 4250 8100 3750
Wire Wire Line
	8100 3450 8100 3300
$Comp
L Q_PMOS_GDS Q8
U 1 1 58C97575
P 4550 3550
F 0 "Q8" V 4878 3550 50  0000 C CNN
F 1 "NDT2955" V 4787 3550 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:TO-252-2Lead" V 4950 3700 29  0000 C CNN
F 3 "" H 6850 2800 60  0000 C CNN
F 4 "IRFR5410TRPBF" H 4550 3550 60  0001 C CNN "PartNo"
F 5 "INFINEON" H 4550 3550 60  0001 C CNN "Manufacturer"
F 6 "2468040" H 4550 3550 60  0001 C CNN "Distributor"
	1    4550 3550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4750 3450 5150 3450
Wire Wire Line
	5450 3450 6900 3450
Connection ~ 6900 4250
Connection ~ 4550 4250
Wire Wire Line
	3850 4250 8550 4250
Wire Wire Line
	6900 3750 6900 4250
Wire Wire Line
	7300 3750 7300 4250
$Comp
L +5V #PWR17
U 1 1 58C9757F
P 8100 3300
F 0 "#PWR17" H 2150 1950 50  0001 C CNN
F 1 "+5V" H 8115 3473 50  0000 C CNN
F 2 "" H 2150 2100 50  0001 C CNN
F 3 "" H 2150 2100 50  0001 C CNN
	1    8100 3300
	1    0    0    -1  
$EndComp
$Comp
L CP1 C37
U 1 1 58C97580
P 6000 3600
F 0 "C37" H 6115 3646 50  0000 L CNN
F 1 "470u" H 6115 3555 50  0000 L CNN
F 2 "Capacitors_ThroughHole:CP_Radial_D16.0mm_P7.50mm" H 850 1850 50  0001 C CNN
F 3 "" H 850 1850 50  0001 C CNN
F 4 "ECA2AAM471X" H 6000 3600 60  0001 C CNN "PartNo"
F 5 "PANASONIC" H 6000 3600 60  0001 C CNN "Manufacturer"
F 6 "8767696" H 6000 3600 60  0001 C CNN "Distributor"
	1    6000 3600
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6000 3750 6000 4250
Connection ~ 6000 4250
Connection ~ 6000 3450
$Comp
L R R60
U 1 1 58C97582
P 4550 3900
F 0 "R60" V 4630 3900 50  0000 C CNN
F 1 "10k" V 4557 3901 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 4480 3900 30  0001 C CNN
F 3 "" H 4550 3900 30  0000 C CNN
F 4 "?" H 4550 3900 60  0001 C CNN "PartNo"
F 5 "?" H 4550 3900 60  0001 C CNN "Manufacturer"
F 6 "?" H 4550 3900 60  0001 C CNN "Distributor"
	1    4550 3900
	-1   0    0    1   
$EndComp
Wire Wire Line
	4550 4050 4550 4250
Wire Wire Line
	4550 3750 5000 3750
Connection ~ 4550 3750
Connection ~ 7700 3450
$Comp
L D_TVS_ALT D34
U 1 1 58C97583
P 3850 3850
F 0 "D34" V 3804 3929 50  0000 L CNN
F 1 "D_TVS_ALT" V 3895 3929 50  0001 L CNN
F 2 "Diodes_SMD:Diode-SMC_Handsoldering" H 2100 2450 50  0001 C CNN
F 3 "" H 2100 2450 50  0001 C CNN
F 4 "?" H 3850 3850 60  0001 C CNN "PartNo"
F 5 "WURTH" H 3850 3850 60  0001 C CNN "Manufacturer"
F 6 "2536498" H 3850 3850 60  0001 C CNN "Distributor"
	1    3850 3850
	0    -1   1    0   
$EndComp
Wire Wire Line
	3850 4000 3850 4250
$Comp
L R R61
U 1 1 58C97584
P 5300 3450
F 0 "R61" V 5380 3450 50  0000 C CNN
F 1 "10" V 5307 3451 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 5230 3450 30  0001 C CNN
F 3 "" H 5300 3450 30  0000 C CNN
F 4 "?" H 5300 3450 60  0001 C CNN "PartNo"
F 5 "?" H 5300 3450 60  0001 C CNN "Manufacturer"
F 6 "1738932" H 5300 3450 60  0001 C CNN "Distributor"
	1    5300 3450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2900 3450 4350 3450
Connection ~ 3850 3450
$Comp
L D_Zener D53
U 1 1 58C97585
P 5650 3800
F 0 "D53" V 5604 3879 50  0000 L CNN
F 1 "16V" V 5695 3879 50  0000 L CNN
F 2 "Diodes_SMD:D_SMB_Handsoldering" H 350 2200 50  0001 C CNN
F 3 "" H 350 2200 50  0001 C CNN
F 4 "1SMB5930BT3G" H 5650 3800 60  0001 C CNN "PartNo"
F 5 "ON SEMI" H 5650 3800 60  0001 C CNN "Manufacturer"
F 6 "1431172" H 5650 3800 60  0001 C CNN "Distributor"
	1    5650 3800
	0    1    1    0   
$EndComp
Wire Wire Line
	5650 3650 5650 3450
Connection ~ 5650 3450
Wire Wire Line
	5650 3950 5650 4250
$Comp
L C C36
U 1 1 58C97586
P 4200 3850
F 0 "C36" H 4250 3950 50  0000 L CNN
F 1 "1u" H 4250 3750 50  0000 L CNN
F 2 "Capacitors_SMD:C_1210_HandSoldering" H 4238 3700 30  0001 C CNN
F 3 "" H 4200 3850 60  0000 C CNN
F 4 "?" H 4200 3850 60  0001 C CNN "PartNo"
F 5 "?" H 4200 3850 60  0001 C CNN "Manufacturer"
F 6 "2320928" H 4200 3850 60  0001 C CNN "Distributor"
	1    4200 3850
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4200 4000 4200 4250
Connection ~ 4200 4250
Wire Wire Line
	4200 3700 4200 3450
Connection ~ 4200 3450
$Comp
L LED_ALT D55
U 1 1 58C9758A
P 8550 3950
F 0 "D55" V 8588 3832 50  0000 R CNN
F 1 "GREEN" V 8497 3832 50  0000 R CNN
F 2 "LEDs:LED_D5.0mm" H 4400 300 50  0001 C CNN
F 3 "" H 4400 300 50  0001 C CNN
F 4 "?" H 8550 3950 60  0001 C CNN "PartNo"
F 5 "?" H 8550 3950 60  0001 C CNN "Manufacturer"
F 6 "?" H 8550 3950 60  0001 C CNN "Distributor"
	1    8550 3950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8550 4250 8550 4100
Connection ~ 8100 4250
$Comp
L R R62
U 1 1 58C9758B
P 8550 3650
F 0 "R62" V 8630 3650 50  0000 C CNN
F 1 "330" V 8557 3651 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 8480 3650 30  0001 C CNN
F 3 "" H 8550 3650 30  0000 C CNN
	1    8550 3650
	-1   0    0    -1  
$EndComp
Connection ~ 8100 3450
Wire Wire Line
	8550 3450 8550 3500
Connection ~ 5000 3450
$Comp
L Mounting_Hole MK5
U 1 1 58C9758E
P 9700 5500
F 0 "MK5" H 9800 5546 50  0000 L CNN
F 1 "Mounting_Hole" H 9800 5455 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3" H 2850 3850 50  0001 C CNN
F 3 "" H 2850 3850 50  0001 C CNN
F 4 "?" H 9700 5500 60  0001 C CNN "PartNo"
F 5 "?" H 9700 5500 60  0001 C CNN "Manufacturer"
F 6 "?" H 9700 5500 60  0001 C CNN "Distributor"
	1    9700 5500
	1    0    0    -1  
$EndComp
$Comp
L Mounting_Hole MK6
U 1 1 58C9758F
P 9700 5700
F 0 "MK6" H 9800 5746 50  0000 L CNN
F 1 "Mounting_Hole" H 9800 5655 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3" H 2850 4050 50  0001 C CNN
F 3 "" H 2850 4050 50  0001 C CNN
F 4 "?" H 9700 5700 60  0001 C CNN "PartNo"
F 5 "?" H 9700 5700 60  0001 C CNN "Manufacturer"
F 6 "?" H 9700 5700 60  0001 C CNN "Distributor"
	1    9700 5700
	1    0    0    -1  
$EndComp
$Comp
L Mounting_Hole MK7
U 1 1 58C97590
P 9700 5900
F 0 "MK7" H 9800 5946 50  0000 L CNN
F 1 "Mounting_Hole" H 9800 5855 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3" H 2850 4250 50  0001 C CNN
F 3 "" H 2850 4250 50  0001 C CNN
F 4 "?" H 9700 5900 60  0001 C CNN "PartNo"
F 5 "?" H 9700 5900 60  0001 C CNN "Manufacturer"
F 6 "?" H 9700 5900 60  0001 C CNN "Distributor"
	1    9700 5900
	1    0    0    -1  
$EndComp
$Comp
L Mounting_Hole MK8
U 1 1 58C97591
P 9700 6100
F 0 "MK8" H 9800 6146 50  0000 L CNN
F 1 "Mounting_Hole" H 9800 6055 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3" H 2850 4450 50  0001 C CNN
F 3 "" H 2850 4450 50  0001 C CNN
F 4 "?" H 9700 6100 60  0001 C CNN "PartNo"
F 5 "?" H 9700 6100 60  0001 C CNN "Manufacturer"
F 6 "?" H 9700 6100 60  0001 C CNN "Distributor"
	1    9700 6100
	1    0    0    -1  
$EndComp
$Comp
L D D54
U 1 1 58C97593
P 7300 3050
F 0 "D54" H 7300 3266 50  0000 C CNN
F 1 "D" H 7300 3175 50  0000 C CNN
F 2 "Diodes_SMD:D_SOD-123" H 3000 2150 50  0001 C CNN
F 3 "" H 3000 2150 50  0001 C CNN
F 4 "?" H 7300 3050 60  0001 C CNN "PartNo"
F 5 "?" H 7300 3050 60  0001 C CNN "Manufacturer"
F 6 "?" H 7300 3050 60  0001 C CNN "Distributor"
	1    7300 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 3050 7700 3050
Wire Wire Line
	7150 3050 6900 3050
Wire Wire Line
	6900 3050 6900 3450
Connection ~ 2900 3450
$Comp
L LM7805CT U5
U 1 1 58C989E8
P 7300 3500
F 0 "U5" H 7300 3817 50  0000 C CNN
F 1 "LM7805CT" H 7300 3726 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:TO-252-2Lead" H 7300 3600 50  0001 C CIN
F 3 "" H 7300 3500 50  0001 C CNN
F 4 "KA7805ERTF" H 7300 3500 60  0001 C CNN "PartNo"
F 5 "FAIRCHILD" H 7300 3500 60  0001 C CNN "Manufacturer"
F 6 "2102585" H 7300 3500 60  0001 C CNN "Distributor"
	1    7300 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 3050 7700 3450
$Comp
L D_Zener D52
U 1 1 58C99EB4
P 5000 3600
F 0 "D52" V 4954 3679 50  0000 L CNN
F 1 "16V" V 5045 3679 50  0000 L CNN
F 2 "Diodes_SMD:D_SMB_Handsoldering" H -300 2000 50  0001 C CNN
F 3 "" H -300 2000 50  0001 C CNN
F 4 "1SMB5930BT3G" H 5000 3600 60  0001 C CNN "PartNo"
F 5 "ON SEMI" H 5000 3600 60  0001 C CNN "Manufacturer"
F 6 "1431172" H 5000 3600 60  0001 C CNN "Distributor"
	1    5000 3600
	0    1    1    0   
$EndComp
Connection ~ 5650 4250
$Comp
L GND #PWR16
U 1 1 58CA16AA
P 6000 4250
F 0 "#PWR16" H 6000 4000 50  0001 C CNN
F 1 "GND" H 6005 4077 50  0000 C CNN
F 2 "" H 6000 4250 50  0001 C CNN
F 3 "" H 6000 4250 50  0001 C CNN
	1    6000 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 3700 3850 3450
Text Notes 2400 3150 0    60   ~ 0
Saugikliai: 2137122\n
$Comp
L LM7805CT U16
U 1 1 58CC5716
P 6950 5150
F 0 "U16" H 6950 5467 50  0000 C CNN
F 1 "LM7805CT" H 6950 5376 50  0000 C CNN
F 2 "TO_SOT_Packages_THT:TO-220_Vertical" H 6950 5250 50  0001 C CIN
F 3 "" H 6950 5150 50  0001 C CNN
F 4 "OKI-78SR-5/1.5-W36-C" H 6950 5150 60  0001 C CNN "PartNo"
F 5 "MURATA" H 6950 5150 60  0001 C CNN "Manufacturer"
F 6 "2102101" H 6950 5150 60  0001 C CNN "Distributor"
	1    6950 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 5100 6550 3450
Connection ~ 6550 3450
Wire Wire Line
	6350 4250 6350 5400
Wire Wire Line
	6350 5400 6950 5400
Connection ~ 6350 4250
Wire Wire Line
	7350 5100 8550 5100
Text HLabel 8550 5100 2    60   Input ~ 0
+5V_DIRTY
Text Notes 6100 5550 0    60   ~ 0
FIX: connect U16 before R61 s R61 dissipates to much power!
$EndSCHEMATC
