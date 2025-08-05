EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 1
Title "PASOPIA7_SD"
Date "2022-01-14"
Rev "Rev1.6"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L power:PWR_FLAG #FLG02
U 1 1 626B92AA
P 2250 5050
F 0 "#FLG02" H 2250 5125 50  0001 C CNN
F 1 "PWR_FLAG" H 2250 5223 50  0000 C CNN
F 2 "" H 2250 5050 50  0001 C CNN
F 3 "~" H 2250 5050 50  0001 C CNN
	1    2250 5050
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR04
U 1 1 62901E30
P 2550 4950
F 0 "#PWR04" H 2550 4800 50  0001 C CNN
F 1 "+5V" H 2565 5123 50  0000 C CNN
F 2 "" H 2550 4950 50  0001 C CNN
F 3 "" H 2550 4950 50  0001 C CNN
	1    2550 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 4950 2550 5050
Wire Wire Line
	2250 5050 2550 5050
Connection ~ 2550 5050
$Comp
L Connector_Generic:Conn_02x25_Odd_Even J1
U 1 1 61ABAF01
P 2350 2400
F 0 "J1" H 2400 975 50  0000 C CNN
F 1 "PASOPIA7 BUS" H 2400 1066 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x25_P2.54mm_Horizontal" H 2350 2400 50  0001 C CNN
F 3 "~" H 2350 2400 50  0001 C CNN
	1    2350 2400
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C4
U 1 1 61AFFCD6
P 2550 5200
F 0 "C4" H 2665 5246 50  0000 L CNN
F 1 "100uF" H 2665 5155 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 2550 5200 50  0001 C CNN
F 3 "~" H 2550 5200 50  0001 C CNN
	1    2550 5200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR05
U 1 1 61B04D1B
P 2550 5500
F 0 "#PWR05" H 2550 5250 50  0001 C CNN
F 1 "GND" H 2555 5327 50  0000 C CNN
F 2 "" H 2550 5500 50  0001 C CNN
F 3 "" H 2550 5500 50  0001 C CNN
	1    2550 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 4850 7650 2950
Wire Wire Line
	4550 2950 7650 2950
$Comp
L 74xx:74LS30 U2
U 1 1 621DA5E3
P 7000 5300
F 0 "U2" H 7000 5825 50  0000 C CNN
F 1 "74LS30" H 7000 5734 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 7000 5300 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS30" H 7000 5300 50  0001 C CNN
	1    7000 5300
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS30 U2
U 2 1 621FB49F
P 5900 8350
F 0 "U2" H 6130 8396 50  0000 L CNN
F 1 "74LS30" H 6130 8305 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 5900 8350 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS30" H 5900 8350 50  0001 C CNN
	2    5900 8350
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U1
U 7 1 62200B27
P 4800 8350
F 0 "U1" H 5030 8396 50  0000 L CNN
F 1 "74LS04" H 5030 8305 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 4800 8350 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 4800 8350 50  0001 C CNN
	7    4800 8350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 5800 6500 5800
Wire Wire Line
	6500 5800 6500 5600
Wire Wire Line
	6500 5600 6700 5600
Wire Wire Line
	7300 5300 7400 5300
Wire Wire Line
	7400 3250 7400 5300
$Comp
L power:+5V #PWR06
U 1 1 6252FE80
P 7050 5800
F 0 "#PWR06" H 7050 5650 50  0001 C CNN
F 1 "+5V" H 7065 5973 50  0000 C CNN
F 2 "" H 7050 5800 50  0001 C CNN
F 3 "" H 7050 5800 50  0001 C CNN
	1    7050 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 5700 6650 5700
Wire Wire Line
	6650 5700 6650 5900
Wire Wire Line
	6650 5900 7050 5900
Wire Wire Line
	7050 5900 7050 5800
$Comp
L Device:C C1
U 1 1 628C00D7
P 4350 8400
F 0 "C1" V 4200 8500 50  0000 C CNN
F 1 "0.1uF" V 4200 8250 50  0000 C CNN
F 2 "Capacitor_THT:C_Rect_L4.0mm_W2.5mm_P2.50mm" H 4388 8250 50  0001 C CNN
F 3 "~" H 4350 8400 50  0001 C CNN
	1    4350 8400
	-1   0    0    1   
$EndComp
$Comp
L Device:C C2
U 1 1 628E1651
P 5450 8400
F 0 "C2" V 5300 8500 50  0000 C CNN
F 1 "0.1uF" V 5300 8250 50  0000 C CNN
F 2 "Capacitor_THT:C_Rect_L4.0mm_W2.5mm_P2.50mm" H 5488 8250 50  0001 C CNN
F 3 "~" H 5450 8400 50  0001 C CNN
	1    5450 8400
	-1   0    0    1   
$EndComp
Wire Wire Line
	4350 8250 4350 7750
Wire Wire Line
	4350 8550 4350 8950
Wire Wire Line
	4350 8950 4800 8950
Wire Wire Line
	4800 8950 4800 8850
Wire Wire Line
	4800 8950 5450 8950
Connection ~ 4800 8950
Wire Wire Line
	5450 8550 5450 8950
Connection ~ 5450 8950
$Comp
L power:GND #PWR02
U 1 1 62BBAEEE
P 4350 9050
F 0 "#PWR02" H 4350 8800 50  0001 C CNN
F 1 "GND" H 4355 8877 50  0000 C CNN
F 2 "" H 4350 9050 50  0001 C CNN
F 3 "" H 4350 9050 50  0001 C CNN
	1    4350 9050
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR01
U 1 1 62C0DD1E
P 4350 7650
F 0 "#PWR01" H 4350 7500 50  0001 C CNN
F 1 "+5V" H 4365 7823 50  0000 C CNN
F 2 "" H 4350 7650 50  0001 C CNN
F 3 "" H 4350 7650 50  0001 C CNN
	1    4350 7650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 7650 4350 7750
Connection ~ 4350 7750
Wire Wire Line
	4350 8950 4350 9050
Connection ~ 4350 8950
Text Label 1850 1200 0    50   ~ 0
GND
Text Label 1850 1300 0    50   ~ 0
C8MHz
Text Label 1850 1400 0    50   ~ 0
GND
Text Label 1850 1500 0    50   ~ 0
GND
Text Label 1850 1600 0    50   ~ 0
GND
Text Label 1850 1700 0    50   ~ 0
GND
Text Label 1850 1800 0    50   ~ 0
GND
Text Label 1850 1900 0    50   ~ 0
GND
Text Label 1850 2000 0    50   ~ 0
GND
Text Label 1850 2100 0    50   ~ 0
GND
Text Label 1850 2200 0    50   ~ 0
GND
Text Label 1850 2300 0    50   ~ 0
GND
Text Label 1850 2400 0    50   ~ 0
GND
Text Label 1850 2500 0    50   ~ 0
GND
Text Label 1850 2600 0    50   ~ 0
GND
Text Label 1850 2700 0    50   ~ 0
GND
Text Label 1850 2800 0    50   ~ 0
GND
Text Label 1850 2900 0    50   ~ 0
GND
Text Label 1850 3000 0    50   ~ 0
GND
Text Label 1750 3100 0    50   ~ 0
GND
Text Label 1750 3200 0    50   ~ 0
GND
Text Label 2650 1700 0    50   ~ 0
CZRD
Text Label 2650 2200 0    50   ~ 0
CZDB1
Text Label 2650 2300 0    50   ~ 0
CZDB2
Text Label 2650 2400 0    50   ~ 0
CZDB3
Text Label 2650 2500 0    50   ~ 0
CZDB4
Text Label 2650 2600 0    50   ~ 0
CZDB5
Text Label 2650 2700 0    50   ~ 0
CZDB6
Text Label 2650 2800 0    50   ~ 0
CZDB7
Text Label 2650 2900 0    50   ~ 0
CZAD0
Text Label 2650 3000 0    50   ~ 0
CZAD1
Text Label 2650 3600 0    50   ~ 0
CZAD7
Text Label 2650 1900 0    50   ~ 0
CZINT
Wire Wire Line
	1750 2000 2150 2000
Wire Wire Line
	1750 1900 2150 1900
Wire Wire Line
	1750 1800 2150 1800
Wire Wire Line
	1750 1700 2150 1700
Wire Wire Line
	1750 1600 2150 1600
Wire Wire Line
	1750 1500 2150 1500
Wire Wire Line
	1750 1400 2150 1400
Wire Wire Line
	1750 1300 2150 1300
Wire Wire Line
	1750 2300 2150 2300
Wire Wire Line
	1750 2400 2150 2400
Wire Wire Line
	1750 2500 2150 2500
Wire Wire Line
	1750 2600 2150 2600
Wire Wire Line
	1750 2700 2150 2700
Wire Wire Line
	1750 2800 2150 2800
Wire Wire Line
	2650 2600 2800 2600
Wire Wire Line
	1750 2900 2150 2900
Wire Wire Line
	1750 3000 2150 3000
Wire Wire Line
	2650 3000 2800 3000
Wire Wire Line
	1750 3200 2150 3200
Wire Wire Line
	1750 3100 2150 3100
Wire Wire Line
	2650 2900 2800 2900
Wire Wire Line
	2650 2700 2800 2700
Wire Wire Line
	2650 2800 2800 2800
Wire Wire Line
	2650 2200 2800 2200
Wire Wire Line
	2650 2300 2800 2300
Wire Wire Line
	2650 2400 2800 2400
Wire Wire Line
	2650 2500 2800 2500
Wire Wire Line
	2650 3600 2800 3600
Wire Wire Line
	2650 1900 2800 1900
Wire Wire Line
	4500 6350 8650 6350
Wire Wire Line
	4500 6250 8550 6250
Wire Wire Line
	8650 2950 8650 6350
Connection ~ 8650 2950
Wire Wire Line
	8750 2950 8650 2950
Wire Wire Line
	9350 2950 9500 2950
Wire Wire Line
	8650 2250 8650 2950
Wire Wire Line
	11350 3650 11450 3650
Wire Wire Line
	11350 2250 11350 3650
Wire Wire Line
	10900 5450 13000 5450
Wire Wire Line
	10900 3850 11450 3850
Wire Wire Line
	10900 3950 11450 3950
Wire Wire Line
	10900 4050 11450 4050
Wire Wire Line
	10900 4150 11450 4150
Wire Wire Line
	10900 4250 11450 4250
Wire Wire Line
	10900 4350 11450 4350
Wire Wire Line
	10900 4450 11450 4450
Wire Wire Line
	10900 4550 11450 4550
Wire Wire Line
	7650 4850 9500 4850
Wire Wire Line
	7750 4750 9500 4750
Wire Wire Line
	7850 4650 9500 4650
Wire Wire Line
	7950 4550 9500 4550
Wire Wire Line
	8050 4450 9500 4450
Wire Wire Line
	8150 4350 9500 4350
Wire Wire Line
	8250 4250 9500 4250
Wire Wire Line
	8350 4150 9500 4150
Wire Wire Line
	8550 3450 9500 3450
Wire Wire Line
	8550 6250 8550 3450
Wire Wire Line
	8450 3350 9500 3350
Wire Wire Line
	8450 6150 8450 3350
Wire Wire Line
	7400 3250 9500 3250
Wire Wire Line
	4550 2850 7750 2850
Wire Wire Line
	4550 2750 7850 2750
Wire Wire Line
	4550 2650 7950 2650
Wire Wire Line
	4550 2550 8050 2550
Wire Wire Line
	4550 2450 8150 2450
Wire Wire Line
	4550 2350 8250 2350
Wire Wire Line
	4550 2250 8350 2250
Wire Wire Line
	7750 4750 7750 2850
Wire Wire Line
	7850 4650 7850 2750
Wire Wire Line
	7950 4550 7950 2650
Wire Wire Line
	8050 4450 8050 2550
Wire Wire Line
	8150 4350 8150 2450
Wire Wire Line
	8250 4250 8250 2350
Wire Wire Line
	8350 4150 8350 2250
Wire Wire Line
	13700 4250 12650 4250
Wire Wire Line
	13700 2550 13700 4250
Wire Wire Line
	12200 2550 13700 2550
Wire Wire Line
	12200 1550 12200 2550
Wire Wire Line
	12800 1550 12200 1550
Wire Wire Line
	13600 4350 12650 4350
Wire Wire Line
	13600 2650 13600 4350
Wire Wire Line
	12300 2650 13600 2650
Wire Wire Line
	12300 1650 12300 2650
Wire Wire Line
	12800 1650 12300 1650
Wire Wire Line
	13500 4450 12650 4450
Wire Wire Line
	13500 2750 13500 4450
Wire Wire Line
	12400 2750 13500 2750
Wire Wire Line
	12400 1750 12400 2750
Wire Wire Line
	12800 1750 12400 1750
Wire Wire Line
	13400 4550 12650 4550
Wire Wire Line
	13400 2850 13400 4550
Wire Wire Line
	12500 2850 13400 2850
Wire Wire Line
	12500 1850 12500 2850
Wire Wire Line
	12800 1850 12500 1850
Wire Wire Line
	10900 2950 13100 2950
Wire Wire Line
	10900 3050 13000 3050
Wire Wire Line
	10900 3150 11250 3150
Wire Wire Line
	10900 3250 11150 3250
$Comp
L Memory_RAM2:Micro_SD_Card_Kit J2
U 1 1 6188B7C4
P 13700 1450
F 0 "J2" H 13200 2150 50  0000 L CNN
F 1 "Micro_SD_Card_Kit" H 13700 2150 50  0000 L CNN
F 2 "Kicad:AE-microSD-LLCNV" H 14850 1750 50  0001 C CNN
F 3 "http://katalog.we-online.de/em/datasheet/693072010801.pdf" H 13700 1450 50  0001 C CNN
	1    13700 1450
	1    0    0    -1  
$EndComp
NoConn ~ 12800 1250
NoConn ~ 12800 1350
NoConn ~ 12800 1950
$Comp
L power:+5V #PWR010
U 1 1 625CD0DA
P 12650 1000
F 0 "#PWR010" H 12650 850 50  0001 C CNN
F 1 "+5V" H 12665 1173 50  0000 C CNN
F 2 "" H 12650 1000 50  0001 C CNN
F 3 "" H 12650 1000 50  0001 C CNN
	1    12650 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	12650 1000 12650 1150
Wire Wire Line
	12650 1150 12800 1150
$Comp
L power:GND #PWR011
U 1 1 625DAB5A
P 12650 2100
F 0 "#PWR011" H 12650 1850 50  0001 C CNN
F 1 "GND" H 12655 1927 50  0000 C CNN
F 2 "" H 12650 2100 50  0001 C CNN
F 3 "" H 12650 2100 50  0001 C CNN
	1    12650 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	12800 1450 12650 1450
Wire Wire Line
	12650 1450 12650 2100
Wire Wire Line
	12850 3750 12850 3450
Wire Wire Line
	12650 3750 12850 3750
NoConn ~ 11450 3450
NoConn ~ 11450 3550
NoConn ~ 11450 3750
NoConn ~ 11950 4950
NoConn ~ 12050 4950
NoConn ~ 12650 3650
NoConn ~ 12650 3450
NoConn ~ 10900 5350
NoConn ~ 10900 5250
NoConn ~ 10900 5150
NoConn ~ 10900 5050
NoConn ~ 10900 4850
NoConn ~ 10900 4750
NoConn ~ 10900 3650
NoConn ~ 10900 3550
NoConn ~ 10900 3450
NoConn ~ 10900 3350
$Comp
L power:+5V #PWR013
U 1 1 621E99AD
P 12850 3450
F 0 "#PWR013" H 12850 3300 50  0001 C CNN
F 1 "+5V" H 12865 3623 50  0000 C CNN
F 2 "" H 12850 3450 50  0001 C CNN
F 3 "" H 12850 3450 50  0001 C CNN
	1    12850 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	12750 3550 12750 4750
Wire Wire Line
	12650 3550 12750 3550
$Comp
L power:GND #PWR012
U 1 1 621A9C99
P 12750 4750
F 0 "#PWR012" H 12750 4500 50  0001 C CNN
F 1 "GND" H 12755 4577 50  0000 C CNN
F 2 "" H 12750 4750 50  0001 C CNN
F 3 "" H 12750 4750 50  0001 C CNN
	1    12750 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	12250 5150 12250 4950
Wire Wire Line
	11150 5150 12250 5150
Wire Wire Line
	11150 3250 11150 5150
Wire Wire Line
	12150 5050 12150 4950
Wire Wire Line
	11250 5050 12150 5050
Wire Wire Line
	11250 3150 11250 5050
Wire Wire Line
	13000 3850 12650 3850
Wire Wire Line
	13000 3050 13000 3850
Wire Wire Line
	13100 3950 12650 3950
Wire Wire Line
	13100 2950 13100 3950
Wire Wire Line
	13100 4050 12650 4050
Wire Wire Line
	13100 5550 13100 4050
Wire Wire Line
	11050 5550 13100 5550
Wire Wire Line
	11050 4950 11050 5550
Wire Wire Line
	10900 4950 11050 4950
Wire Wire Line
	13000 4150 12650 4150
Wire Wire Line
	13000 5450 13000 4150
Connection ~ 10200 2650
$Comp
L power:+5V #PWR07
U 1 1 61F63930
P 10200 2650
F 0 "#PWR07" H 10200 2500 50  0001 C CNN
F 1 "+5V" H 10215 2823 50  0000 C CNN
F 2 "" H 10200 2650 50  0001 C CNN
F 3 "" H 10200 2650 50  0001 C CNN
	1    10200 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	9450 2650 10200 2650
Wire Wire Line
	9450 5900 9450 2650
Wire Wire Line
	9550 5900 9450 5900
Connection ~ 10200 5900
Wire Wire Line
	10200 5850 10200 5900
Wire Wire Line
	10200 5900 10200 5950
Wire Wire Line
	9850 5900 10200 5900
$Comp
L power:GND #PWR08
U 1 1 61F38F70
P 10200 5950
F 0 "#PWR08" H 10200 5700 50  0001 C CNN
F 1 "GND" H 10205 5777 50  0000 C CNN
F 2 "" H 10200 5950 50  0001 C CNN
F 3 "" H 10200 5950 50  0001 C CNN
	1    10200 5950
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 61F2D5C6
P 9700 5900
F 0 "C3" V 9550 6000 50  0000 C CNN
F 1 "0.1uF" V 9550 5750 50  0000 C CNN
F 2 "Capacitor_THT:C_Rect_L4.0mm_W2.5mm_P2.50mm" H 9738 5750 50  0001 C CNN
F 3 "~" H 9700 5900 50  0001 C CNN
	1    9700 5900
	0    -1   -1   0   
$EndComp
$Comp
L Interface:8255 U3
U 1 1 618A36EE
P 10200 4250
F 0 "U3" H 9800 5750 50  0000 C CNN
F 1 "8255" H 10600 5750 50  0000 C CNN
F 2 "Package_DIP:DIP-40_W15.24mm_LongPads" H 10200 4550 50  0001 C CNN
F 3 "http://aturing.umcs.maine.edu/~meadow/courses/cos335/Intel8255A.pdf" H 10200 4550 50  0001 C CNN
	1    10200 4250
	1    0    0    -1  
$EndComp
$Comp
L Arduino:Arduino_Pro_Mini U4
U 1 1 61A254A8
P 12050 4050
F 0 "U4" H 12050 4939 60  0000 C CNN
F 1 "Arduino_Pro_Mini_5V" H 12050 4833 60  0000 C CNN
F 2 "Kicad:Arduino_Pro_Mini" H 12850 3300 60  0001 C CNN
F 3 "https://www.sparkfun.com/products/11113" H 12250 2850 60  0001 C CNN
	1    12050 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 8250 5450 7750
Connection ~ 5450 7750
Connection ~ 4800 7750
Wire Wire Line
	4800 7750 4800 7850
Wire Wire Line
	4350 7750 4800 7750
Wire Wire Line
	4800 7750 5450 7750
Wire Wire Line
	4500 5800 5650 5800
Wire Wire Line
	2750 5050 2550 5050
Wire Wire Line
	1750 1200 2150 1200
Text Label 4550 2250 0    50   ~ 0
CZDB0
Text Label 4550 2350 0    50   ~ 0
CZDB1
Text Label 4550 2450 0    50   ~ 0
CZDB2
Text Label 4550 2550 0    50   ~ 0
CZDB3
Text Label 4550 2650 0    50   ~ 0
CZDB4
Text Label 4550 2750 0    50   ~ 0
CZDB5
Text Label 4550 2850 0    50   ~ 0
CZDB6
Text Label 4550 2950 0    50   ~ 0
CZDB7
Wire Wire Line
	1750 2200 2150 2200
Wire Wire Line
	1750 2100 2150 2100
Text Label 4550 3750 0    50   ~ 0
CZAD0
Text Label 4550 3850 0    50   ~ 0
CZAD1
Text Label 4500 6150 0    50   ~ 0
CZRD
Text Label 4500 6250 0    50   ~ 0
CZWR
Text Label 2750 5050 0    50   ~ 0
Vcc
Text Label 4500 5800 0    50   ~ 0
CZIORQ
Text Label 4500 6350 0    50   ~ 0
CZRST
Wire Wire Line
	1950 5250 1950 5400
$Comp
L power:PWR_FLAG #FLG01
U 1 1 61C4340B
P 1950 5250
F 0 "#FLG01" H 1950 5325 50  0001 C CNN
F 1 "PWR_FLAG" H 2200 5350 50  0000 C CNN
F 2 "" H 1950 5250 50  0001 C CNN
F 3 "~" H 1950 5250 50  0001 C CNN
	1    1950 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 5400 2550 5400
Wire Wire Line
	2550 5400 2550 5350
Wire Wire Line
	2550 5400 2550 5500
Connection ~ 2550 5400
Wire Wire Line
	2650 1700 2800 1700
$Comp
L Connector_Generic:Conn_01x06 J3
U 1 1 631763B9
P 14650 2750
F 0 "J3" H 14300 2300 50  0000 L CNN
F 1 "MicroSD Card Adapter" H 14050 2200 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x06_P2.54mm_Vertical" H 14650 2750 50  0001 C CNN
F 3 "~" H 14650 2750 50  0001 C CNN
	1    14650 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	14450 2550 14200 2550
Wire Wire Line
	14450 2650 14200 2650
Wire Wire Line
	14450 2750 14200 2750
Wire Wire Line
	14450 2850 14200 2850
Wire Wire Line
	14450 2950 14200 2950
Wire Wire Line
	14450 3050 14200 3050
Text Label 14200 2550 0    50   ~ 0
GND
Text Label 14200 2650 0    50   ~ 0
+5V
Text Label 14200 2750 0    50   ~ 0
MISO
Text Label 14200 2850 0    50   ~ 0
MOSI
Text Label 14200 2950 0    50   ~ 0
SCK
Text Label 14200 3050 0    50   ~ 0
CS
Text Label 12200 1550 0    50   ~ 0
SCK
Text Label 12300 1650 0    50   ~ 0
MISO
Text Label 12400 1750 0    50   ~ 0
MOSI
Text Label 12500 1850 0    50   ~ 0
CS
Text Label 2650 1200 0    50   ~ 0
GND
Wire Wire Line
	2650 1200 2800 1200
Text Label 2650 1300 0    50   ~ 0
GND
Wire Wire Line
	2650 1300 2800 1300
Text Label 2650 1400 0    50   ~ 0
CZM1
Wire Wire Line
	2650 1400 2800 1400
Text Label 2650 1500 0    50   ~ 0
CZIORQ
Wire Wire Line
	2650 1500 2800 1500
Text Label 2650 1600 0    50   ~ 0
CZRST
Wire Wire Line
	2650 1600 2800 1600
Text Label 2650 1800 0    50   ~ 0
CZWR
Wire Wire Line
	2650 1800 2800 1800
Text Label 2650 2000 0    50   ~ 0
CZNM1
Wire Wire Line
	2650 2000 2800 2000
Text Label 2650 2100 0    50   ~ 0
CZDB0
Wire Wire Line
	2650 2100 2800 2100
Text Label 2650 3100 0    50   ~ 0
CZAD2
Wire Wire Line
	2650 3100 2800 3100
Text Label 2650 3200 0    50   ~ 0
CZAD3
Wire Wire Line
	2650 3200 2800 3200
Text Label 2650 3300 0    50   ~ 0
CZAD4
Wire Wire Line
	2650 3300 2800 3300
Text Label 2650 3400 0    50   ~ 0
CZAD5
Wire Wire Line
	2650 3400 2800 3400
Text Label 2650 3500 0    50   ~ 0
CZAD6
Wire Wire Line
	2650 3500 2800 3500
Text Label 1750 3300 0    50   ~ 0
GND
Wire Wire Line
	1750 3300 2150 3300
Text Label 1750 3400 0    50   ~ 0
GND
Wire Wire Line
	1750 3400 2150 3400
Text Label 1750 3500 0    50   ~ 0
GND
Wire Wire Line
	1750 3500 2150 3500
Text Label 1750 3600 0    50   ~ 0
GND
Wire Wire Line
	1750 3600 2150 3600
Text Label 4500 4500 0    50   ~ 0
CZAD7
Text Label 4500 4600 0    50   ~ 0
CZAD6
Text Label 4500 4700 0    50   ~ 0
CZAD5
Text Label 4500 4800 0    50   ~ 0
CZAD4
Text Label 4500 4900 0    50   ~ 0
CZAD3
Text Label 4500 5500 0    50   ~ 0
CZAD2
Wire Wire Line
	4500 5500 5000 5500
Wire Wire Line
	4500 4900 6000 4900
Wire Wire Line
	4550 3850 9500 3850
Wire Wire Line
	4550 3750 9500 3750
Wire Wire Line
	4500 6150 5150 6150
$Comp
L 74xx:74LS04 U1
U 1 1 6819462F
P 5300 5500
F 0 "U1" H 5000 5350 50  0000 C CNN
F 1 "74LS04" H 5450 5350 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 5300 5500 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 5300 5500 50  0001 C CNN
	1    5300 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 5500 5600 5500
Wire Wire Line
	6000 4900 6000 5400
Wire Wire Line
	6000 5400 6700 5400
Wire Wire Line
	6100 4800 6100 5300
Wire Wire Line
	6100 5300 6700 5300
Wire Wire Line
	4500 4800 6100 4800
Wire Wire Line
	6200 4700 6200 5200
Wire Wire Line
	6200 5200 6700 5200
Wire Wire Line
	4500 4700 6200 4700
Wire Wire Line
	6300 4600 6300 5100
Wire Wire Line
	6300 5100 6700 5100
Wire Wire Line
	4500 4600 6300 4600
Wire Wire Line
	6400 4500 6400 5000
Wire Wire Line
	6400 5000 6700 5000
Wire Wire Line
	4500 4500 6400 4500
$Comp
L 74xx:74LS04 U1
U 2 1 6831FBEB
P 5950 5800
F 0 "U1" H 5650 5700 50  0000 C CNN
F 1 "74LS04" H 6150 5650 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 5950 5800 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 5950 5800 50  0001 C CNN
	2    5950 5800
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U1
U 3 1 68320958
P 9050 2950
F 0 "U1" H 9050 3267 50  0000 C CNN
F 1 "74LS04" H 9050 3176 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 9050 2950 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 9050 2950 50  0001 C CNN
	3    9050 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 8950 5900 8950
Wire Wire Line
	5450 7750 5900 7750
Wire Wire Line
	5900 8850 5900 8950
Wire Wire Line
	5900 7850 5900 7750
$Comp
L Connector_Generic:Conn_01x02 J4
U 1 1 69E8F9AA
P 2550 6050
F 0 "J4" H 2468 6267 50  0000 C CNN
F 1 "IN 5V" H 2468 6176 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Horizontal" H 2550 6050 50  0001 C CNN
F 3 "~" H 2550 6050 50  0001 C CNN
	1    2550 6050
	-1   0    0    -1  
$EndComp
NoConn ~ 2750 6150
$Comp
L power:+5V #PWR018
U 1 1 69F0D790
P 3500 6550
F 0 "#PWR018" H 3500 6400 50  0001 C CNN
F 1 "+5V" H 3515 6723 50  0000 C CNN
F 2 "" H 3500 6550 50  0001 C CNN
F 3 "" H 3500 6550 50  0001 C CNN
	1    3500 6550
	1    0    0    -1  
$EndComp
NoConn ~ 1750 1300
NoConn ~ 2800 1400
NoConn ~ 2800 1900
NoConn ~ 2800 2000
$Comp
L Memory_RAM2:SLIDE_SWITCH_3P S1
U 1 1 681AAF05
P 3650 5850
F 0 "S1" H 3650 5915 50  0000 C CNN
F 1 "IN / OUT" H 3650 5824 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 3650 5875 50  0001 C CNN
F 3 "" H 3650 5875 50  0001 C CNN
	1    3650 5850
	1    0    0    -1  
$EndComp
$Comp
L Connector:Barrel_Jack J5
U 1 1 681AC8D1
P 2650 6900
F 0 "J5" H 2707 7225 50  0000 C CNN
F 1 "EXT 5V" H 2707 7134 50  0000 C CNN
F 2 "Connector_BarrelJack:BarrelJack_Horizontal" H 2700 6860 50  0001 C CNN
F 3 "~" H 2700 6860 50  0001 C CNN
	1    2650 6900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 6550 3500 6650
Wire Wire Line
	3500 6650 3650 6650
Wire Wire Line
	3650 6650 3650 6200
Wire Wire Line
	2750 6050 3450 6050
Wire Wire Line
	4050 6050 3850 6050
$Comp
L power:GND #PWR023
U 1 1 683AA513
P 3150 7100
F 0 "#PWR023" H 3150 6850 50  0001 C CNN
F 1 "GND" H 3155 6927 50  0000 C CNN
F 2 "" H 3150 7100 50  0001 C CNN
F 3 "" H 3150 7100 50  0001 C CNN
	1    3150 7100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 6800 4050 6800
Wire Wire Line
	4050 6800 4050 6050
Wire Wire Line
	2950 7000 3150 7000
Wire Wire Line
	3150 7000 3150 7100
Wire Wire Line
	8650 2250 11350 2250
Wire Wire Line
	5150 5900 5150 6150
Connection ~ 5150 6150
Wire Wire Line
	5150 6150 8450 6150
$Comp
L Connector_Generic:Conn_01x02 J6
U 1 1 688A645E
P 3750 5000
F 0 "J6" H 3830 4992 50  0000 L CNN
F 1 "TEST_VOL" H 3830 4901 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 3750 5000 50  0001 C CNN
F 3 "~" H 3750 5000 50  0001 C CNN
	1    3750 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 5400 3150 5000
Wire Wire Line
	3150 5000 3550 5000
Wire Wire Line
	2550 5400 3150 5400
Wire Wire Line
	3400 5100 3400 5650
Wire Wire Line
	3400 5650 4250 5650
Wire Wire Line
	4250 5650 4250 5900
Wire Wire Line
	4250 5900 5150 5900
Wire Wire Line
	3400 5100 3550 5100
$Comp
L 74xx:74LS04 U1
U 4 1 689C013A
P 7550 7400
F 0 "U1" H 7550 7717 50  0000 C CNN
F 1 "74LS04" H 7550 7626 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 7550 7400 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 7550 7400 50  0001 C CNN
	4    7550 7400
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U1
U 5 1 689C842B
P 7550 7950
F 0 "U1" H 7550 8267 50  0000 C CNN
F 1 "74LS04" H 7550 8176 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 7550 7950 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 7550 7950 50  0001 C CNN
	5    7550 7950
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U1
U 6 1 689C9CD3
P 7550 8450
F 0 "U1" H 7550 8767 50  0000 C CNN
F 1 "74LS04" H 7550 8676 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 7550 8450 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 7550 8450 50  0001 C CNN
	6    7550 8450
	1    0    0    -1  
$EndComp
NoConn ~ 7850 7400
NoConn ~ 7850 7950
NoConn ~ 7850 8450
Wire Wire Line
	7050 7400 7050 7950
Wire Wire Line
	7050 7950 7250 7950
Wire Wire Line
	7050 7950 7050 8450
Wire Wire Line
	7050 8450 7250 8450
Connection ~ 7050 7950
Wire Wire Line
	7050 8450 7050 8800
Connection ~ 7050 8450
$Comp
L power:GND #PWR03
U 1 1 68A362EB
P 7050 8800
F 0 "#PWR03" H 7050 8550 50  0001 C CNN
F 1 "GND" H 7055 8627 50  0000 C CNN
F 2 "" H 7050 8800 50  0001 C CNN
F 3 "" H 7050 8800 50  0001 C CNN
	1    7050 8800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 7400 7250 7400
$EndSCHEMATC
