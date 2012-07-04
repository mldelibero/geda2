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