EESchema Schematic File Version 4
LIBS:JayKey1-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 3
Title "USB Schematic"
Date ""
Rev "1.2 (???)"
Comp "Josue Galeas"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L power:GND #PWR030
U 1 1 5BA8D348
P 4200 5600
F 0 "#PWR030" H 4200 5350 50  0001 C CNN
F 1 "GND" H 4200 5450 50  0000 C CNN
F 2 "" H 4200 5600 50  0001 C CNN
F 3 "" H 4200 5600 50  0001 C CNN
	1    4200 5600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR031
U 1 1 5BA8D349
P 4300 5600
F 0 "#PWR031" H 4300 5350 50  0001 C CNN
F 1 "GND" H 4300 5450 50  0000 C CNN
F 2 "" H 4300 5600 50  0001 C CNN
F 3 "" H 4300 5600 50  0001 C CNN
	1    4300 5600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR032
U 1 1 5BA8D34A
P 4400 5600
F 0 "#PWR032" H 4400 5350 50  0001 C CNN
F 1 "GND" H 4400 5450 50  0000 C CNN
F 2 "" H 4400 5600 50  0001 C CNN
F 3 "" H 4400 5600 50  0001 C CNN
	1    4400 5600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR033
U 1 1 5BA8D34B
P 4500 5600
F 0 "#PWR033" H 4500 5350 50  0001 C CNN
F 1 "GND" H 4500 5450 50  0000 C CNN
F 2 "" H 4500 5600 50  0001 C CNN
F 3 "" H 4500 5600 50  0001 C CNN
	1    4500 5600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR034
U 1 1 5BA8D34C
P 4600 5600
F 0 "#PWR034" H 4600 5350 50  0001 C CNN
F 1 "GND" H 4600 5450 50  0000 C CNN
F 2 "" H 4600 5600 50  0001 C CNN
F 3 "" H 4600 5600 50  0001 C CNN
	1    4600 5600
	1    0    0    -1  
$EndComp
$Comp
L keyboard_parts:R R_USB6
U 1 1 5BA8D34D
P 5350 3400
F 0 "R_USB6" V 5250 3400 50  0000 C CNN
F 1 "5.1k" V 5350 3400 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 5350 3400 60  0001 C CNN
F 3 "" H 5350 3400 60  0000 C CNN
	1    5350 3400
	0    -1   -1   0   
$EndComp
$Comp
L keyboard_parts:R R_USB5
U 1 1 5BA8D34E
P 5350 3200
F 0 "R_USB5" V 5250 3200 50  0000 C CNN
F 1 "5.1k" V 5350 3200 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 5350 3200 60  0001 C CNN
F 3 "" H 5350 3200 60  0000 C CNN
	1    5350 3200
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR035
U 1 1 5BA8D34F
P 5600 3400
F 0 "#PWR035" H 5600 3150 50  0001 C CNN
F 1 "GND" H 5600 3250 50  0000 C CNN
F 2 "" H 5600 3400 50  0001 C CNN
F 3 "" H 5600 3400 50  0001 C CNN
	1    5600 3400
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR036
U 1 1 5BA8D350
P 5600 3200
F 0 "#PWR036" H 5600 2950 50  0001 C CNN
F 1 "GND" H 5600 3050 50  0000 C CNN
F 2 "" H 5600 3200 50  0001 C CNN
F 3 "" H 5600 3200 50  0001 C CNN
	1    5600 3200
	0    -1   -1   0   
$EndComp
NoConn ~ 5100 4000
NoConn ~ 5100 4100
NoConn ~ 5100 4300
NoConn ~ 5100 4400
NoConn ~ 5100 4600
NoConn ~ 5100 4700
NoConn ~ 5100 4900
NoConn ~ 5100 5000
NoConn ~ 5100 5200
NoConn ~ 5100 5300
Text Label 6000 3800 0    60   ~ 0
DPLUS
Text Label 6000 3600 0    60   ~ 0
DMINUS
Text Label 5600 2700 0    60   ~ 0
VBUS
Text Notes 4250 2350 0    60   ~ 0
Left USB Port
$Comp
L keyboard_parts:D D_VBUS2
U 1 1 5BA8D355
P 5450 2700
F 0 "D_VBUS2" V 5300 2650 60  0000 C CNN
F 1 "D" V 5600 2650 60  0001 C CNN
F 2 "keyboard_parts:D_SOD123_axial" H 5450 2700 60  0001 C CNN
F 3 "" H 5450 2700 60  0000 C CNN
	1    5450 2700
	0    1    1    0   
$EndComp
Text HLabel 3450 3850 0    60   BiDi ~ 0
VBUS
Text HLabel 3450 4000 0    60   BiDi ~ 0
DMINUS
Text HLabel 3450 4150 0    60   BiDi ~ 0
DPLUS
Text Label 3600 3850 0    60   ~ 0
VBUS
Text Label 3600 4000 0    60   ~ 0
DMINUS
Text Label 3600 4150 0    60   ~ 0
DPLUS
$Comp
L jay:PESD5V0L2BT D_ESD2
U 1 1 5BA90EA0
P 5700 4450
F 0 "D_ESD2" H 5500 4900 60  0000 C CNN
F 1 "PESD5V0L2BT" H 5750 4000 60  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 5450 4300 60  0001 C CNN
F 3 "" H 5450 4300 60  0001 C CNN
	1    5700 4450
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR037
U 1 1 5BAAAA06
P 5700 5000
F 0 "#PWR037" H 5700 4750 50  0001 C CNN
F 1 "GND" H 5700 4850 50  0000 C CNN
F 2 "" H 5700 5000 50  0001 C CNN
F 3 "" H 5700 5000 50  0001 C CNN
	1    5700 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 3600 5900 3600
Wire Wire Line
	5100 3800 5500 3800
Wire Wire Line
	5200 3000 5100 3000
Wire Wire Line
	5200 2700 5200 2800
Wire Wire Line
	5100 2700 5200 2700
Connection ~ 5200 2700
Wire Wire Line
	5100 2800 5200 2800
Connection ~ 5200 2800
Wire Wire Line
	5100 2900 5200 2900
Connection ~ 5200 2900
Wire Wire Line
	3450 3850 3600 3850
Wire Wire Line
	3450 4000 3600 4000
Wire Wire Line
	3450 4150 3600 4150
Wire Wire Line
	5500 3800 5500 3900
Wire Wire Line
	5900 3600 5900 3900
Connection ~ 5500 3800
Connection ~ 5900 3600
$Comp
L power:GND #PWR038
U 1 1 5BAABDD6
P 6550 5600
F 0 "#PWR038" H 6550 5350 50  0001 C CNN
F 1 "GND" H 6550 5450 50  0000 C CNN
F 2 "" H 6550 5600 50  0001 C CNN
F 3 "" H 6550 5600 50  0001 C CNN
	1    6550 5600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR039
U 1 1 5BAABDDC
P 6650 5600
F 0 "#PWR039" H 6650 5350 50  0001 C CNN
F 1 "GND" H 6650 5450 50  0000 C CNN
F 2 "" H 6650 5600 50  0001 C CNN
F 3 "" H 6650 5600 50  0001 C CNN
	1    6650 5600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR040
U 1 1 5BAABDE2
P 6750 5600
F 0 "#PWR040" H 6750 5350 50  0001 C CNN
F 1 "GND" H 6750 5450 50  0000 C CNN
F 2 "" H 6750 5600 50  0001 C CNN
F 3 "" H 6750 5600 50  0001 C CNN
	1    6750 5600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR041
U 1 1 5BAABDE8
P 6850 5600
F 0 "#PWR041" H 6850 5350 50  0001 C CNN
F 1 "GND" H 6850 5450 50  0000 C CNN
F 2 "" H 6850 5600 50  0001 C CNN
F 3 "" H 6850 5600 50  0001 C CNN
	1    6850 5600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR042
U 1 1 5BAABDEE
P 6950 5600
F 0 "#PWR042" H 6950 5350 50  0001 C CNN
F 1 "GND" H 6950 5450 50  0000 C CNN
F 2 "" H 6950 5600 50  0001 C CNN
F 3 "" H 6950 5600 50  0001 C CNN
	1    6950 5600
	1    0    0    -1  
$EndComp
$Comp
L keyboard_parts:R R_USB4
U 1 1 5BAABDF4
P 7700 3400
F 0 "R_USB4" V 7600 3400 50  0000 C CNN
F 1 "5.1k" V 7700 3400 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 7700 3400 60  0001 C CNN
F 3 "" H 7700 3400 60  0000 C CNN
	1    7700 3400
	0    -1   -1   0   
$EndComp
$Comp
L keyboard_parts:R R_USB3
U 1 1 5BAABDFA
P 7700 3200
F 0 "R_USB3" V 7600 3200 50  0000 C CNN
F 1 "5.1k" V 7700 3200 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 7700 3200 60  0001 C CNN
F 3 "" H 7700 3200 60  0000 C CNN
	1    7700 3200
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR043
U 1 1 5BAABE00
P 7950 3400
F 0 "#PWR043" H 7950 3150 50  0001 C CNN
F 1 "GND" H 7950 3250 50  0000 C CNN
F 2 "" H 7950 3400 50  0001 C CNN
F 3 "" H 7950 3400 50  0001 C CNN
	1    7950 3400
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR044
U 1 1 5BAABE06
P 7950 3200
F 0 "#PWR044" H 7950 2950 50  0001 C CNN
F 1 "GND" H 7950 3050 50  0000 C CNN
F 2 "" H 7950 3200 50  0001 C CNN
F 3 "" H 7950 3200 50  0001 C CNN
	1    7950 3200
	0    -1   -1   0   
$EndComp
NoConn ~ 7450 4000
NoConn ~ 7450 4100
NoConn ~ 7450 4300
NoConn ~ 7450 4400
NoConn ~ 7450 4600
NoConn ~ 7450 4700
NoConn ~ 7450 4900
NoConn ~ 7450 5000
NoConn ~ 7450 5200
NoConn ~ 7450 5300
Text Label 8350 3800 0    60   ~ 0
DPLUS
Text Label 8350 3600 0    60   ~ 0
DMINUS
Text Label 7950 2700 0    60   ~ 0
VBUS
Text Notes 6600 2350 0    60   ~ 0
Right USB Port
$Comp
L keyboard_parts:D D_VBUS1
U 1 1 5BAABE32
P 7800 2700
F 0 "D_VBUS1" V 7650 2650 60  0000 C CNN
F 1 "D" V 7950 2650 60  0001 C CNN
F 2 "keyboard_parts:D_SOD123_axial" H 7800 2700 60  0001 C CNN
F 3 "" H 7800 2700 60  0000 C CNN
	1    7800 2700
	0    1    1    0   
$EndComp
$Comp
L jay:PESD5V0L2BT D_ESD1
U 1 1 5BAABE38
P 8050 4450
F 0 "D_ESD1" H 7850 4900 60  0000 C CNN
F 1 "PESD5V0L2BT" H 8100 4000 60  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 7800 4300 60  0001 C CNN
F 3 "" H 7800 4300 60  0001 C CNN
	1    8050 4450
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR045
U 1 1 5BAABE3E
P 8050 5000
F 0 "#PWR045" H 8050 4750 50  0001 C CNN
F 1 "GND" H 8050 4850 50  0000 C CNN
F 2 "" H 8050 5000 50  0001 C CNN
F 3 "" H 8050 5000 50  0001 C CNN
	1    8050 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 3600 8250 3600
Wire Wire Line
	7450 3800 7850 3800
Wire Wire Line
	7550 3000 7450 3000
Wire Wire Line
	7550 2700 7550 2800
Wire Wire Line
	7450 2700 7550 2700
Connection ~ 7550 2700
Wire Wire Line
	7450 2800 7550 2800
Connection ~ 7550 2800
Wire Wire Line
	7450 2900 7550 2900
Connection ~ 7550 2900
Wire Wire Line
	7850 3800 7850 3900
Wire Wire Line
	8250 3600 8250 3900
Connection ~ 7850 3800
Connection ~ 8250 3600
Wire Wire Line
	7850 2700 7950 2700
Wire Wire Line
	5500 2700 5600 2700
Wire Wire Line
	5200 2700 5300 2700
Wire Wire Line
	5200 2800 5200 2900
Wire Wire Line
	5200 2900 5200 3000
Wire Wire Line
	5500 3800 6000 3800
Wire Wire Line
	5900 3600 6000 3600
Wire Wire Line
	7550 2700 7650 2700
Wire Wire Line
	7550 2800 7550 2900
Wire Wire Line
	7550 2900 7550 3000
Wire Wire Line
	7850 3800 8350 3800
Wire Wire Line
	8250 3600 8350 3600
$Comp
L Connector:USB_C_Receptacle J2
U 1 1 5BB1A09A
P 4500 4000
F 0 "J2" H 4605 5567 50  0000 C CNN
F 1 "USB_C_Receptacle" H 4605 5476 50  0000 C CNN
F 2 "Connector_USB:USB_C_Receptacle_Amphenol_12401610E4-2A" H 4650 4000 50  0001 C CNN
F 3 "http://www.usb.org/developers/docs/usb_31_033017.zip" H 4650 4000 50  0001 C CNN
	1    4500 4000
	1    0    0    -1  
$EndComp
$Comp
L Connector:USB_C_Receptacle J1
U 1 1 5BB1A1D8
P 6850 4000
F 0 "J1" H 6955 5567 50  0000 C CNN
F 1 "USB_C_Receptacle" H 6955 5476 50  0000 C CNN
F 2 "Connector_USB:USB_C_Receptacle_Amphenol_12401610E4-2A" H 7000 4000 50  0001 C CNN
F 3 "http://www.usb.org/developers/docs/usb_31_033017.zip" H 7000 4000 50  0001 C CNN
	1    6850 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 3300 5100 3400
Wire Wire Line
	5100 3500 5100 3600
Connection ~ 5100 3600
Wire Wire Line
	5100 3700 5100 3800
Connection ~ 5100 3800
Wire Wire Line
	7450 3300 7450 3400
Wire Wire Line
	7450 3500 7450 3600
Connection ~ 7450 3600
Wire Wire Line
	7450 3700 7450 3800
Connection ~ 7450 3800
$EndSCHEMATC
