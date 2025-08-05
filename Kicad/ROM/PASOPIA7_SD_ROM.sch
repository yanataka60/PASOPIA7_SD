EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 1
Title "PASOPIA7_SD_ROM"
Date "2022-01-14"
Rev "Rev1.1"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L power:PWR_FLAG #FLG02
U 1 1 626B92AA
P 2200 3700
F 0 "#FLG02" H 2200 3775 50  0001 C CNN
F 1 "PWR_FLAG" H 2200 3873 50  0000 C CNN
F 2 "" H 2200 3700 50  0001 C CNN
F 3 "~" H 2200 3700 50  0001 C CNN
	1    2200 3700
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR03
U 1 1 62901E30
P 2500 3600
F 0 "#PWR03" H 2500 3450 50  0001 C CNN
F 1 "+5V" H 2515 3773 50  0000 C CNN
F 2 "" H 2500 3600 50  0001 C CNN
F 3 "" H 2500 3600 50  0001 C CNN
	1    2500 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 3600 2500 3700
Wire Wire Line
	2200 3700 2500 3700
Connection ~ 2500 3700
$Comp
L Device:CP1 C8
U 1 1 61AFFCD6
P 2500 3850
F 0 "C8" H 2615 3896 50  0000 L CNN
F 1 "100uF" H 2615 3805 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 2500 3850 50  0001 C CNN
F 3 "~" H 2500 3850 50  0001 C CNN
	1    2500 3850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 61B04D1B
P 2500 4150
F 0 "#PWR04" H 2500 3900 50  0001 C CNN
F 1 "GND" H 2505 3977 50  0000 C CNN
F 2 "" H 2500 4150 50  0001 C CNN
F 3 "" H 2500 4150 50  0001 C CNN
	1    2500 4150
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U1
U 7 1 62200B27
P 2400 8050
F 0 "U1" H 2630 8096 50  0000 L CNN
F 1 "74LS04" H 2630 8005 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 2400 8050 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 2400 8050 50  0001 C CNN
	7    2400 8050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 628C00D7
P 1950 8100
F 0 "C1" V 1800 8200 50  0000 C CNN
F 1 "0.1uF" V 1800 7950 50  0000 C CNN
F 2 "Capacitor_THT:C_Rect_L4.0mm_W2.5mm_P2.50mm" H 1988 7950 50  0001 C CNN
F 3 "~" H 1950 8100 50  0001 C CNN
	1    1950 8100
	-1   0    0    1   
$EndComp
$Comp
L Device:C C2
U 1 1 628E1651
P 3050 8100
F 0 "C2" V 2900 8200 50  0000 C CNN
F 1 "0.1uF" V 2900 7950 50  0000 C CNN
F 2 "Capacitor_THT:C_Rect_L4.0mm_W2.5mm_P2.50mm" H 3088 7950 50  0001 C CNN
F 3 "~" H 3050 8100 50  0001 C CNN
	1    3050 8100
	-1   0    0    1   
$EndComp
Wire Wire Line
	1950 7950 1950 7450
Wire Wire Line
	1950 8250 1950 8650
Wire Wire Line
	1950 8650 2400 8650
Wire Wire Line
	2400 8650 2400 8550
Wire Wire Line
	2400 8650 3050 8650
Connection ~ 2400 8650
Wire Wire Line
	3050 8250 3050 8650
Connection ~ 3050 8650
$Comp
L power:GND #PWR02
U 1 1 62BBAEEE
P 1950 8750
F 0 "#PWR02" H 1950 8500 50  0001 C CNN
F 1 "GND" H 1955 8577 50  0000 C CNN
F 2 "" H 1950 8750 50  0001 C CNN
F 3 "" H 1950 8750 50  0001 C CNN
	1    1950 8750
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR01
U 1 1 62C0DD1E
P 1950 7350
F 0 "#PWR01" H 1950 7200 50  0001 C CNN
F 1 "+5V" H 1965 7523 50  0000 C CNN
F 2 "" H 1950 7350 50  0001 C CNN
F 3 "" H 1950 7350 50  0001 C CNN
	1    1950 7350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 7350 1950 7450
Connection ~ 1950 7450
Wire Wire Line
	1950 8650 1950 8750
Connection ~ 1950 8650
Wire Wire Line
	3050 7950 3050 7450
Connection ~ 3050 7450
Connection ~ 2400 7450
Wire Wire Line
	2400 7450 2400 7550
Wire Wire Line
	1950 7450 2400 7450
Wire Wire Line
	2400 7450 3050 7450
Wire Wire Line
	1900 3900 1900 4050
$Comp
L power:PWR_FLAG #FLG01
U 1 1 61C4340B
P 1900 3900
F 0 "#FLG01" H 1900 3975 50  0001 C CNN
F 1 "PWR_FLAG" H 2150 4000 50  0000 C CNN
F 2 "" H 1900 3900 50  0001 C CNN
F 3 "~" H 1900 3900 50  0001 C CNN
	1    1900 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 4050 2500 4050
Wire Wire Line
	2500 4050 2500 4000
Wire Wire Line
	2500 4050 2500 4150
Connection ~ 2500 4050
$Comp
L Device:C C3
U 1 1 68BE9A7D
P 4150 8100
F 0 "C3" V 4000 8200 50  0000 C CNN
F 1 "0.1uF" V 4000 7950 50  0000 C CNN
F 2 "Capacitor_THT:C_Rect_L4.0mm_W2.5mm_P2.50mm" H 4188 7950 50  0001 C CNN
F 3 "~" H 4150 8100 50  0001 C CNN
	1    4150 8100
	-1   0    0    1   
$EndComp
Wire Wire Line
	4150 8250 4150 8650
Wire Wire Line
	4150 7950 4150 7450
Connection ~ 4150 7450
Wire Wire Line
	4150 8650 4600 8650
Wire Wire Line
	4150 7450 4600 7450
Wire Wire Line
	4600 8550 4600 8650
Wire Wire Line
	4600 7550 4600 7450
Wire Wire Line
	3050 8650 3500 8650
Wire Wire Line
	3050 7450 3500 7450
Wire Wire Line
	3500 8550 3500 8650
Wire Wire Line
	3500 7550 3500 7450
Connection ~ 3500 7450
Wire Wire Line
	3500 7450 4150 7450
$Comp
L 74xx:74LS273 U?
U 1 1 688D7EC5
P 9250 4300
AR Path="/6274F952/688D7EC5" Ref="U?"  Part="1" 
AR Path="/688D7EC5" Ref="U4"  Part="1" 
AR Path="/636550FF/688D7EC5" Ref="U?"  Part="1" 
AR Path="/6875ADF3/688D7EC5" Ref="U?"  Part="1" 
F 0 "U4" H 9000 5000 50  0000 C CNN
F 1 "74LS273" H 9450 5000 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm_LongPads" H 9250 4300 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS273" H 9250 4300 50  0001 C CNN
	1    9250 4300
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS273 U?
U 1 1 688D7ECB
P 9250 6950
AR Path="/6274F952/688D7ECB" Ref="U?"  Part="1" 
AR Path="/688D7ECB" Ref="U5"  Part="1" 
AR Path="/636550FF/688D7ECB" Ref="U?"  Part="1" 
AR Path="/6875ADF3/688D7ECB" Ref="U?"  Part="1" 
F 0 "U5" H 9000 7650 50  0000 C CNN
F 1 "74LS273" H 9450 7650 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm_LongPads" H 9250 6950 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS273" H 9250 6950 50  0001 C CNN
	1    9250 6950
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS245 U?
U 1 1 688D7ED1
P 13750 5050
AR Path="/6274F952/688D7ED1" Ref="U?"  Part="1" 
AR Path="/688D7ED1" Ref="U7"  Part="1" 
AR Path="/636550FF/688D7ED1" Ref="U?"  Part="1" 
AR Path="/6875ADF3/688D7ED1" Ref="U?"  Part="1" 
F 0 "U7" H 14000 5750 50  0000 C CNN
F 1 "74LS245" H 13550 5750 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm_LongPads" H 13750 5050 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS245" H 13750 5050 50  0001 C CNN
	1    13750 5050
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9750 7150 11250 7150
Wire Wire Line
	11250 7150 11250 5250
Wire Wire Line
	11250 5250 12200 5250
Wire Wire Line
	9750 7050 11200 7050
Wire Wire Line
	11200 7050 11200 5150
Wire Wire Line
	11200 5150 12200 5150
Wire Wire Line
	9750 6950 11150 6950
Wire Wire Line
	11150 6950 11150 5050
Wire Wire Line
	11150 5050 12200 5050
Wire Wire Line
	9750 6850 11100 6850
Wire Wire Line
	11100 6850 11100 4950
Wire Wire Line
	11100 4950 12200 4950
Wire Wire Line
	9750 6750 11050 6750
Wire Wire Line
	11050 6750 11050 4850
Wire Wire Line
	11050 4850 12200 4850
Wire Wire Line
	9750 6650 11000 6650
Wire Wire Line
	11000 6650 11000 4750
Wire Wire Line
	11000 4750 12200 4750
Wire Wire Line
	9750 6550 10950 6550
Wire Wire Line
	10950 6550 10950 4650
Wire Wire Line
	10950 4650 12200 4650
Wire Wire Line
	9750 6450 10900 6450
Wire Wire Line
	10900 6450 10900 4550
Wire Wire Line
	10900 4550 12200 4550
Wire Wire Line
	11950 5350 12200 5350
Wire Wire Line
	11900 5450 12200 5450
Wire Wire Line
	11850 5550 12200 5550
Wire Wire Line
	11800 5650 12200 5650
Wire Wire Line
	11750 5750 12200 5750
Wire Wire Line
	11700 5850 12200 5850
Wire Wire Line
	11650 5950 12200 5950
Wire Wire Line
	8600 5550 8600 7350
Wire Wire Line
	8600 7350 8750 7350
Wire Wire Line
	14600 5550 14250 5550
Wire Wire Line
	8600 4700 8750 4700
Wire Wire Line
	9750 3800 11950 3800
Wire Wire Line
	11950 3800 11950 5350
Wire Wire Line
	9750 3900 11900 3900
Wire Wire Line
	11900 3900 11900 5450
Wire Wire Line
	9750 4000 11850 4000
Wire Wire Line
	11850 4000 11850 5550
Wire Wire Line
	9750 4100 11800 4100
Wire Wire Line
	11800 4100 11800 5650
Wire Wire Line
	9750 4200 11750 4200
Wire Wire Line
	11750 4200 11750 5750
Wire Wire Line
	9750 4300 11700 4300
Wire Wire Line
	11700 4300 11700 5850
Wire Wire Line
	9750 4400 11650 4400
Wire Wire Line
	11650 4400 11650 5950
Wire Wire Line
	13000 4550 13250 4550
Wire Wire Line
	13000 4650 13250 4650
Wire Wire Line
	13000 4750 13250 4750
Wire Wire Line
	13000 4850 13250 4850
Wire Wire Line
	13000 4950 13250 4950
Wire Wire Line
	13000 5050 13250 5050
Wire Wire Line
	13000 5150 13250 5150
Wire Wire Line
	13000 5250 13250 5250
$Comp
L Device:C C?
U 1 1 688D7F11
P 13150 6300
AR Path="/6274F952/688D7F11" Ref="C?"  Part="1" 
AR Path="/688D7F11" Ref="C6"  Part="1" 
AR Path="/636550FF/688D7F11" Ref="C?"  Part="1" 
AR Path="/6875ADF3/688D7F11" Ref="C?"  Part="1" 
F 0 "C6" H 13265 6346 50  0000 L CNN
F 1 "0.1uF" H 13265 6255 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.0mm_W2.5mm_P2.50mm" H 13188 6150 50  0001 C CNN
F 3 "~" H 13150 6300 50  0001 C CNN
	1    13150 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	12600 4350 12600 4200
Wire Wire Line
	12600 4200 13150 4200
Wire Wire Line
	13150 4200 13150 6150
Wire Wire Line
	13150 6450 13150 6650
Wire Wire Line
	13150 6650 12600 6650
Wire Wire Line
	12600 6650 12600 6550
$Comp
L power:+5V #PWR?
U 1 1 688D7F1D
P 13150 4100
AR Path="/6274F952/688D7F1D" Ref="#PWR?"  Part="1" 
AR Path="/688D7F1D" Ref="#PWR011"  Part="1" 
AR Path="/636550FF/688D7F1D" Ref="#PWR?"  Part="1" 
AR Path="/6875ADF3/688D7F1D" Ref="#PWR?"  Part="1" 
F 0 "#PWR011" H 13150 3950 50  0001 C CNN
F 1 "+5V" H 13165 4273 50  0000 C CNN
F 2 "" H 13150 4100 50  0001 C CNN
F 3 "" H 13150 4100 50  0001 C CNN
	1    13150 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	13150 4100 13150 4200
Connection ~ 13150 4200
$Comp
L power:GND #PWR?
U 1 1 688D7F25
P 13150 6750
AR Path="/6274F952/688D7F25" Ref="#PWR?"  Part="1" 
AR Path="/688D7F25" Ref="#PWR012"  Part="1" 
AR Path="/636550FF/688D7F25" Ref="#PWR?"  Part="1" 
AR Path="/6875ADF3/688D7F25" Ref="#PWR?"  Part="1" 
F 0 "#PWR012" H 13150 6500 50  0001 C CNN
F 1 "GND" H 13155 6577 50  0000 C CNN
F 2 "" H 13150 6750 50  0001 C CNN
F 3 "" H 13150 6750 50  0001 C CNN
	1    13150 6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	13150 6750 13150 6650
Connection ~ 13150 6650
Wire Wire Line
	12200 6250 12100 6250
Wire Wire Line
	12100 6250 12100 6350
Wire Wire Line
	12100 6650 12600 6650
Connection ~ 12600 6650
$Comp
L Device:C C?
U 1 1 688D7F31
P 14450 5750
AR Path="/6274F952/688D7F31" Ref="C?"  Part="1" 
AR Path="/688D7F31" Ref="C7"  Part="1" 
AR Path="/636550FF/688D7F31" Ref="C?"  Part="1" 
AR Path="/6875ADF3/688D7F31" Ref="C?"  Part="1" 
F 0 "C7" H 14500 5850 50  0000 L CNN
F 1 "0.1uF" H 14450 5650 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.0mm_W2.5mm_P2.50mm" H 14488 5600 50  0001 C CNN
F 3 "~" H 14450 5750 50  0001 C CNN
	1    14450 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	13750 4250 13750 4200
Wire Wire Line
	13750 4200 14450 4200
Wire Wire Line
	14450 4200 14450 5600
Wire Wire Line
	14450 5900 14450 6000
Wire Wire Line
	14450 6000 14300 6000
Wire Wire Line
	13750 6000 13750 5850
$Comp
L power:+5V #PWR?
U 1 1 688D7F3D
P 14450 4100
AR Path="/6274F952/688D7F3D" Ref="#PWR?"  Part="1" 
AR Path="/688D7F3D" Ref="#PWR013"  Part="1" 
AR Path="/636550FF/688D7F3D" Ref="#PWR?"  Part="1" 
AR Path="/6875ADF3/688D7F3D" Ref="#PWR?"  Part="1" 
F 0 "#PWR013" H 14450 3950 50  0001 C CNN
F 1 "+5V" H 14465 4273 50  0000 C CNN
F 2 "" H 14450 4100 50  0001 C CNN
F 3 "" H 14450 4100 50  0001 C CNN
	1    14450 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	14450 4100 14450 4200
Connection ~ 14450 4200
$Comp
L power:GND #PWR?
U 1 1 688D7F45
P 14450 6100
AR Path="/6274F952/688D7F45" Ref="#PWR?"  Part="1" 
AR Path="/688D7F45" Ref="#PWR014"  Part="1" 
AR Path="/636550FF/688D7F45" Ref="#PWR?"  Part="1" 
AR Path="/6875ADF3/688D7F45" Ref="#PWR?"  Part="1" 
F 0 "#PWR014" H 14450 5850 50  0001 C CNN
F 1 "GND" H 14455 5927 50  0000 C CNN
F 2 "" H 14450 6100 50  0001 C CNN
F 3 "" H 14450 6100 50  0001 C CNN
	1    14450 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	14450 6100 14450 6000
Connection ~ 14450 6000
Wire Wire Line
	14250 5450 14300 5450
Wire Wire Line
	14300 5450 14300 6000
Connection ~ 14300 6000
Wire Wire Line
	14300 6000 13750 6000
$Comp
L Device:C C?
U 1 1 688D7F51
P 9800 4750
AR Path="/6274F952/688D7F51" Ref="C?"  Part="1" 
AR Path="/688D7F51" Ref="C4"  Part="1" 
AR Path="/636550FF/688D7F51" Ref="C?"  Part="1" 
AR Path="/6875ADF3/688D7F51" Ref="C?"  Part="1" 
F 0 "C4" H 9915 4796 50  0000 L CNN
F 1 "0.1uF" H 9915 4705 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.0mm_W2.5mm_P2.50mm" H 9838 4600 50  0001 C CNN
F 3 "~" H 9800 4750 50  0001 C CNN
	1    9800 4750
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 688D7F57
P 9800 7400
AR Path="/6274F952/688D7F57" Ref="C?"  Part="1" 
AR Path="/688D7F57" Ref="C5"  Part="1" 
AR Path="/636550FF/688D7F57" Ref="C?"  Part="1" 
AR Path="/6875ADF3/688D7F57" Ref="C?"  Part="1" 
F 0 "C5" H 9915 7446 50  0000 L CNN
F 1 "0.1uF" H 9915 7355 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.0mm_W2.5mm_P2.50mm" H 9838 7250 50  0001 C CNN
F 3 "~" H 9800 7400 50  0001 C CNN
	1    9800 7400
	1    0    0    -1  
$EndComp
Wire Wire Line
	9250 3500 9250 3400
Wire Wire Line
	9250 3400 9800 3400
Wire Wire Line
	9800 3400 9800 4600
Wire Wire Line
	9800 4900 9800 5200
Wire Wire Line
	9800 5200 9250 5200
Wire Wire Line
	9250 5200 9250 5100
Wire Wire Line
	9250 6150 9250 6050
Wire Wire Line
	9250 6050 9800 6050
Wire Wire Line
	9800 6050 9800 7250
Wire Wire Line
	9800 7550 9800 7850
Wire Wire Line
	9800 7850 9250 7850
Wire Wire Line
	9250 7850 9250 7750
Wire Wire Line
	8750 7450 8650 7450
Wire Wire Line
	8650 7450 8650 6050
Wire Wire Line
	8650 6050 9250 6050
Connection ~ 9250 6050
Wire Wire Line
	8750 4800 8650 4800
Wire Wire Line
	8650 4800 8650 3400
Wire Wire Line
	8650 3400 9250 3400
Connection ~ 9250 3400
$Comp
L power:GND #PWR?
U 1 1 688D7F71
P 9800 7950
AR Path="/6274F952/688D7F71" Ref="#PWR?"  Part="1" 
AR Path="/688D7F71" Ref="#PWR08"  Part="1" 
AR Path="/636550FF/688D7F71" Ref="#PWR?"  Part="1" 
AR Path="/6875ADF3/688D7F71" Ref="#PWR?"  Part="1" 
F 0 "#PWR08" H 9800 7700 50  0001 C CNN
F 1 "GND" H 9805 7777 50  0000 C CNN
F 2 "" H 9800 7950 50  0001 C CNN
F 3 "" H 9800 7950 50  0001 C CNN
	1    9800 7950
	1    0    0    -1  
$EndComp
Wire Wire Line
	9800 7950 9800 7850
Connection ~ 9800 7850
$Comp
L power:GND #PWR?
U 1 1 688D7F79
P 9800 5300
AR Path="/6274F952/688D7F79" Ref="#PWR?"  Part="1" 
AR Path="/688D7F79" Ref="#PWR06"  Part="1" 
AR Path="/636550FF/688D7F79" Ref="#PWR?"  Part="1" 
AR Path="/6875ADF3/688D7F79" Ref="#PWR?"  Part="1" 
F 0 "#PWR06" H 9800 5050 50  0001 C CNN
F 1 "GND" H 9805 5127 50  0000 C CNN
F 2 "" H 9800 5300 50  0001 C CNN
F 3 "" H 9800 5300 50  0001 C CNN
	1    9800 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	9800 5300 9800 5200
Connection ~ 9800 5200
$Comp
L power:+5V #PWR?
U 1 1 688D7F81
P 9800 5950
AR Path="/6274F952/688D7F81" Ref="#PWR?"  Part="1" 
AR Path="/688D7F81" Ref="#PWR07"  Part="1" 
AR Path="/636550FF/688D7F81" Ref="#PWR?"  Part="1" 
AR Path="/6875ADF3/688D7F81" Ref="#PWR?"  Part="1" 
F 0 "#PWR07" H 9800 5800 50  0001 C CNN
F 1 "+5V" H 9815 6123 50  0000 C CNN
F 2 "" H 9800 5950 50  0001 C CNN
F 3 "" H 9800 5950 50  0001 C CNN
	1    9800 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	9800 5950 9800 6050
Connection ~ 9800 6050
$Comp
L power:+5V #PWR?
U 1 1 688D7F89
P 9800 3300
AR Path="/6274F952/688D7F89" Ref="#PWR?"  Part="1" 
AR Path="/688D7F89" Ref="#PWR05"  Part="1" 
AR Path="/636550FF/688D7F89" Ref="#PWR?"  Part="1" 
AR Path="/6875ADF3/688D7F89" Ref="#PWR?"  Part="1" 
F 0 "#PWR05" H 9800 3150 50  0001 C CNN
F 1 "+5V" H 9815 3473 50  0000 C CNN
F 2 "" H 9800 3300 50  0001 C CNN
F 3 "" H 9800 3300 50  0001 C CNN
	1    9800 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	9800 3300 9800 3400
Connection ~ 9800 3400
Wire Wire Line
	7700 6450 8550 6450
Wire Wire Line
	7700 6550 8500 6550
Wire Wire Line
	7700 6650 8450 6650
Wire Wire Line
	8550 6450 8550 3800
Wire Wire Line
	8550 3800 8750 3800
Connection ~ 8550 6450
Wire Wire Line
	8550 6450 8750 6450
Wire Wire Line
	8500 6550 8500 3900
Wire Wire Line
	8500 3900 8750 3900
Connection ~ 8500 6550
Wire Wire Line
	8500 6550 8750 6550
Wire Wire Line
	8450 6650 8450 4000
Wire Wire Line
	8450 4000 8750 4000
Connection ~ 8450 6650
Wire Wire Line
	8450 6650 8750 6650
Wire Wire Line
	7700 6750 8400 6750
Wire Wire Line
	7700 6850 8350 6850
Wire Wire Line
	7700 6950 8300 6950
Wire Wire Line
	7700 7050 8250 7050
Wire Wire Line
	7700 7150 8200 7150
Wire Wire Line
	8400 6750 8400 4100
Wire Wire Line
	8400 4100 8750 4100
Connection ~ 8400 6750
Wire Wire Line
	8400 6750 8750 6750
Wire Wire Line
	8350 6850 8350 4200
Wire Wire Line
	8350 4200 8750 4200
Connection ~ 8350 6850
Wire Wire Line
	8350 6850 8750 6850
Wire Wire Line
	8300 6950 8300 4300
Wire Wire Line
	8300 4300 8750 4300
Connection ~ 8300 6950
Wire Wire Line
	8300 6950 8750 6950
Wire Wire Line
	8250 7050 8250 4400
Wire Wire Line
	8250 4400 8750 4400
Connection ~ 8250 7050
Wire Wire Line
	8250 7050 8750 7050
Wire Wire Line
	8200 7150 8200 4500
Wire Wire Line
	8200 4500 8750 4500
Connection ~ 8200 7150
Wire Wire Line
	8200 7150 8750 7150
Wire Wire Line
	8550 6450 8550 8250
Wire Wire Line
	8550 8250 14700 8250
Wire Wire Line
	14700 8250 14700 4550
Wire Wire Line
	14700 4550 14250 4550
Wire Wire Line
	8500 6550 8500 8300
Wire Wire Line
	8500 8300 14750 8300
Wire Wire Line
	14750 8300 14750 4650
Wire Wire Line
	14750 4650 14250 4650
Wire Wire Line
	8450 6650 8450 8350
Wire Wire Line
	8450 8350 14800 8350
Wire Wire Line
	14800 8350 14800 4750
Wire Wire Line
	14800 4750 14250 4750
Wire Wire Line
	8400 6750 8400 8400
Wire Wire Line
	8400 8400 14850 8400
Wire Wire Line
	14850 8400 14850 4850
Wire Wire Line
	14850 4850 14250 4850
Wire Wire Line
	8350 6850 8350 8450
Wire Wire Line
	8350 8450 14900 8450
Wire Wire Line
	14900 8450 14900 4950
Wire Wire Line
	14900 4950 14250 4950
Wire Wire Line
	8300 6950 8300 8500
Wire Wire Line
	8300 8500 14950 8500
Wire Wire Line
	14950 8500 14950 5050
Wire Wire Line
	14950 5050 14250 5050
Wire Wire Line
	8250 7050 8250 8550
Wire Wire Line
	8250 8550 15000 8550
Wire Wire Line
	15000 8550 15000 5150
Wire Wire Line
	15000 5150 14250 5150
Wire Wire Line
	8200 7150 8200 8600
Wire Wire Line
	8200 8600 15050 8600
Wire Wire Line
	15050 8600 15050 5250
Wire Wire Line
	15050 5250 14250 5250
$Comp
L Memory_EPROM:27C512 U?
U 1 1 688D7FD9
P 12600 5450
AR Path="/636550FF/688D7FD9" Ref="U?"  Part="1" 
AR Path="/688D7FD9" Ref="U6"  Part="1" 
AR Path="/6875ADF3/688D7FD9" Ref="U?"  Part="1" 
F 0 "U6" H 12350 6550 50  0000 C CNN
F 1 "29C256/27C512" H 12650 6800 50  0000 C CNN
F 2 "Package_DIP:DIP-28_W15.24mm_LongPads" H 12600 5450 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/doc0015.pdf" H 12600 5450 50  0001 C CNN
	1    12600 5450
	1    0    0    -1  
$EndComp
$Comp
L Memory_RAM2:SLIDE_SWITCH_3P S?
U 1 1 688D7FDF
P 12550 3300
AR Path="/636550FF/688D7FDF" Ref="S?"  Part="1" 
AR Path="/688D7FDF" Ref="S1"  Part="1" 
AR Path="/6875ADF3/688D7FDF" Ref="S?"  Part="1" 
F 0 "S1" H 12300 3250 50  0000 C CNN
F 1 "SLIDE_SWITCH_3P" H 12550 3400 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 12550 3325 50  0001 C CNN
F 3 "" H 12550 3325 50  0001 C CNN
	1    12550 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	12200 6050 12100 6050
Wire Wire Line
	12100 6050 12100 3750
Wire Wire Line
	12100 3750 12550 3750
Wire Wire Line
	12550 3750 12550 3650
$Comp
L power:+5V #PWR?
U 1 1 688D7FEF
P 13100 3350
AR Path="/6274F952/688D7FEF" Ref="#PWR?"  Part="1" 
AR Path="/688D7FEF" Ref="#PWR09"  Part="1" 
AR Path="/636550FF/688D7FEF" Ref="#PWR?"  Part="1" 
AR Path="/6875ADF3/688D7FEF" Ref="#PWR?"  Part="1" 
F 0 "#PWR09" H 13100 3200 50  0001 C CNN
F 1 "+5V" H 13115 3523 50  0000 C CNN
F 2 "" H 13100 3350 50  0001 C CNN
F 3 "" H 13100 3350 50  0001 C CNN
	1    13100 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 1750 6950 1750
Text Label 5450 1300 0    50   ~ 0
CAD0
Wire Wire Line
	7900 1600 7550 1600
Wire Wire Line
	8600 5550 7900 5550
Wire Wire Line
	5150 1750 5150 2650
Wire Wire Line
	6950 2650 5150 2650
Text Label 5400 2450 0    50   ~ 0
~CRD
Wire Wire Line
	7550 2550 14600 2550
Wire Wire Line
	14600 2550 14600 5550
Wire Wire Line
	5150 3550 7000 3550
Text Label 5350 5100 0    50   ~ 0
~CWR
Wire Wire Line
	8600 3400 7600 3400
Text Label 7750 6450 0    50   ~ 0
CDB0
Text Label 7750 6550 0    50   ~ 0
CDB1
Text Label 7750 6650 0    50   ~ 0
CDB2
Text Label 7750 6750 0    50   ~ 0
CDB3
Text Label 7750 6850 0    50   ~ 0
CDB4
Text Label 7750 6950 0    50   ~ 0
CDB5
Text Label 7750 7050 0    50   ~ 0
CDB6
Text Label 7750 7150 0    50   ~ 0
CDB7
Wire Wire Line
	8600 3400 8600 4700
Wire Wire Line
	6400 5100 6800 5100
Wire Wire Line
	6950 1650 6800 1650
Wire Wire Line
	6350 2450 6950 2450
$Comp
L 74xx:74LS20 U3
U 1 1 69244059
P 7250 1600
F 0 "U3" H 7250 1975 50  0000 C CNN
F 1 "74LS20" H 7250 1884 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 7250 1600 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS20" H 7250 1600 50  0001 C CNN
	1    7250 1600
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS20 U3
U 2 1 6924A4E3
P 7300 3400
F 0 "U3" H 7300 3775 50  0000 C CNN
F 1 "74LS20" H 7300 3684 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 7300 3400 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS20" H 7300 3400 50  0001 C CNN
	2    7300 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 2650 5150 3550
Connection ~ 5150 2650
Wire Wire Line
	6800 1650 6800 3450
Wire Wire Line
	7000 3450 6800 3450
Connection ~ 6800 3450
Wire Wire Line
	6800 3450 6800 5100
Text Label 5350 3250 0    50   ~ 0
CAD0
Wire Wire Line
	7900 1600 7900 5550
Text Label 5350 3950 0    50   ~ 0
CAD1
Wire Wire Line
	6800 1300 6850 1300
Wire Wire Line
	6850 1300 6850 1450
Wire Wire Line
	6850 1450 6950 1450
Wire Wire Line
	6400 3950 6700 3950
Wire Wire Line
	6700 3950 6700 3350
Wire Wire Line
	6700 1550 6950 1550
Wire Wire Line
	7000 3350 6700 3350
Connection ~ 6700 3350
Wire Wire Line
	6700 3350 6700 1550
$Comp
L 74xx:74LS20 U3
U 3 1 6BA6516C
P 4600 8050
F 0 "U3" H 4830 8096 50  0000 L CNN
F 1 "74LS20" H 4830 8005 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 4600 8050 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS20" H 4600 8050 50  0001 C CNN
	3    4600 8050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 3250 7000 3250
Wire Wire Line
	5350 5100 5800 5100
Wire Wire Line
	4100 1750 4550 1750
Text Label 4100 1750 0    50   ~ 0
~CSEL2
$Comp
L 74xx:74LS04 U1
U 1 1 689F59E8
P 6500 1300
F 0 "U1" H 6500 1617 50  0000 C CNN
F 1 "74LS04" H 6500 1526 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 6500 1300 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 6500 1300 50  0001 C CNN
	1    6500 1300
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U1
U 2 1 689F7904
P 4850 1750
F 0 "U1" H 4850 2067 50  0000 C CNN
F 1 "74LS04" H 4850 1976 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 4850 1750 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 4850 1750 50  0001 C CNN
	2    4850 1750
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U1
U 3 1 689F9247
P 6050 2450
F 0 "U1" H 6050 2767 50  0000 C CNN
F 1 "74LS04" H 6050 2676 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 6050 2450 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 6050 2450 50  0001 C CNN
	3    6050 2450
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U1
U 4 1 689FB31F
P 6100 3950
F 0 "U1" H 6100 4267 50  0000 C CNN
F 1 "74LS04" H 6100 4176 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 6100 3950 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 6100 3950 50  0001 C CNN
	4    6100 3950
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U1
U 5 1 689FD37C
P 6100 5100
F 0 "U1" H 6100 5417 50  0000 C CNN
F 1 "74LS04" H 6100 5326 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 6100 5100 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 6100 5100 50  0001 C CNN
	5    6100 5100
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U1
U 6 1 68A02153
P 3850 4250
F 0 "U1" H 3850 4567 50  0000 C CNN
F 1 "74LS04" H 3850 4476 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 3850 4250 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 3850 4250 50  0001 C CNN
	6    3850 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 1300 6200 1300
Connection ~ 5150 1750
Wire Wire Line
	5400 2450 5750 2450
Wire Wire Line
	5350 3950 5800 3950
Wire Wire Line
	4150 8650 3500 8650
Connection ~ 4150 8650
Connection ~ 3500 8650
$Comp
L Connector_Generic:Conn_02x10_Odd_Even J1
U 1 1 68F0CF40
P 1900 2050
F 0 "J1" H 1950 2667 50  0000 C CNN
F 1 "Conn_02x10_Odd_Even" H 1950 2576 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x10_P2.54mm_Vertical" H 1900 2050 50  0001 C CNN
F 3 "~" H 1900 2050 50  0001 C CNN
	1    1900 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 1650 1250 1650
Wire Wire Line
	2200 1650 2750 1650
Wire Wire Line
	1700 1750 1250 1750
Wire Wire Line
	1700 1850 1250 1850
Wire Wire Line
	1700 1950 1250 1950
Wire Wire Line
	1700 2050 1250 2050
Wire Wire Line
	1700 2150 1250 2150
Wire Wire Line
	1700 2250 1250 2250
Wire Wire Line
	1700 2350 1250 2350
Wire Wire Line
	1700 2450 1250 2450
Wire Wire Line
	1700 2550 1250 2550
Wire Wire Line
	2200 1750 2750 1750
Wire Wire Line
	2200 1850 2750 1850
Wire Wire Line
	2200 1950 2750 1950
Wire Wire Line
	2200 2050 2750 2050
Wire Wire Line
	2200 2150 2750 2150
Wire Wire Line
	2200 2250 2750 2250
Wire Wire Line
	2200 2350 2750 2350
Wire Wire Line
	2200 2450 2750 2450
Wire Wire Line
	2200 2550 2750 2550
Text Label 1250 1650 0    50   ~ 0
CDB7
Text Label 1250 1750 0    50   ~ 0
GND
Text Label 1250 1850 0    50   ~ 0
CDB4
Text Label 1250 1950 0    50   ~ 0
GND
Text Label 1250 2050 0    50   ~ 0
CDB1
Text Label 1250 2150 0    50   ~ 0
CAD1
Text Label 1250 2250 0    50   ~ 0
GND
Text Label 1250 2350 0    50   ~ 0
~CRD
Text Label 1250 2450 0    50   ~ 0
GND
Text Label 1250 2550 0    50   ~ 0
+5V
Text Label 2450 1650 0    50   ~ 0
CDB6
Text Label 2450 1750 0    50   ~ 0
CDB5
Text Label 2450 1850 0    50   ~ 0
CDB3
Text Label 2450 1950 0    50   ~ 0
CDB2
Text Label 2450 2050 0    50   ~ 0
CDB0
Text Label 2450 2150 0    50   ~ 0
CAD0
Text Label 2450 2250 0    50   ~ 0
~CSEL2
Text Label 2450 2350 0    50   ~ 0
~CWR
Text Label 2450 2450 0    50   ~ 0
GND
Text Label 2450 2550 0    50   ~ 0
+5V
$Comp
L 74xx:74LS00 U2
U 2 1 6904B988
P 3850 4850
F 0 "U2" H 3850 5175 50  0000 C CNN
F 1 "74LS00" H 3850 5084 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 3850 4850 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls00" H 3850 4850 50  0001 C CNN
	2    3850 4850
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS00 U2
U 3 1 6904D00E
P 3850 5400
F 0 "U2" H 3850 5725 50  0000 C CNN
F 1 "74LS00" H 3850 5634 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 3850 5400 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls00" H 3850 5400 50  0001 C CNN
	3    3850 5400
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS00 U2
U 4 1 6904EE83
P 3850 5950
F 0 "U2" H 3850 6275 50  0000 C CNN
F 1 "74LS00" H 3850 6184 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 3850 5950 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls00" H 3850 5950 50  0001 C CNN
	4    3850 5950
	1    0    0    -1  
$EndComp
NoConn ~ 4150 4850
NoConn ~ 4150 5400
NoConn ~ 4150 5950
Wire Wire Line
	3550 4750 3200 4750
Wire Wire Line
	3200 4750 3200 4950
Wire Wire Line
	3200 6050 3550 6050
Wire Wire Line
	3550 5850 3200 5850
Connection ~ 3200 5850
Wire Wire Line
	3200 5850 3200 6050
Wire Wire Line
	3550 5500 3200 5500
Connection ~ 3200 5500
Wire Wire Line
	3200 5500 3200 5850
Wire Wire Line
	3550 5300 3200 5300
Connection ~ 3200 5300
Wire Wire Line
	3200 5300 3200 5500
Wire Wire Line
	3550 4950 3200 4950
Connection ~ 3200 4950
Wire Wire Line
	3200 4950 3200 5300
$Comp
L power:GND #PWR0101
U 1 1 691100C2
P 3200 6350
F 0 "#PWR0101" H 3200 6100 50  0001 C CNN
F 1 "GND" H 3205 6177 50  0000 C CNN
F 2 "" H 3200 6350 50  0001 C CNN
F 3 "" H 3200 6350 50  0001 C CNN
	1    3200 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 6350 3200 6050
Connection ~ 3200 6050
$Comp
L 74xx:74LS00 U2
U 1 1 6914C2CC
P 7250 2550
F 0 "U2" H 7250 2875 50  0000 C CNN
F 1 "74LS00" H 7250 2784 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 7250 2550 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls00" H 7250 2550 50  0001 C CNN
	1    7250 2550
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS00 U2
U 5 1 6914CC26
P 3500 8050
F 0 "U2" H 3730 8096 50  0000 L CNN
F 1 "74LS00" H 3730 8005 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 3500 8050 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls00" H 3500 8050 50  0001 C CNN
	5    3500 8050
	1    0    0    -1  
$EndComp
Wire Wire Line
	12200 6350 12100 6350
Connection ~ 12100 6350
Wire Wire Line
	12100 6350 12100 6650
Wire Wire Line
	13100 3500 13100 3350
Wire Wire Line
	12750 3500 13100 3500
Wire Wire Line
	9750 4500 10400 4500
Wire Wire Line
	10400 4500 10400 3500
Wire Wire Line
	10400 3500 12350 3500
$Comp
L power:+5V #PWR?
U 1 1 68AC1E93
P 1900 4650
AR Path="/6274F952/68AC1E93" Ref="#PWR?"  Part="1" 
AR Path="/68AC1E93" Ref="#PWR010"  Part="1" 
AR Path="/636550FF/68AC1E93" Ref="#PWR?"  Part="1" 
AR Path="/6875ADF3/68AC1E93" Ref="#PWR?"  Part="1" 
F 0 "#PWR010" H 1900 4500 50  0001 C CNN
F 1 "+5V" H 1915 4823 50  0000 C CNN
F 2 "" H 1900 4650 50  0001 C CNN
F 3 "" H 1900 4650 50  0001 C CNN
	1    1900 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 4850 1900 4850
Wire Wire Line
	1900 4850 1900 4650
Wire Wire Line
	3550 4250 3200 4250
Wire Wire Line
	3200 4250 3200 4750
Connection ~ 3200 4750
NoConn ~ 4150 4250
$Comp
L Connector_Generic:Conn_01x02 J2
U 1 1 689088DF
P 2200 4850
F 0 "J2" H 2280 4842 50  0000 L CNN
F 1 "+5V" H 2280 4751 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Horizontal" H 2200 4850 50  0001 C CNN
F 3 "~" H 2200 4850 50  0001 C CNN
	1    2200 4850
	1    0    0    -1  
$EndComp
NoConn ~ 2000 4950
$EndSCHEMATC
