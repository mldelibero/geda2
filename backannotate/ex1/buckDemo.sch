v 20110115 2
C 40000 40000 0 0 0 title-B.sym
C 42400 48800 1 180 1 pot-1.sym
{
T 43200 47900 5 10 0 0 180 6 1
device=VARIABLE_RESISTOR
T 43000 48400 5 10 1 1 180 6 1
refdes=R3
T 43200 47300 5 10 0 0 180 6 1
footprint=th_3_pot
T 43100 48900 5 10 1 1 0 6 1
value=500k
}
T 44900 50200 9 10 1 0 0 0 2
Oscillator - Triangle out
	
N 47700 49400 49100 49400 4
{
T 47700 49400 5 10 0 1 0 0 1
netname=triangleWave
}
N 49100 49000 48500 49000 4
N 49900 50300 51800 50300 4
N 50100 49200 51200 49200 4
{
T 50100 49200 5 10 0 1 0 0 1
netname=buckGateDrive
}
T 47200 45800 9 10 1 0 0 0 1
Set Variable Duty Cycle
N 51800 49700 51800 50300 4
C 52700 48500 1 0 0 inductor-1.sym
{
T 52900 49000 5 10 0 0 0 0 1
device=INDUCTOR
T 52900 48800 5 10 1 1 0 0 1
refdes=L1
T 52900 49200 5 10 0 0 0 0 1
symversion=0.1
T 52700 48500 5 10 0 0 0 0 1
footprint=conn_2_200mil
}
C 52500 47600 1 90 0 diode-2.sym
{
T 51900 48000 5 10 0 0 90 0 1
device=DIODE
T 51900 47900 5 10 1 1 90 0 1
refdes=D1
T 52500 47600 5 10 0 0 0 0 1
footprint=conn_2_150mil
}
C 55100 47700 1 270 1 resistor-1.sym
{
T 55500 48000 5 10 0 0 90 2 1
device=RESISTOR
T 55400 47900 5 10 1 1 90 2 1
refdes=R8
T 55100 47700 5 10 0 0 0 0 1
footprint=conn_2_200mil_1437671_1.fp
}
N 51800 48700 51800 48600 4
N 51800 48600 52700 48600 4
N 52200 48600 52200 48500 4
N 52200 47600 55200 47600 4
N 54400 47600 54400 47700 4
N 55200 47600 55200 47700 4
N 53600 48600 55200 48600 4
{
T 53600 48600 5 10 0 0 0 0 1
netname=buck1
}
C 55100 45300 1 270 1 resistor-1.sym
{
T 55500 45600 5 10 0 0 90 2 1
device=RESISTOR
T 55400 45500 5 10 1 1 90 2 1
refdes=R9
T 55100 45300 5 10 0 0 0 0 1
footprint=conn_2_200mil_1437671_1.fp
}
N 51800 46300 51800 46200 4
N 51800 46200 52700 46200 4
N 52200 46200 52200 46100 4
N 52200 45200 55200 45200 4
N 54400 45200 54400 45300 4
N 55200 45200 55200 45300 4
N 53600 46200 55200 46200 4
{
T 53600 46200 5 10 0 0 0 0 1
netname=buck2
}
N 51200 46800 51200 49200 4
{
T 51200 46800 5 10 0 1 0 0 1
netname=buckGateDrive
}
N 51300 50300 51300 47500 4
N 51300 47500 51800 47500 4
T 56100 45600 9 10 1 0 0 0 1
buck 2
C 46400 48000 1 0 1 gnd-2.sym
N 47700 49400 47700 50300 4
{
T 47700 50000 5 10 0 1 0 0 1
netname=triangleWave
}
C 41600 49300 1 90 0 resistor-1.sym
{
T 41200 49600 5 10 0 0 90 0 1
device=RESISTOR
T 41300 49500 5 10 1 1 90 0 1
refdes=R1
T 41800 49500 5 10 1 1 90 0 1
value=10k
T 41600 49300 5 10 0 0 90 0 1
footprint=0805
}
C 41600 48000 1 90 0 resistor-1.sym
{
T 41200 48300 5 10 0 0 90 0 1
device=RESISTOR
T 41300 48200 5 10 1 1 90 0 1
refdes=R2
T 41800 48200 5 10 1 1 90 0 1
value=10k
T 41600 48000 5 10 0 0 90 0 1
footprint=0805
}
C 44700 48800 1 0 0 resistor-1.sym
{
T 45000 49200 5 10 0 0 0 0 1
device=RESISTOR
T 44900 49100 5 10 1 1 0 0 1
refdes=R5
T 44900 48600 5 10 1 1 0 0 1
value=68k
T 44700 48800 5 10 0 0 0 0 1
footprint=0805
}
C 41000 49700 1 90 1 voltage-3.sym
{
T 40300 49500 5 8 0 0 270 2 1
device=VOLTAGE_SOURCE
T 40500 49300 5 10 1 1 270 2 1
refdes=V1
T 41000 49700 5 10 0 0 0 0 1
footprint=conn_2_200mil_1437671_1.fp
}
C 40900 47700 1 0 1 gnd-2.sym
N 40800 48000 40800 48800 4
C 40600 50200 1 0 0 generic-power.sym
{
T 40800 50450 5 10 1 1 0 3 1
net=Vcc:1
}
C 43900 49300 1 0 0 generic-power.sym
{
T 44100 49550 5 10 1 1 0 3 1
net=Vcc:1
}
C 46100 49100 1 0 0 generic-power.sym
{
T 46300 49350 5 10 1 1 0 3 1
net=Vcc:1
}
C 44200 48200 1 0 1 gnd-2.sym
C 49700 50300 1 0 0 generic-power.sym
{
T 49900 50550 5 10 1 1 0 3 1
net=Vcc:1
}
C 49800 48800 1 180 0 generic-power.sym
{
T 49600 48550 5 10 1 1 180 3 1
net=Vcc:1
}
C 49500 50100 1 180 1 gnd-2.sym
C 52500 45200 1 90 0 diode-2.sym
{
T 51900 45600 5 10 0 0 90 0 1
device=DIODE
T 51900 45500 5 10 1 1 90 0 1
refdes=D2
T 52500 45200 5 10 0 0 0 0 1
footprint=conn_2_150mil
}
N 51800 47500 51800 47300 4
C 51200 49700 1 180 1 pmos_with_diode.sym
{
T 52100 49200 5 10 0 0 180 6 1
device=NPN_TRANSISTOR
T 52100 49200 5 10 1 1 180 6 1
refdes=Q1
T 51200 49700 5 10 0 0 0 0 1
footprint=TO220_3N_pmos
}
C 51200 47300 1 180 1 pmos_with_diode.sym
{
T 52100 46800 5 10 0 0 180 6 1
device=NPN_TRANSISTOR
T 52100 46800 5 10 1 1 180 6 1
refdes=Q2
T 51200 47300 5 10 0 0 0 0 1
footprint=TO220_3N_pmos
}
C 48800 48100 1 90 0 resistor-1.sym
{
T 48400 48400 5 10 0 0 90 0 1
device=RESISTOR
T 48500 48300 5 10 1 1 90 0 1
refdes=R7
T 49000 48300 5 10 1 1 90 0 1
value=100k
T 48800 48100 5 10 0 0 90 0 1
footprint=0805
}
C 48500 49100 1 180 0 resistor-1.sym
{
T 48200 48700 5 10 0 0 180 0 1
device=RESISTOR
T 48300 48800 5 10 1 1 180 0 1
refdes=R6
T 48300 49300 5 10 1 1 180 0 1
value=1k
T 48500 49100 5 10 0 0 180 0 1
footprint=0805
}
N 48700 48100 50200 48100 4
N 50200 48100 50200 49200 4
N 47600 47100 47600 49000 4
N 43300 48700 43600 48700 4
N 43400 47600 43400 48700 4
N 44600 47600 44600 48900 4
N 42900 48200 43400 48200 4
N 40800 50200 40800 49700 4
N 41500 50200 40800 50200 4
N 41500 49300 41500 48900 4
N 41500 48000 40800 48000 4
N 43600 49100 41500 49100 4
N 45800 48900 45600 48900 4
N 44700 48900 44600 48900 4
N 45700 48900 45700 49800 4
N 45700 49800 45800 49800 4
N 46700 49800 46800 49800 4
N 46800 46400 46800 49800 4
C 45800 49700 1 0 0 resistor-1.sym
{
T 46100 50100 5 10 0 0 0 0 1
device=RESISTOR
T 46000 50000 5 10 1 1 0 0 1
refdes=R17
T 46000 49500 5 10 1 1 0 0 1
value=100k
T 45800 49700 5 10 0 0 0 0 1
footprint=0805
}
N 42000 49100 42000 45900 4
N 42000 45900 45400 45900 4
N 45400 45900 45400 48500 4
N 42400 46400 42400 48700 4
N 44700 48900 44700 50300 4
N 44700 50300 47700 50300 4
C 43400 46500 1 180 0 resistor-1.sym
{
T 43100 46100 5 10 0 0 180 0 1
device=RESISTOR
T 43100 46300 5 10 1 1 180 0 1
refdes=R4
T 43200 46700 5 10 1 1 180 0 1
value=10k
T 43400 46500 5 10 0 0 180 0 1
footprint=0805
}
N 42400 46400 42500 46400 4
N 46800 46400 43400 46400 4
T 56100 48000 9 10 1 0 0 0 1
buck 1
C 44500 47800 1 180 0 capacitor-1.sym
{
T 44300 47100 5 10 0 0 180 0 1
device=CAPACITOR
T 44200 47300 5 10 1 1 180 0 1
refdes=C4
T 44300 46900 5 10 0 0 180 0 1
symversion=0.1
T 44500 47800 5 10 0 0 180 0 1
footprint=conn_2_150mil
T 43800 47800 5 10 1 1 0 0 1
value=150pF
}
N 44600 47600 44500 47600 4
N 43600 47600 43400 47600 4
N 45400 48500 45800 48500 4
C 41100 52300 1 270 0 capacitor-1.sym
{
T 41800 52100 5 10 0 0 270 0 1
device=CAPACITOR
T 41600 52000 5 10 1 1 270 0 1
refdes=C5
T 42000 52100 5 10 0 0 270 0 1
symversion=0.1
T 41100 52300 5 10 0 0 270 0 1
footprint=conn_2_150mil
T 41100 51600 5 10 1 1 90 0 1
value=150pF
}
C 40300 52300 1 270 0 capacitor-1.sym
{
T 41000 52100 5 10 0 0 270 0 1
device=CAPACITOR
T 40800 52000 5 10 1 1 270 0 1
refdes=C6
T 41200 52100 5 10 0 0 270 0 1
symversion=0.1
T 40300 52300 5 10 0 0 270 0 1
footprint=0805
T 40300 51600 5 10 1 1 90 0 1
value=150pF
}
C 41000 50900 1 0 1 gnd-2.sym
N 41300 51400 40500 51400 4
C 40700 52400 1 0 0 generic-power.sym
{
T 40900 52650 5 10 1 1 0 3 1
net=Vcc:1
}
N 40900 51200 40900 51400 4
N 40500 52300 41300 52300 4
N 40900 52300 40900 52400 4
C 42800 52300 1 270 0 capacitor-1.sym
{
T 43500 52100 5 10 0 0 270 0 1
device=CAPACITOR
T 43300 52000 5 10 1 1 270 0 1
refdes=C7
T 43700 52100 5 10 0 0 270 0 1
symversion=0.1
T 42800 52300 5 10 0 0 270 0 1
footprint=conn_2_150mil
T 42800 51600 5 10 1 1 90 0 1
value=150pF
}
C 42000 52300 1 270 0 capacitor-1.sym
{
T 42700 52100 5 10 0 0 270 0 1
device=CAPACITOR
T 42500 52000 5 10 1 1 270 0 1
refdes=C8
T 42900 52100 5 10 0 0 270 0 1
symversion=0.1
T 42000 52300 5 10 0 0 270 0 1
footprint=0805
T 42000 51600 5 10 1 1 90 0 1
value=150pF
}
C 42700 50900 1 0 1 gnd-2.sym
N 43000 51400 42200 51400 4
C 42400 52400 1 0 0 generic-power.sym
{
T 42600 52650 5 10 1 1 0 3 1
net=Vcc:1
}
N 42600 51200 42600 51400 4
N 42200 52300 43000 52300 4
N 42600 52300 42600 52400 4
C 44600 52300 1 270 0 capacitor-1.sym
{
T 45300 52100 5 10 0 0 270 0 1
device=CAPACITOR
T 45100 52000 5 10 1 1 270 0 1
refdes=C9
T 45500 52100 5 10 0 0 270 0 1
symversion=0.1
T 44600 52300 5 10 0 0 270 0 1
footprint=conn_2_150mil
T 44600 51600 5 10 1 1 90 0 1
value=150pF
}
C 43800 52300 1 270 0 capacitor-1.sym
{
T 44500 52100 5 10 0 0 270 0 1
device=CAPACITOR
T 44300 52000 5 10 1 1 270 0 1
refdes=C10
T 44700 52100 5 10 0 0 270 0 1
symversion=0.1
T 43800 52300 5 10 0 0 270 0 1
footprint=0805
T 43800 51600 5 10 1 1 90 0 1
value=150pF
}
C 44500 50900 1 0 1 gnd-2.sym
N 44800 51400 44000 51400 4
C 44200 52400 1 0 0 generic-power.sym
{
T 44400 52650 5 10 1 1 0 3 1
net=Vcc:1
}
N 44400 51200 44400 51400 4
N 44000 52300 44800 52300 4
N 44400 52300 44400 52400 4
T 42900 53000 9 10 1 0 0 0 1
Bypass Capacitors
C 43600 48500 1 0 0 tl082-1.sym
{
T 44275 49100 5 10 0 0 0 0 1
device=TL082
T 44300 49850 5 10 0 0 0 0 1
footprint=DIP8
T 43800 49400 5 10 1 1 0 0 1
refdes=U1
T 43600 48500 5 10 0 1 0 0 1
slot=2
}
C 45800 48300 1 0 0 tl082-1.sym
{
T 46475 48900 5 10 0 0 0 0 1
device=TL082
T 46500 49650 5 10 0 0 0 0 1
footprint=DIP8
T 46000 49200 5 10 1 1 0 0 1
refdes=U1
T 45800 48300 5 10 0 1 0 0 1
slot=1
}
C 49100 49600 1 180 1 tl082-1.sym
{
T 49775 49000 5 10 0 0 180 6 1
device=TL082
T 49800 48250 5 10 0 0 180 6 1
footprint=DIP8
T 49300 48700 5 10 1 1 180 6 1
refdes=U2
T 49100 49600 5 10 0 1 180 6 1
slot=1
}
C 53700 47300 1 0 1 gnd-2.sym
C 53600 44900 1 0 1 gnd-2.sym
C 48300 46600 1 90 0 pot-1.sym
{
T 47400 47400 5 10 0 0 270 8 1
device=VARIABLE_RESISTOR
T 47900 47200 5 10 1 1 270 8 1
refdes=R18
T 46800 47400 5 10 0 0 270 8 1
footprint=th_3_pot
T 48400 47300 5 10 1 1 90 8 1
value=500k
}
C 48400 47500 1 0 1 generic-power.sym
{
T 48200 47750 5 10 1 1 0 3 1
net=Vcc:1
}
C 48100 46300 1 0 0 gnd-2.sym
N 47600 47100 47700 47100 4
N 53600 48100 53700 48100 4
N 53700 48100 53700 48600 4
N 52600 48600 52600 48100 4
N 52600 48100 52700 48100 4
C 52700 48000 1 0 0 inductor-1.sym
{
T 52900 48500 5 10 0 0 0 0 1
device=INDUCTOR
T 52900 48300 5 10 1 1 0 0 1
refdes=L2
T 52900 48700 5 10 0 0 0 0 1
symversion=0.1
T 52700 48000 5 10 0 0 0 0 1
footprint=conn_2_1000mil
}
C 52700 46100 1 0 0 inductor-1.sym
{
T 52900 46600 5 10 0 0 0 0 1
device=INDUCTOR
T 52900 46400 5 10 1 1 0 0 1
refdes=L3
T 52900 46800 5 10 0 0 0 0 1
symversion=0.1
T 52700 46100 5 10 0 0 0 0 1
footprint=conn_2_200mil
}
C 52700 45600 1 0 0 inductor-1.sym
{
T 52900 46100 5 10 0 0 0 0 1
device=INDUCTOR
T 52900 45900 5 10 1 1 0 0 1
refdes=L4
T 52900 46300 5 10 0 0 0 0 1
symversion=0.1
T 52700 45600 5 10 0 0 0 0 1
footprint=conn_2_1000mil
}
N 53600 45700 53700 45700 4
N 53700 45700 53700 46200 4
N 52700 45700 52600 45700 4
N 52600 45700 52600 46200 4
C 54200 48600 1 270 0 capacitor-2.sym
{
T 54900 48400 5 10 0 0 270 0 1
device=POLARIZED_CAPACITOR
T 54700 48400 5 10 1 1 270 0 1
refdes=C2
T 55100 48400 5 10 0 0 270 0 1
symversion=0.1
T 54200 48600 5 10 0 1 0 0 1
footprint=jewelryCap
}
C 54200 46200 1 270 0 capacitor-2.sym
{
T 54900 46000 5 10 0 0 270 0 1
device=POLARIZED_CAPACITOR
T 54700 46000 5 10 1 1 270 0 1
refdes=C3
T 55100 46000 5 10 0 0 270 0 1
symversion=0.1
T 54200 46200 5 10 0 1 0 0 1
footprint=jewelryCap
}
C 45800 52300 1 270 0 capacitor-1.sym
{
T 46500 52100 5 10 0 0 270 0 1
device=CAPACITOR
T 46300 52000 5 10 1 1 270 0 1
refdes=C11
T 46700 52100 5 10 0 0 270 0 1
symversion=0.1
T 45800 52300 5 10 0 0 270 0 1
footprint=conn_2_150mil
T 45800 51600 5 10 1 1 90 0 1
value=150pF
}
C 45800 52300 1 0 0 generic-power.sym
{
T 46000 52550 5 10 1 1 0 3 1
net=Vcc:1
}
C 46100 51100 1 0 1 gnd-2.sym
N 50800 49400 50800 49200 4
N 49600 49800 49600 49600 4
N 49100 49900 49100 49700 4
N 49100 49700 49600 49700 4
N 47200 48300 47600 48300 4
T 42400 50100 9 10 1 0 0 0 1
Set Variable Frequency
C 46900 48300 1 0 0 testPoint.sym
{
T 47500 49000 5 10 0 1 0 0 1
footprint=testPoint_5016.fp
T 47100 48100 5 10 1 1 0 0 1
refdes=tp1
}
C 48800 49900 1 0 0 testPoint.sym
{
T 49400 50600 5 10 0 1 0 0 1
footprint=testPoint_5016.fp
T 49000 50500 5 10 1 1 0 0 1
refdes=tp2
T 48800 49900 5 10 0 0 0 0 1
device=testPoint
}
C 50500 49400 1 0 0 testPoint.sym
{
T 51100 50100 5 10 0 1 0 0 1
footprint=testPoint_5016.fp
T 50700 50000 5 10 1 1 0 0 1
refdes=tp3
}
C 54500 48600 1 0 0 testPoint.sym
{
T 55100 49300 5 10 0 1 0 0 1
footprint=testPoint_5016.fp
T 54700 49200 5 10 1 1 0 0 1
refdes=tp4
}
C 55100 47600 1 180 0 testPoint.sym
{
T 54500 46900 5 10 0 1 180 0 1
footprint=testPoint_5016.fp
T 54600 47100 5 10 1 1 180 0 1
refdes=tp5
}
C 54500 46200 1 0 0 testPoint.sym
{
T 55100 46900 5 10 0 1 0 0 1
footprint=testPoint_5016.fp
T 55000 46700 5 10 1 1 0 0 1
refdes=tp6
}
C 55100 45200 1 180 0 testPoint.sym
{
T 54500 44500 5 10 0 1 180 0 1
footprint=testPoint_5016.fp
T 54900 44600 5 10 1 1 180 0 1
refdes=tp7
}
C 46900 50300 1 0 0 testPoint.sym
{
T 47500 51000 5 10 0 1 0 0 1
footprint=testPoint_5016.fp
T 47100 50100 5 10 1 1 0 0 1
refdes=tp8
}
C 65500 53400 1 270 1 resistor-1.sym
{
T 65900 53700 5 10 0 0 90 2 1
device=RESISTOR
T 65800 53600 5 10 1 1 90 2 1
refdes=R1
T 65500 53400 5 10 0 0 0 0 1
footprint=conn_2_200mil_1437671_1.fp
}
N 62200 54400 62200 54300 4
N 62200 54300 63100 54300 4
N 62600 54300 62600 54200 4
N 62600 53300 65600 53300 4
N 64800 53300 64800 53400 4
N 65600 53300 65600 53400 4
N 64000 54300 65600 54300 4
{
T 64000 54300 5 10 0 0 0 0 1
netname=buck2
}
C 62900 53300 1 90 0 diode-2.sym
{
T 62300 53700 5 10 0 0 90 0 1
device=DIODE
T 62300 53600 5 10 1 1 90 0 1
refdes=D1
T 62900 53300 5 10 0 0 0 0 1
footprint=conn_2_150mil
}
C 61600 55400 1 180 1 pmos_with_diode.sym
{
T 62500 54900 5 10 0 0 180 6 1
device=NPN_TRANSISTOR
T 62500 54900 5 10 1 1 180 6 1
refdes=Q1
T 61600 55400 5 10 0 0 0 0 1
footprint=TO220_3N_pmos
}
C 64000 53000 1 0 1 gnd-2.sym
C 63100 54200 1 0 0 inductor-1.sym
{
T 63300 54700 5 10 0 0 0 0 1
device=INDUCTOR
T 63300 54500 5 10 1 1 0 0 1
refdes=L1
T 63300 54900 5 10 0 0 0 0 1
symversion=0.1
T 63100 54200 5 10 0 0 0 0 1
footprint=conn_2_200mil
}
C 63100 53700 1 0 0 inductor-1.sym
{
T 63300 54200 5 10 0 0 0 0 1
device=INDUCTOR
T 63300 54000 5 10 1 1 0 0 1
refdes=L2
T 63300 54400 5 10 0 0 0 0 1
symversion=0.1
T 63100 53700 5 10 0 0 0 0 1
footprint=conn_2_1000mil
}
N 64000 53800 64100 53800 4
N 64100 53800 64100 54300 4
N 63100 53800 63000 53800 4
N 63000 53800 63000 54300 4
C 64600 54300 1 270 0 capacitor-2.sym
{
T 65300 54100 5 10 0 0 270 0 1
device=POLARIZED_CAPACITOR
T 65100 54100 5 10 1 1 270 0 1
refdes=C1
T 65500 54100 5 10 0 0 270 0 1
symversion=0.1
T 64600 54300 5 10 0 1 0 0 1
footprint=jewelryCap
}
C 64900 54300 1 0 0 testPoint.sym
{
T 65500 55000 5 10 0 1 0 0 1
footprint=testPoint_5016.fp
T 65400 54800 5 10 1 1 0 0 1
refdes=tp1
}
C 65500 53300 1 180 0 testPoint.sym
{
T 64900 52600 5 10 0 1 180 0 1
footprint=testPoint_5016.fp
T 65300 52700 5 10 1 1 180 0 1
refdes=tp2
}
C 63000 55800 1 0 0 capacitor-1.sym
{
T 63200 56500 5 10 0 0 0 0 1
device=CAPACITOR
T 63300 56300 5 10 1 1 0 0 1
refdes=C2
T 63200 56700 5 10 0 0 0 0 1
symversion=0.1
T 63000 55800 5 10 0 0 0 0 1
footprint=0805
T 63700 55800 5 10 1 1 180 0 1
value=150pF
}
C 64200 56100 1 90 1 gnd-2.sym
N 63000 56000 62200 56000 4
N 62200 56000 62200 55400 4
C 75300 57100 1 270 1 resistor-1.sym
{
T 75700 57400 5 10 0 0 90 2 1
device=RESISTOR
T 75600 57300 5 10 1 1 90 2 1
refdes=R_Bx1
T 75300 57100 5 10 0 0 0 0 1
footprint=conn_2_200mil_1437671_1.fp
}
N 72000 58100 72000 58000 4
N 72000 58000 72900 58000 4
N 72400 58000 72400 57900 4
N 72400 57000 75400 57000 4
N 74600 57000 74600 57100 4
N 75400 57000 75400 57100 4
N 73800 58000 75400 58000 4
{
T 73800 58000 5 10 0 0 0 0 1
netname=buck2
}
C 72700 57000 1 90 0 diode-2.sym
{
T 72100 57400 5 10 0 0 90 0 1
device=DIODE
T 72100 57300 5 10 1 1 90 0 1
refdes=D_Bx1
T 72700 57000 5 10 0 0 0 0 1
footprint=conn_2_150mil
}
C 71400 59100 1 180 1 pmos_with_diode.sym
{
T 72300 58600 5 10 0 0 180 6 1
device=NPN_TRANSISTOR
T 72300 58600 5 10 1 1 180 6 1
refdes=Q_Bx1
T 71400 59100 5 10 0 0 0 0 1
footprint=TO220_3N_pmos
}
C 73800 56700 1 0 1 gnd-2.sym
C 72900 57900 1 0 0 inductor-1.sym
{
T 73100 58400 5 10 0 0 0 0 1
device=INDUCTOR
T 73100 58200 5 10 1 1 0 0 1
refdes=L_Bx1
T 73100 58600 5 10 0 0 0 0 1
symversion=0.1
T 72900 57900 5 10 0 0 0 0 1
footprint=conn_2_200mil
}
C 72900 57400 1 0 0 inductor-1.sym
{
T 73100 57900 5 10 0 0 0 0 1
device=INDUCTOR
T 73100 57700 5 10 1 1 0 0 1
refdes=L_Bx2
T 73100 58100 5 10 0 0 0 0 1
symversion=0.1
T 72900 57400 5 10 0 0 0 0 1
footprint=conn_2_1000mil
}
N 73800 57500 73900 57500 4
N 73900 57500 73900 58000 4
N 72900 57500 72800 57500 4
N 72800 57500 72800 58000 4
C 74400 58000 1 270 0 capacitor-2.sym
{
T 75100 57800 5 10 0 0 270 0 1
device=POLARIZED_CAPACITOR
T 74900 57800 5 10 1 1 270 0 1
refdes=C_Bx1
T 75300 57800 5 10 0 0 270 0 1
symversion=0.1
T 74400 58000 5 10 0 1 0 0 1
footprint=jewelryCap
}
C 74700 58000 1 0 0 testPoint.sym
{
T 75300 58700 5 10 0 1 0 0 1
footprint=testPoint_5016.fp
T 75200 58500 5 10 1 1 0 0 1
refdes=tp_Bx1
}
C 75300 57000 1 180 0 testPoint.sym
{
T 74700 56300 5 10 0 1 180 0 1
footprint=testPoint_5016.fp
T 75100 56400 5 10 1 1 180 0 1
refdes=tp_Bx2
}
C 72800 59500 1 0 0 capacitor-1.sym
{
T 73000 60200 5 10 0 0 0 0 1
device=CAPACITOR
T 73100 60000 5 10 1 1 0 0 1
refdes=C_Bx2
T 73000 60400 5 10 0 0 0 0 1
symversion=0.1
T 72800 59500 5 10 0 0 0 0 1
footprint=0805
T 73500 59500 5 10 1 1 180 0 1
value=150pF
}
C 74000 59800 1 90 1 gnd-2.sym
N 72800 59700 72000 59700 4
N 72000 59700 72000 59100 4
C 85100 60800 1 270 1 resistor-1.sym
{
T 85500 61100 5 10 0 0 90 2 1
device=RESISTOR
T 85400 61000 5 10 1 1 90 2 1
refdes=R_Cx1
T 85100 60800 5 10 0 0 0 0 1
footprint=conn_2_200mil_1437671_1.fp
}
N 81800 61800 81800 61700 4
N 81800 61700 82700 61700 4
N 82200 61700 82200 61600 4
N 82200 60700 85200 60700 4
N 84400 60700 84400 60800 4
N 85200 60700 85200 60800 4
N 83600 61700 85200 61700 4
{
T 83600 61700 5 10 0 0 0 0 1
netname=buck2
}
C 82500 60700 1 90 0 diode-2.sym
{
T 81900 61100 5 10 0 0 90 0 1
device=DIODE
T 81900 61000 5 10 1 1 90 0 1
refdes=D_Cx1
T 82500 60700 5 10 0 0 0 0 1
footprint=conn_2_150mil
}
C 81200 62800 1 180 1 pmos_with_diode.sym
{
T 82100 62300 5 10 0 0 180 6 1
device=NPN_TRANSISTOR
T 82100 62300 5 10 1 1 180 6 1
refdes=Q_Cx1
T 81200 62800 5 10 0 0 0 0 1
footprint=TO220_3N_pmos
}
C 83600 60400 1 0 1 gnd-2.sym
C 82700 61600 1 0 0 inductor-1.sym
{
T 82900 62100 5 10 0 0 0 0 1
device=INDUCTOR
T 82900 61900 5 10 1 1 0 0 1
refdes=L_Cx1
T 82900 62300 5 10 0 0 0 0 1
symversion=0.1
T 82700 61600 5 10 0 0 0 0 1
footprint=conn_2_200mil
}
C 82700 61100 1 0 0 inductor-1.sym
{
T 82900 61600 5 10 0 0 0 0 1
device=INDUCTOR
T 82900 61400 5 10 1 1 0 0 1
refdes=L_Cx2
T 82900 61800 5 10 0 0 0 0 1
symversion=0.1
T 82700 61100 5 10 0 0 0 0 1
footprint=conn_2_1000mil
}
N 83600 61200 83700 61200 4
N 83700 61200 83700 61700 4
N 82700 61200 82600 61200 4
N 82600 61200 82600 61700 4
C 84200 61700 1 270 0 capacitor-2.sym
{
T 84900 61500 5 10 0 0 270 0 1
device=POLARIZED_CAPACITOR
T 84700 61500 5 10 1 1 270 0 1
refdes=C_Cx1
T 85100 61500 5 10 0 0 270 0 1
symversion=0.1
T 84200 61700 5 10 0 1 0 0 1
footprint=jewelryCap
}
C 84500 61700 1 0 0 testPoint.sym
{
T 85100 62400 5 10 0 1 0 0 1
footprint=testPoint_5016.fp
T 85000 62200 5 10 1 1 0 0 1
refdes=tp_Cx1
}
C 85100 60700 1 180 0 testPoint.sym
{
T 84500 60000 5 10 0 1 180 0 1
footprint=testPoint_5016.fp
T 84900 60100 5 10 1 1 180 0 1
refdes=tp_Cx2
}
C 82600 63200 1 0 0 capacitor-1.sym
{
T 82800 63900 5 10 0 0 0 0 1
device=CAPACITOR
T 82900 63700 5 10 1 1 0 0 1
refdes=C_Cx2
T 82800 64100 5 10 0 0 0 0 1
symversion=0.1
T 82600 63200 5 10 0 0 0 0 1
footprint=0805
T 83300 63200 5 10 1 1 180 0 1
value=150pF
}
C 83800 63500 1 90 1 gnd-2.sym
N 82600 63400 81800 63400 4
N 81800 63400 81800 62800 4
C 94900 64500 1 270 1 resistor-1.sym
{
T 95300 64800 5 10 0 0 90 2 1
device=RESISTOR
T 95200 64700 5 10 1 1 90 2 1
refdes=R_Dx1
T 94900 64500 5 10 0 0 0 0 1
footprint=conn_2_200mil_1437671_1.fp
}
N 91600 65500 91600 65400 4
N 91600 65400 92500 65400 4
N 92000 65400 92000 65300 4
N 92000 64400 95000 64400 4
N 94200 64400 94200 64500 4
N 95000 64400 95000 64500 4
N 93400 65400 95000 65400 4
{
T 93400 65400 5 10 0 0 0 0 1
netname=buck2
}
C 92300 64400 1 90 0 diode-2.sym
{
T 91700 64800 5 10 0 0 90 0 1
device=DIODE
T 91700 64700 5 10 1 1 90 0 1
refdes=D_Dx1
T 92300 64400 5 10 0 0 0 0 1
footprint=conn_2_150mil
}
C 91000 66500 1 180 1 pmos_with_diode.sym
{
T 91900 66000 5 10 0 0 180 6 1
device=NPN_TRANSISTOR
T 91900 66000 5 10 1 1 180 6 1
refdes=Q_Dx1
T 91000 66500 5 10 0 0 0 0 1
footprint=TO220_3N_pmos
}
C 93400 64100 1 0 1 gnd-2.sym
C 92500 65300 1 0 0 inductor-1.sym
{
T 92700 65800 5 10 0 0 0 0 1
device=INDUCTOR
T 92700 65600 5 10 1 1 0 0 1
refdes=L_Dx1
T 92700 66000 5 10 0 0 0 0 1
symversion=0.1
T 92500 65300 5 10 0 0 0 0 1
footprint=conn_2_200mil
}
C 92500 64800 1 0 0 inductor-1.sym
{
T 92700 65300 5 10 0 0 0 0 1
device=INDUCTOR
T 92700 65100 5 10 1 1 0 0 1
refdes=L_Dx2
T 92700 65500 5 10 0 0 0 0 1
symversion=0.1
T 92500 64800 5 10 0 0 0 0 1
footprint=conn_2_1000mil
}
N 93400 64900 93500 64900 4
N 93500 64900 93500 65400 4
N 92500 64900 92400 64900 4
N 92400 64900 92400 65400 4
C 94000 65400 1 270 0 capacitor-2.sym
{
T 94700 65200 5 10 0 0 270 0 1
device=POLARIZED_CAPACITOR
T 94500 65200 5 10 1 1 270 0 1
refdes=C_Dx1
T 94900 65200 5 10 0 0 270 0 1
symversion=0.1
T 94000 65400 5 10 0 1 0 0 1
footprint=jewelryCap
}
C 94300 65400 1 0 0 testPoint.sym
{
T 94900 66100 5 10 0 1 0 0 1
footprint=testPoint_5016.fp
T 94800 65900 5 10 1 1 0 0 1
refdes=tp_Dx1
}
C 94900 64400 1 180 0 testPoint.sym
{
T 94300 63700 5 10 0 1 180 0 1
footprint=testPoint_5016.fp
T 94700 63800 5 10 1 1 180 0 1
refdes=tp_Dx2
}
C 92400 66900 1 0 0 capacitor-1.sym
{
T 92600 67600 5 10 0 0 0 0 1
device=CAPACITOR
T 92700 67400 5 10 1 1 0 0 1
refdes=C_Dx2
T 92600 67800 5 10 0 0 0 0 1
symversion=0.1
T 92400 66900 5 10 0 0 0 0 1
footprint=0805
T 93100 66900 5 10 1 1 180 0 1
value=150pF
}
C 93600 67200 1 90 1 gnd-2.sym
N 92400 67100 91600 67100 4
N 91600 67100 91600 66500 4
C 104700 68200 1 270 1 resistor-1.sym
{
T 105100 68500 5 10 0 0 90 2 1
device=RESISTOR
T 105000 68400 5 10 1 1 90 2 1
refdes=R_Ax1
T 104700 68200 5 10 0 0 0 0 1
footprint=conn_2_200mil_1437671_1.fp
}
N 101400 69200 101400 69100 4
N 101400 69100 102300 69100 4
N 101800 69100 101800 69000 4
N 101800 68100 104800 68100 4
N 104000 68100 104000 68200 4
N 104800 68100 104800 68200 4
N 103200 69100 104800 69100 4
{
T 103200 69100 5 10 0 0 0 0 1
netname=buck2
}
C 102100 68100 1 90 0 diode-2.sym
{
T 101500 68500 5 10 0 0 90 0 1
device=DIODE
T 101500 68400 5 10 1 1 90 0 1
refdes=D_Ax1
T 102100 68100 5 10 0 0 0 0 1
footprint=conn_2_150mil
}
C 100800 70200 1 180 1 pmos_with_diode.sym
{
T 101700 69700 5 10 0 0 180 6 1
device=NPN_TRANSISTOR
T 101700 69700 5 10 1 1 180 6 1
refdes=Q_Ax1
T 100800 70200 5 10 0 0 0 0 1
footprint=TO220_3N_pmos
}
C 103200 67800 1 0 1 gnd-2.sym
C 102300 69000 1 0 0 inductor-1.sym
{
T 102500 69500 5 10 0 0 0 0 1
device=INDUCTOR
T 102500 69300 5 10 1 1 0 0 1
refdes=L_Ax1
T 102500 69700 5 10 0 0 0 0 1
symversion=0.1
T 102300 69000 5 10 0 0 0 0 1
footprint=conn_2_200mil
}
C 102300 68500 1 0 0 inductor-1.sym
{
T 102500 69000 5 10 0 0 0 0 1
device=INDUCTOR
T 102500 68800 5 10 1 1 0 0 1
refdes=L_Ax2
T 102500 69200 5 10 0 0 0 0 1
symversion=0.1
T 102300 68500 5 10 0 0 0 0 1
footprint=conn_2_1000mil
}
N 103200 68600 103300 68600 4
N 103300 68600 103300 69100 4
N 102300 68600 102200 68600 4
N 102200 68600 102200 69100 4
C 103800 69100 1 270 0 capacitor-2.sym
{
T 104500 68900 5 10 0 0 270 0 1
device=POLARIZED_CAPACITOR
T 104300 68900 5 10 1 1 270 0 1
refdes=C_Ax1
T 104700 68900 5 10 0 0 270 0 1
symversion=0.1
T 103800 69100 5 10 0 1 0 0 1
footprint=jewelryCap
}
C 104100 69100 1 0 0 testPoint.sym
{
T 104700 69800 5 10 0 1 0 0 1
footprint=testPoint_5016.fp
T 104600 69600 5 10 1 1 0 0 1
refdes=tp_Ax1
}
C 104700 68100 1 180 0 testPoint.sym
{
T 104100 67400 5 10 0 1 180 0 1
footprint=testPoint_5016.fp
T 104500 67500 5 10 1 1 180 0 1
refdes=tp_Ax2
}
C 102200 70600 1 0 0 capacitor-1.sym
{
T 102400 71300 5 10 0 0 0 0 1
device=CAPACITOR
T 102500 71100 5 10 1 1 0 0 1
refdes=C_Ax2
T 102400 71500 5 10 0 0 0 0 1
symversion=0.1
T 102200 70600 5 10 0 0 0 0 1
footprint=0805
T 102900 70600 5 10 1 1 180 0 1
value=150pF
}
C 103400 70900 1 90 1 gnd-2.sym
N 102200 70800 101400 70800 4
N 101400 70800 101400 70200 4
C 44200 71900 1 270 1 resistor-1.sym
{
T 44600 72200 5 10 0 0 90 2 1
device=RESISTOR
T 44500 72100 5 10 1 1 90 2 1
refdes=R_Bx1
T 44200 71900 5 10 0 0 0 0 1
footprint=conn_2_200mil_1437671_1.fp
}
N 40900 72900 40900 72800 4
N 40900 72800 41800 72800 4
N 41300 72800 41300 72700 4
N 41300 71800 44300 71800 4
N 43500 71800 43500 71900 4
N 44300 71800 44300 71900 4
N 42700 72800 44300 72800 4
{
T 42700 72800 5 10 0 0 0 0 1
netname=buck2
}
C 41600 71800 1 90 0 diode-2.sym
{
T 41000 72200 5 10 0 0 90 0 1
device=DIODE
T 41000 72100 5 10 1 1 90 0 1
refdes=D_Bx1
T 41600 71800 5 10 0 0 0 0 1
footprint=conn_2_150mil
}
C 40300 73900 1 180 1 pmos_with_diode.sym
{
T 41200 73400 5 10 0 0 180 6 1
device=NPN_TRANSISTOR
T 41200 73400 5 10 1 1 180 6 1
refdes=Q_Bx1
T 40300 73900 5 10 0 0 0 0 1
footprint=TO220_3N_pmos
}
C 42700 71500 1 0 1 gnd-2.sym
C 41800 72700 1 0 0 inductor-1.sym
{
T 42000 73200 5 10 0 0 0 0 1
device=INDUCTOR
T 42000 73000 5 10 1 1 0 0 1
refdes=L_Bx1
T 42000 73400 5 10 0 0 0 0 1
symversion=0.1
T 41800 72700 5 10 0 0 0 0 1
footprint=conn_2_200mil
}
C 41800 72200 1 0 0 inductor-1.sym
{
T 42000 72700 5 10 0 0 0 0 1
device=INDUCTOR
T 42000 72500 5 10 1 1 0 0 1
refdes=L_Bx2
T 42000 72900 5 10 0 0 0 0 1
symversion=0.1
T 41800 72200 5 10 0 0 0 0 1
footprint=conn_2_1000mil
}
N 42700 72300 42800 72300 4
N 42800 72300 42800 72800 4
N 41800 72300 41700 72300 4
N 41700 72300 41700 72800 4
C 43300 72800 1 270 0 capacitor-2.sym
{
T 44000 72600 5 10 0 0 270 0 1
device=POLARIZED_CAPACITOR
T 43800 72600 5 10 1 1 270 0 1
refdes=C_Bx1
T 44200 72600 5 10 0 0 270 0 1
symversion=0.1
T 43300 72800 5 10 0 1 0 0 1
footprint=jewelryCap
}
C 43600 72800 1 0 0 testPoint.sym
{
T 44200 73500 5 10 0 1 0 0 1
footprint=testPoint_5016.fp
T 44100 73300 5 10 1 1 0 0 1
refdes=tp_Bx1
}
C 44200 71800 1 180 0 testPoint.sym
{
T 43600 71100 5 10 0 1 180 0 1
footprint=testPoint_5016.fp
T 44000 71200 5 10 1 1 180 0 1
refdes=tp_Bx2
}
C 41700 74300 1 0 0 capacitor-1.sym
{
T 41900 75000 5 10 0 0 0 0 1
device=CAPACITOR
T 42000 74800 5 10 1 1 0 0 1
refdes=C_Bx2
T 41900 75200 5 10 0 0 0 0 1
symversion=0.1
T 41700 74300 5 10 0 0 0 0 1
footprint=0805
T 42400 74300 5 10 1 1 180 0 1
value=150pF
}
C 42900 74600 1 90 1 gnd-2.sym
N 41700 74500 40900 74500 4
N 40900 74500 40900 73900 4
C 44200 75600 1 270 1 resistor-1.sym
{
T 44600 75900 5 10 0 0 90 2 1
device=RESISTOR
T 44500 75800 5 10 1 1 90 2 1
refdes=R_Cx1
T 44200 75600 5 10 0 0 0 0 1
footprint=conn_2_200mil_1437671_1.fp
}
N 40900 76600 40900 76500 4
N 40900 76500 41800 76500 4
N 41300 76500 41300 76400 4
N 41300 75500 44300 75500 4
N 43500 75500 43500 75600 4
N 44300 75500 44300 75600 4
N 42700 76500 44300 76500 4
{
T 42700 76500 5 10 0 0 0 0 1
netname=buck2
}
C 41600 75500 1 90 0 diode-2.sym
{
T 41000 75900 5 10 0 0 90 0 1
device=DIODE
T 41000 75800 5 10 1 1 90 0 1
refdes=D_Cx1
T 41600 75500 5 10 0 0 0 0 1
footprint=conn_2_150mil
}
C 40300 77600 1 180 1 pmos_with_diode.sym
{
T 41200 77100 5 10 0 0 180 6 1
device=NPN_TRANSISTOR
T 41200 77100 5 10 1 1 180 6 1
refdes=Q_Cx1
T 40300 77600 5 10 0 0 0 0 1
footprint=TO220_3N_pmos
}
C 42700 75200 1 0 1 gnd-2.sym
C 41800 76400 1 0 0 inductor-1.sym
{
T 42000 76900 5 10 0 0 0 0 1
device=INDUCTOR
T 42000 76700 5 10 1 1 0 0 1
refdes=L_Cx1
T 42000 77100 5 10 0 0 0 0 1
symversion=0.1
T 41800 76400 5 10 0 0 0 0 1
footprint=conn_2_200mil
}
C 41800 75900 1 0 0 inductor-1.sym
{
T 42000 76400 5 10 0 0 0 0 1
device=INDUCTOR
T 42000 76200 5 10 1 1 0 0 1
refdes=L_Cx2
T 42000 76600 5 10 0 0 0 0 1
symversion=0.1
T 41800 75900 5 10 0 0 0 0 1
footprint=conn_2_1000mil
}
N 42700 76000 42800 76000 4
N 42800 76000 42800 76500 4
N 41800 76000 41700 76000 4
N 41700 76000 41700 76500 4
C 43300 76500 1 270 0 capacitor-2.sym
{
T 44000 76300 5 10 0 0 270 0 1
device=POLARIZED_CAPACITOR
T 43800 76300 5 10 1 1 270 0 1
refdes=C_Cx1
T 44200 76300 5 10 0 0 270 0 1
symversion=0.1
T 43300 76500 5 10 0 1 0 0 1
footprint=jewelryCap
}
C 43600 76500 1 0 0 testPoint.sym
{
T 44200 77200 5 10 0 1 0 0 1
footprint=testPoint_5016.fp
T 44100 77000 5 10 1 1 0 0 1
refdes=tp_Cx1
}
C 44200 75500 1 180 0 testPoint.sym
{
T 43600 74800 5 10 0 1 180 0 1
footprint=testPoint_5016.fp
T 44000 74900 5 10 1 1 180 0 1
refdes=tp_Cx2
}
C 41700 78000 1 0 0 capacitor-1.sym
{
T 41900 78700 5 10 0 0 0 0 1
device=CAPACITOR
T 42000 78500 5 10 1 1 0 0 1
refdes=C_Cx2
T 41900 78900 5 10 0 0 0 0 1
symversion=0.1
T 41700 78000 5 10 0 0 0 0 1
footprint=0805
T 42400 78000 5 10 1 1 180 0 1
value=150pF
}
C 42900 78300 1 90 1 gnd-2.sym
N 41700 78200 40900 78200 4
N 40900 78200 40900 77600 4
C 44200 79300 1 270 1 resistor-1.sym
{
T 44600 79600 5 10 0 0 90 2 1
device=RESISTOR
T 44500 79500 5 10 1 1 90 2 1
refdes=R_Dx1
T 44200 79300 5 10 0 0 0 0 1
footprint=conn_2_200mil_1437671_1.fp
}
N 40900 80300 40900 80200 4
N 40900 80200 41800 80200 4
N 41300 80200 41300 80100 4
N 41300 79200 44300 79200 4
N 43500 79200 43500 79300 4
N 44300 79200 44300 79300 4
N 42700 80200 44300 80200 4
{
T 42700 80200 5 10 0 0 0 0 1
netname=buck2
}
C 41600 79200 1 90 0 diode-2.sym
{
T 41000 79600 5 10 0 0 90 0 1
device=DIODE
T 41000 79500 5 10 1 1 90 0 1
refdes=D_Dx1
T 41600 79200 5 10 0 0 0 0 1
footprint=conn_2_150mil
}
C 40300 81300 1 180 1 pmos_with_diode.sym
{
T 41200 80800 5 10 0 0 180 6 1
device=NPN_TRANSISTOR
T 41200 80800 5 10 1 1 180 6 1
refdes=Q_Dx1
T 40300 81300 5 10 0 0 0 0 1
footprint=TO220_3N_pmos
}
C 42700 78900 1 0 1 gnd-2.sym
C 41800 80100 1 0 0 inductor-1.sym
{
T 42000 80600 5 10 0 0 0 0 1
device=INDUCTOR
T 42000 80400 5 10 1 1 0 0 1
refdes=L_Dx1
T 42000 80800 5 10 0 0 0 0 1
symversion=0.1
T 41800 80100 5 10 0 0 0 0 1
footprint=conn_2_200mil
}
C 41800 79600 1 0 0 inductor-1.sym
{
T 42000 80100 5 10 0 0 0 0 1
device=INDUCTOR
T 42000 79900 5 10 1 1 0 0 1
refdes=L_Dx2
T 42000 80300 5 10 0 0 0 0 1
symversion=0.1
T 41800 79600 5 10 0 0 0 0 1
footprint=conn_2_1000mil
}
N 42700 79700 42800 79700 4
N 42800 79700 42800 80200 4
N 41800 79700 41700 79700 4
N 41700 79700 41700 80200 4
C 43300 80200 1 270 0 capacitor-2.sym
{
T 44000 80000 5 10 0 0 270 0 1
device=POLARIZED_CAPACITOR
T 43800 80000 5 10 1 1 270 0 1
refdes=C_Dx1
T 44200 80000 5 10 0 0 270 0 1
symversion=0.1
T 43300 80200 5 10 0 1 0 0 1
footprint=jewelryCap
}
C 43600 80200 1 0 0 testPoint.sym
{
T 44200 80900 5 10 0 1 0 0 1
footprint=testPoint_5016.fp
T 44100 80700 5 10 1 1 0 0 1
refdes=tp_Dx1
}
C 44200 79200 1 180 0 testPoint.sym
{
T 43600 78500 5 10 0 1 180 0 1
footprint=testPoint_5016.fp
T 44000 78600 5 10 1 1 180 0 1
refdes=tp_Dx2
}
C 41700 81700 1 0 0 capacitor-1.sym
{
T 41900 82400 5 10 0 0 0 0 1
device=CAPACITOR
T 42000 82200 5 10 1 1 0 0 1
refdes=C_Dx2
T 41900 82600 5 10 0 0 0 0 1
symversion=0.1
T 41700 81700 5 10 0 0 0 0 1
footprint=0805
T 42400 81700 5 10 1 1 180 0 1
value=150pF
}
C 42900 82000 1 90 1 gnd-2.sym
N 41700 81900 40900 81900 4
N 40900 81900 40900 81300 4
