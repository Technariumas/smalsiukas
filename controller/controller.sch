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
$Descr A2 23386 16535
encoding utf-8
Sheet 1 10
Title ""
Date ""
Rev ""
Comp "Albertas Mickėnas"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 16600 4350 1650 2700
U 58BFEF8B
F0 "Takeover" 60
F1 "takeover.sch" 60
F2 "GAZ_SW_NC_HACK" I L 16600 4550 60 
F3 "GAZ_SW_NO_HACK" I L 16600 4650 60 
F4 "GAZ_POT_V_HACK" I L 16600 4750 60 
F5 "GAZ_POT_GND_HACK" I L 16600 4950 60 
F6 "GAZ_POT_WIPER_HACK" I L 16600 4850 60 
F7 "GAZ_SW_COMMON" I L 16600 4450 60 
F8 "DIR_SW_FWD_HACK" I L 16600 5400 60 
F9 "DIR_SW_BACK_HACK" I L 16600 5500 60 
F10 "HORN_SW_HACK" I L 16600 5600 60 
F11 "PARKING_HACK" I L 16600 5700 60 
F12 "STEERING_COMMON" I L 16600 5300 60 
F13 "VCC" I R 18250 4500 60 
F14 "KEY_HOT_HACK" I L 16600 5800 60 
F15 "KEY_COLD_HACK" I L 16600 5900 60 
F16 "LIGHTS_COMMON" I L 16600 6000 60 
F17 "LIGHTS_HACK" I L 16600 6100 60 
F18 "MIRGALKE_HACK" I L 16600 6200 60 
F19 "SEAT_GND_HACK" I L 16600 6300 60 
F20 "SEAT_HACK" I L 16600 6400 60 
F21 "AUX_HACK" I L 16600 6500 60 
F22 "AUX_COMMON" I L 16600 6600 60 
F23 "TAKEOVER" I L 16600 6950 60 
$EndSheet
Wire Wire Line
	16600 4450 16400 4450
Wire Wire Line
	16400 4450 16400 3500
Wire Wire Line
	16400 3500 15200 3500
Wire Wire Line
	16600 4550 16300 4550
Wire Wire Line
	16300 4550 16300 3600
Wire Wire Line
	16300 3600 15200 3600
Wire Wire Line
	15200 3700 16200 3700
Wire Wire Line
	16200 3700 16200 4650
Wire Wire Line
	16200 4650 16600 4650
Wire Wire Line
	16600 4750 16100 4750
Wire Wire Line
	16100 4750 16100 4000
Wire Wire Line
	16100 4000 15200 4000
Wire Wire Line
	16600 4850 16000 4850
Wire Wire Line
	16000 4850 16000 4100
Wire Wire Line
	16000 4100 15200 4100
Wire Wire Line
	16600 4950 15900 4950
Wire Wire Line
	15900 4950 15900 4200
Wire Wire Line
	15900 4200 15200 4200
$Sheet
S 8800 3450 1650 1250
U 58C0456C
F0 "RS485" 60
F1 "rs485-interface.sch" 60
F2 "RX" I R 10450 4200 60 
F3 "TX" I R 10450 4100 60 
F4 "~RE" I R 10450 4000 60 
F5 "+5V" I R 10450 3600 60 
F6 "GND" I R 10450 4550 60 
F7 "VCC_HIGH" I R 10450 3500 60 
$EndSheet
$Sheet
S 5450 3450 1750 1250
U 58C0B277
F0 "Power" 60
F1 "power.sch" 60
F2 "+5V" I R 7200 3750 60 
F3 "VCC_HIGH" I R 7200 3550 60 
F4 "GND" I L 5450 4600 60 
$EndSheet
Wire Wire Line
	7200 3550 7350 3550
Wire Wire Line
	7350 3550 7350 2800
Wire Wire Line
	7350 2800 18500 2800
Wire Wire Line
	10850 2800 10850 3500
Wire Wire Line
	10850 3500 10450 3500
Wire Wire Line
	13050 3550 13200 3550
$Sheet
S 16600 8000 1750 600 
U 58C0E33B
F0 "Steering wheel feedback" 60
F1 "steering-wheel-feedback.sch" 60
F2 "WHEEL_POS_ANALOG" I L 16600 8150 60 
F3 "GND" I L 16600 8400 60 
$EndSheet
Wire Wire Line
	7200 3750 7550 3750
Wire Wire Line
	7550 3750 7550 3000
Wire Wire Line
	7550 3000 10950 3000
Wire Wire Line
	10950 3000 10950 3600
Wire Wire Line
	10950 3600 10450 3600
Wire Wire Line
	18500 2800 18500 11700
Wire Wire Line
	18500 4500 18250 4500
$Sheet
S 13200 3400 2000 1650
U 58BFFDED
F0 "GasHack" 60
F1 "gaz-hack.sch" 60
F2 "PEDAL_POT_VCC" I R 15200 4000 60 
F3 "PEDAL_POT_GND" I R 15200 4200 60 
F4 "PEDAL_POT_WIPER" I R 15200 4100 60 
F5 "~GAZ_SPEED1_PWR" I L 13200 4000 60 
F6 "VCC" I L 13200 3550 60 
F7 "PEDAL_SWITCH_COMMON" I R 15200 3500 60 
F8 "PEDAL_SWITCH_NC" I R 15200 3600 60 
F9 "PEDAL_SWITCH_NO" I R 15200 3700 60 
F10 "~GAZ_SPEED2_PWR" I L 13200 4100 60 
F11 "~GAZ_ENABLE_PWR" I L 13200 4200 60 
$EndSheet
$Sheet
S 16600 9400 1750 1200
U 58C18A52
F0 "Stepper Interface" 60
F1 "stepper-interface.sch" 60
$EndSheet
$Sheet
S 16600 11500 1750 1250
U 58C18ABD
F0 "Break H bridge" 60
F1 "break-h-bridge.sch" 60
F2 "VCC" I R 18350 11700 60 
F3 "LINEAR_ACTUATOR_ENABLE" I L 16600 12100 60 
F4 "LINEAR_ACTUATOR_DIRECTION" I L 16600 12200 60 
F5 "HBRIDGE_CURRENT_ANALOG" I L 16600 12500 60 
$EndSheet
$Sheet
S 13200 5200 2450 1850
U 58C7AB08
F0 "ControlHacks" 60
F1 "control-hacks.sch" 60
F2 "SEAT_GND_HACK" I R 15650 6300 60 
F3 "SEAT_HACK" I R 15650 6400 60 
F4 "AUX_HACK" I R 15650 6500 60 
F5 "DIR_SW_FWD_HACK" I R 15650 5400 60 
F6 "DIR_SW_BACK_HACK" I R 15650 5500 60 
F7 "HORN_SW_HACK" I R 15650 5600 60 
F8 "PARKING_HACK" I R 15650 5700 60 
F9 "KEY_HOT_HACK" I R 15650 5800 60 
F10 "KEY_COLD_HACK" I R 15650 5900 60 
F11 "LIGHTS_HACK" I R 15650 6100 60 
F12 "MIRGALKE_HACK" I R 15650 6200 60 
F13 "STEERING_COMMON" I R 15650 5300 60 
F14 "LIGHTS_COMMON" I R 15650 6000 60 
F15 "AUX_COMMON" I R 15650 6600 60 
F16 "~DIR_FWD_ENABLE_PWR" I L 13200 5800 60 
F17 "~DIR_BACK_ENABLE_PWR" I L 13200 5900 60 
F18 "~HORN_ENABLE_PWR" I L 13200 6000 60 
F19 "~PARKING_DISABLE_PWR" I L 13200 6100 60 
F20 "VCC" I L 13200 5350 60 
F21 "~KEY_ENABLE_PWR" I L 13200 6200 60 
F22 "~SEAT_ENABLE_PWR" I L 13200 6300 60 
F23 "~LIGHTS_ENABLE_PWR" I L 13200 6400 60 
F24 "~MIRGALKE_ENABLE_PWR" I L 13200 6500 60 
F25 "~AUX_ENABLE_PWR" I L 13200 6600 60 
$EndSheet
Wire Wire Line
	13050 5350 13200 5350
Connection ~ 13050 3550
Wire Wire Line
	15650 5300 16600 5300
Wire Wire Line
	15650 5400 16600 5400
Wire Wire Line
	15650 5500 16600 5500
Wire Wire Line
	15650 5600 16600 5600
Wire Wire Line
	15650 5700 16600 5700
Wire Wire Line
	16600 5800 15650 5800
Wire Wire Line
	15650 5900 16600 5900
Wire Wire Line
	16600 6000 15650 6000
Wire Wire Line
	15650 6100 16600 6100
Wire Wire Line
	16600 6200 15650 6200
Wire Wire Line
	15650 6300 16600 6300
Wire Wire Line
	16600 6400 15650 6400
Wire Wire Line
	15650 6500 16600 6500
Wire Wire Line
	16600 6600 15650 6600
Wire Wire Line
	11350 6200 11450 6200
Wire Wire Line
	11450 6200 11450 4000
Wire Wire Line
	11450 4000 13200 4000
Wire Wire Line
	13200 4100 11550 4100
Wire Wire Line
	11550 4100 11550 6300
Wire Wire Line
	11550 6300 11350 6300
Wire Wire Line
	11350 6400 11650 6400
Wire Wire Line
	11650 6400 11650 4200
Wire Wire Line
	11650 4200 13200 4200
Wire Wire Line
	11350 6600 12150 6600
Wire Wire Line
	12150 6600 12150 5800
Wire Wire Line
	12150 5800 13200 5800
Wire Wire Line
	11350 6700 12250 6700
Wire Wire Line
	12250 6700 12250 5900
Wire Wire Line
	12250 5900 13200 5900
Wire Wire Line
	11350 6800 12350 6800
Wire Wire Line
	12350 6800 12350 6000
Wire Wire Line
	12350 6000 13200 6000
Wire Wire Line
	11350 6900 12450 6900
Wire Wire Line
	12450 6900 12450 6100
Wire Wire Line
	12450 6100 13200 6100
Wire Wire Line
	11350 7000 12550 7000
Wire Wire Line
	12550 7000 12550 6200
Wire Wire Line
	12550 6200 13200 6200
Wire Wire Line
	13200 6300 12650 6300
Wire Wire Line
	12650 6300 12650 7100
Wire Wire Line
	12650 7100 11350 7100
Wire Wire Line
	13200 6400 12750 6400
Wire Wire Line
	12750 6400 12750 7200
Wire Wire Line
	12750 7200 11350 7200
Wire Wire Line
	13200 6500 12850 6500
Wire Wire Line
	12850 6500 12850 7300
Wire Wire Line
	12850 7300 11350 7300
Wire Wire Line
	13200 6600 12950 6600
Wire Wire Line
	12950 6600 12950 7400
Wire Wire Line
	12950 7400 11350 7400
$Sheet
S 9100 5950 2250 2200
U 58CDA631
F0 "Control Switching" 60
F1 "ctrl-switching.sch" 60
F2 "~DIR_FWD_ENABLE_PWR" I R 11350 6600 60 
F3 "~DIR_BACK_ENABLE_PWR" I R 11350 6700 60 
F4 "~HORN_ENABLE_PWR" I R 11350 6800 60 
F5 "~PARKING_DISABLE_PWR" I R 11350 6900 60 
F6 "~KEY_ENABLE_PWR" I R 11350 7000 60 
F7 "~SEAT_ENABLE_PWR" I R 11350 7100 60 
F8 "~LIGHTS_ENABLE_PWR" I R 11350 7200 60 
F9 "~MIRGALKE_ENABLE_PWR" I R 11350 7300 60 
F10 "~AUX_ENABLE_PWR" I R 11350 7400 60 
F11 "~GAZ_ENABLE_PWR" I R 11350 6400 60 
F12 "~GAZ_SPEED2_PWR" I R 11350 6300 60 
F13 "~GAZ_SPEED1_PWR" I R 11350 6200 60 
F14 "DIR_FWD_ENABLE" I L 9100 6800 60 
F15 "DIR_BACK_ENABLE" I L 9100 6900 60 
F16 "VCC" I L 9100 6100 60 
F17 "GAZ_ENABLE" I L 9100 6700 60 
F18 "GAZ_SPEED2" I L 9100 6600 60 
F19 "GAZ_SPEED1" I L 9100 6500 60 
F20 "KEY_ENABLE" I L 9100 7000 60 
F21 "SPI_DATA" I L 9100 7300 60 
F22 "SPI_CLK" I L 9100 7400 60 
F23 "SPI_LATCH" I L 9100 7500 60 
F24 "+5V" I L 9100 6200 60 
$EndSheet
Text Notes 13350 4750 0    60   ~ 0
TODO: pakeisti kaip reikia Eugenijui\n
$Comp
L ATMEGA328P-AU U5
U 1 1 58D08F5A
P 5550 7250
F 0 "U5" H 5600 8617 50  0000 C CNN
F 1 "ATMEGA328P-AU" H 5600 8526 50  0000 C CNN
F 2 "TQFP32" H -4050 2800 50  0001 C CIN
F 3 "" H -4050 2800 50  0001 C CNN
	1    5550 7250
	1    0    0    -1  
$EndComp
Wire Wire Line
	9100 6100 8600 6100
Wire Wire Line
	8600 6100 8600 2800
Connection ~ 8600 2800
Connection ~ 10850 2800
Wire Wire Line
	13050 2800 13050 5350
Connection ~ 13050 2800
Wire Wire Line
	9100 6200 8500 6200
Wire Wire Line
	8500 6200 8500 3000
Connection ~ 8500 3000
Wire Wire Line
	18500 11700 18350 11700
Connection ~ 18500 4500
Text Notes 11150 10150 0    60   ~ 0
TODO:\nX P mosfetai greičio hackui\n* gecko interface\nX elektromagneto interface\n* reguliatoriai\n* low battery sense?
$EndSCHEMATC
