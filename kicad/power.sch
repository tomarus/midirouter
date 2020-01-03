EESchema Schematic File Version 4
LIBS:midirouter-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 2
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
L power:VCC #PWR?
U 1 1 5CF5C9E3
P 2650 3400
AR Path="/5CF5C9E3" Ref="#PWR?"  Part="1" 
AR Path="/5CF3B46A/5CF5C9E3" Ref="#PWR028"  Part="1" 
F 0 "#PWR028" H 2650 3250 50  0001 C CNN
F 1 "VCC" V 2668 3527 50  0000 L CNN
F 2 "" H 2650 3400 50  0001 C CNN
F 3 "" H 2650 3400 50  0001 C CNN
	1    2650 3400
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5CF5C9E9
P 2650 3600
AR Path="/5CF5C9E9" Ref="#PWR?"  Part="1" 
AR Path="/5CF3B46A/5CF5C9E9" Ref="#PWR029"  Part="1" 
F 0 "#PWR029" H 2650 3350 50  0001 C CNN
F 1 "GND" V 2655 3472 50  0000 R CNN
F 2 "" H 2650 3600 50  0001 C CNN
F 3 "" H 2650 3600 50  0001 C CNN
	1    2650 3600
	0    1    1    0   
$EndComp
$Comp
L power:PWR_FLAG #FLG?
U 1 1 5CF5C9EF
P 2850 3600
AR Path="/5CF5C9EF" Ref="#FLG?"  Part="1" 
AR Path="/5CF3B46A/5CF5C9EF" Ref="#FLG02"  Part="1" 
F 0 "#FLG02" H 2850 3675 50  0001 C CNN
F 1 "PWR_FLAG" V 2850 3728 50  0000 L CNN
F 2 "" H 2850 3600 50  0001 C CNN
F 3 "~" H 2850 3600 50  0001 C CNN
	1    2850 3600
	0    1    1    0   
$EndComp
Wire Wire Line
	2850 3600 2650 3600
$Comp
L power:PWR_FLAG #FLG?
U 1 1 5CF5CA03
P 2850 3400
AR Path="/5CF5CA03" Ref="#FLG?"  Part="1" 
AR Path="/5CF3B46A/5CF5CA03" Ref="#FLG01"  Part="1" 
F 0 "#FLG01" H 2850 3475 50  0001 C CNN
F 1 "PWR_FLAG" V 2850 3528 50  0000 L CNN
F 2 "" H 2850 3400 50  0001 C CNN
F 3 "~" H 2850 3400 50  0001 C CNN
	1    2850 3400
	0    1    1    0   
$EndComp
Wire Wire Line
	2850 3400 2750 3400
$Comp
L power:+3.3V #PWR?
U 1 1 5CF5CA0A
P 2750 3300
AR Path="/5CF5CA0A" Ref="#PWR?"  Part="1" 
AR Path="/5CF3B46A/5CF5CA0A" Ref="#PWR051"  Part="1" 
F 0 "#PWR051" H 2750 3150 50  0001 C CNN
F 1 "+3.3V" H 2765 3473 50  0000 C CNN
F 2 "" H 2750 3300 50  0001 C CNN
F 3 "" H 2750 3300 50  0001 C CNN
	1    2750 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 3300 2750 3400
Connection ~ 2750 3400
Wire Wire Line
	2750 3400 2650 3400
$Comp
L Regulator_Linear:L7805 U8
U 1 1 5CF7E36B
P 5600 3450
F 0 "U8" H 5600 3692 50  0000 C CNN
F 1 "L7805" H 5600 3601 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Horizontal_TabDown" H 5625 3300 50  0001 L CIN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/41/4f/b3/b0/12/d4/47/88/CD00000444.pdf/files/CD00000444.pdf/jcr:content/translations/en.CD00000444.pdf" H 5600 3400 50  0001 C CNN
	1    5600 3450
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR052
U 1 1 5CF7E486
P 5150 3450
F 0 "#PWR052" H 5150 3300 50  0001 C CNN
F 1 "+12V" V 5165 3578 50  0000 L CNN
F 2 "" H 5150 3450 50  0001 C CNN
F 3 "" H 5150 3450 50  0001 C CNN
	1    5150 3450
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5CF7E4D8
P 5600 4000
AR Path="/5CF7E4D8" Ref="#PWR?"  Part="1" 
AR Path="/5CF3B46A/5CF7E4D8" Ref="#PWR053"  Part="1" 
F 0 "#PWR053" H 5600 3750 50  0001 C CNN
F 1 "GND" V 5605 3872 50  0000 R CNN
F 2 "" H 5600 4000 50  0001 C CNN
F 3 "" H 5600 4000 50  0001 C CNN
	1    5600 4000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C17
U 1 1 5CF7E50F
P 5250 3800
F 0 "C17" H 5365 3846 50  0000 L CNN
F 1 "C" H 5365 3755 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 5288 3650 50  0001 C CNN
F 3 "~" H 5250 3800 50  0001 C CNN
	1    5250 3800
	1    0    0    -1  
$EndComp
$Comp
L Device:C C18
U 1 1 5CF7E55B
P 5950 3800
F 0 "C18" H 6065 3846 50  0000 L CNN
F 1 "C" H 6065 3755 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 5988 3650 50  0001 C CNN
F 3 "~" H 5950 3800 50  0001 C CNN
	1    5950 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 3950 5600 3950
Wire Wire Line
	5600 4000 5600 3950
Connection ~ 5600 3950
Wire Wire Line
	5600 3950 5950 3950
Wire Wire Line
	5600 3750 5600 3950
Wire Wire Line
	5900 3450 5950 3450
Wire Wire Line
	5950 3650 5950 3450
Wire Wire Line
	5250 3650 5250 3450
Wire Wire Line
	5250 3450 5300 3450
Wire Wire Line
	5150 3450 5250 3450
Connection ~ 5250 3450
$Comp
L power:GND #PWR?
U 1 1 5CF7EB2C
P 7750 4050
AR Path="/5CF7EB2C" Ref="#PWR?"  Part="1" 
AR Path="/5CF3B46A/5CF7EB2C" Ref="#PWR056"  Part="1" 
F 0 "#PWR056" H 7750 3800 50  0001 C CNN
F 1 "GND" V 7755 3922 50  0000 R CNN
F 2 "" H 7750 4050 50  0001 C CNN
F 3 "" H 7750 4050 50  0001 C CNN
	1    7750 4050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R77
U 1 1 5CF7EB6E
P 7750 3450
F 0 "R77" H 7820 3496 50  0000 L CNN
F 1 "2K2" H 7820 3405 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7680 3450 50  0001 C CNN
F 3 "~" H 7750 3450 50  0001 C CNN
	1    7750 3450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R78
U 1 1 5CF7EBA6
P 7750 3850
F 0 "R78" H 7820 3896 50  0000 L CNN
F 1 "3K3" H 7820 3805 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7680 3850 50  0001 C CNN
F 3 "~" H 7750 3850 50  0001 C CNN
	1    7750 3850
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5CF7EC1D
P 8000 3650
AR Path="/5CF7EC1D" Ref="#PWR?"  Part="1" 
AR Path="/5CF3B46A/5CF7EC1D" Ref="#PWR057"  Part="1" 
F 0 "#PWR057" H 8000 3500 50  0001 C CNN
F 1 "+3.3V" H 8015 3823 50  0000 C CNN
F 2 "" H 8000 3650 50  0001 C CNN
F 3 "" H 8000 3650 50  0001 C CNN
	1    8000 3650
	0    1    1    0   
$EndComp
Wire Wire Line
	8000 3650 7750 3650
Wire Wire Line
	7750 3650 7750 3700
Wire Wire Line
	7750 3600 7750 3650
Connection ~ 7750 3650
Wire Wire Line
	7750 4050 7750 4000
Wire Wire Line
	7750 3250 7750 3300
Wire Wire Line
	2850 3800 2650 3800
$Comp
L power:PWR_FLAG #FLG?
U 1 1 5CF5CA1A
P 2850 3800
AR Path="/5CF5CA1A" Ref="#FLG?"  Part="1" 
AR Path="/5CF3B46A/5CF5CA1A" Ref="#FLG05"  Part="1" 
F 0 "#FLG05" H 2850 3875 50  0001 C CNN
F 1 "PWR_FLAG" V 2850 3928 50  0000 L CNN
F 2 "" H 2850 3800 50  0001 C CNN
F 3 "~" H 2850 3800 50  0001 C CNN
	1    2850 3800
	0    1    1    0   
$EndComp
$Comp
L power:+12V #PWR0101
U 1 1 5CF80D5C
P 2650 3800
F 0 "#PWR0101" H 2650 3650 50  0001 C CNN
F 1 "+12V" V 2665 3928 50  0000 L CNN
F 2 "" H 2650 3800 50  0001 C CNN
F 3 "" H 2650 3800 50  0001 C CNN
	1    2650 3800
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J1
U 1 1 5CFAD355
P 4000 5500
F 0 "J1" H 4050 5917 50  0000 C CNN
F 1 "Conn_02x05_Odd_Even" H 4050 5826 50  0000 C CNN
F 2 "Connector_IDC:IDC-Header_2x05_P2.54mm_Vertical" H 4000 5500 50  0001 C CNN
F 3 "~" H 4000 5500 50  0001 C CNN
	1    4000 5500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5CFAD533
P 3750 5500
AR Path="/5CFAD533" Ref="#PWR?"  Part="1" 
AR Path="/5CF3B46A/5CFAD533" Ref="#PWR0102"  Part="1" 
F 0 "#PWR0102" H 3750 5250 50  0001 C CNN
F 1 "GND" V 3755 5372 50  0000 R CNN
F 2 "" H 3750 5500 50  0001 C CNN
F 3 "" H 3750 5500 50  0001 C CNN
	1    3750 5500
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5CFAD564
P 4350 5500
AR Path="/5CFAD564" Ref="#PWR?"  Part="1" 
AR Path="/5CF3B46A/5CFAD564" Ref="#PWR0103"  Part="1" 
F 0 "#PWR0103" H 4350 5250 50  0001 C CNN
F 1 "GND" V 4355 5372 50  0000 R CNN
F 2 "" H 4350 5500 50  0001 C CNN
F 3 "" H 4350 5500 50  0001 C CNN
	1    4350 5500
	0    -1   -1   0   
$EndComp
$Comp
L power:+12V #PWR0104
U 1 1 5CFAD59E
P 3800 5700
F 0 "#PWR0104" H 3800 5550 50  0001 C CNN
F 1 "+12V" V 3815 5828 50  0000 L CNN
F 2 "" H 3800 5700 50  0001 C CNN
F 3 "" H 3800 5700 50  0001 C CNN
	1    3800 5700
	0    -1   -1   0   
$EndComp
$Comp
L power:+12V #PWR0105
U 1 1 5CFAD5B5
P 4300 5700
F 0 "#PWR0105" H 4300 5550 50  0001 C CNN
F 1 "+12V" V 4315 5828 50  0000 L CNN
F 2 "" H 4300 5700 50  0001 C CNN
F 3 "" H 4300 5700 50  0001 C CNN
	1    4300 5700
	0    1    1    0   
$EndComp
Wire Wire Line
	4300 5600 4300 5500
Wire Wire Line
	4350 5500 4300 5500
Connection ~ 4300 5500
Wire Wire Line
	4300 5400 4300 5500
Wire Wire Line
	3800 5400 3800 5500
Wire Wire Line
	3750 5500 3800 5500
Connection ~ 3800 5500
Wire Wire Line
	3800 5600 3800 5500
$Comp
L power:+5V #PWR?
U 1 1 5CFF1B04
P 7750 3250
AR Path="/5CFF1B04" Ref="#PWR?"  Part="1" 
AR Path="/5CF3B46A/5CFF1B04" Ref="#PWR0106"  Part="1" 
F 0 "#PWR0106" H 7750 3100 50  0001 C CNN
F 1 "+5V" V 7765 3378 50  0000 L CNN
F 2 "" H 7750 3250 50  0001 C CNN
F 3 "" H 7750 3250 50  0001 C CNN
	1    7750 3250
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5CFF1E84
P 6000 3450
AR Path="/5CFF1E84" Ref="#PWR?"  Part="1" 
AR Path="/5CF3B46A/5CFF1E84" Ref="#PWR0107"  Part="1" 
F 0 "#PWR0107" H 6000 3300 50  0001 C CNN
F 1 "+5V" V 6015 3578 50  0000 L CNN
F 2 "" H 6000 3450 50  0001 C CNN
F 3 "" H 6000 3450 50  0001 C CNN
	1    6000 3450
	0    1    1    0   
$EndComp
Wire Wire Line
	6000 3450 5950 3450
Connection ~ 5950 3450
NoConn ~ 4300 5300
NoConn ~ 3800 5300
$EndSCHEMATC
