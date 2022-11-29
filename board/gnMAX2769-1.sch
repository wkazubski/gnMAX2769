v 20130925 2
C 40000 40000 0 0 0 title-A4.sym
C 43400 44800 1 0 0 MAX2769-1.sym
{
T 43700 47353 5 8 1 1 0 0 1
refdes=U1
T 45000 44800 5 8 0 0 0 0 1
device=MAX2769ETI+2
T 45100 45200 5 8 0 0 0 0 1
footprint=QFN28_5_EP
T 43400 44800 5 10 0 0 0 0 1
net=GND:29
}
C 41000 47400 1 0 0 BNC-1.sym
{
T 40700 47650 5 6 1 1 0 0 1
device=SMA
T 40700 47800 5 6 1 1 0 0 1
refdes=J1
T 40700 47950 5 6 0 1 0 0 1
footprint=SMA_LAY
}
C 41000 46700 1 0 0 BNC-1.sym
{
T 40700 46950 5 6 1 1 0 0 1
device=SMA
T 40700 47100 5 6 1 1 0 0 1
refdes=J2
T 40700 47250 5 6 0 1 0 0 1
footprint=SMA_LAY
}
C 41000 46500 1 0 0 gnd-4.sym
C 41000 47200 1 0 0 gnd-4.sym
C 43300 44800 1 0 0 gnd-4.sym
C 41800 47500 1 0 0 capacitor-3.sym
{
T 41900 47800 5 6 0 0 0 0 1
device=CAPACITOR
T 41900 47900 5 6 1 1 0 0 1
refdes=C1
T 41900 47600 5 6 1 1 0 0 1
value=10p
T 41900 47500 5 6 0 1 0 0 1
footprint=CAPC1005N
}
C 41800 46800 1 0 0 capacitor-3.sym
{
T 41900 47100 5 6 0 0 0 0 1
device=CAPACITOR
T 41900 47200 5 6 1 1 0 0 1
refdes=C2
T 41900 46900 5 6 1 1 0 0 1
value=10p
T 41900 46800 5 6 0 1 0 0 1
footprint=CAPC1005N
}
C 43000 46400 1 0 0 capacitor-3.sym
{
T 43100 46700 5 6 0 0 0 0 1
device=CAPACITOR
T 43100 46800 5 6 1 1 0 0 1
refdes=C4
T 43100 46500 5 6 1 1 0 0 1
value=470p
T 43100 46400 5 6 0 1 0 0 1
footprint=CAPC1005N
}
N 43000 46700 43000 46900 4
N 43000 46900 43400 46900 4
N 43400 46700 43300 46700 4
N 43400 45000 43400 45100 4
N 41500 47100 41800 47100 4
N 41500 47800 41800 47800 4
C 41900 46500 1 90 0 inductor-core-1.sym
{
T 41400 46600 5 6 0 0 90 0 1
device=INDUCTOR
T 41500 46600 5 6 1 1 90 0 1
refdes=L1
T 41800 46600 5 6 1 1 90 0 1
value=10nH
T 41900 46600 5 6 0 1 90 0 1
footprint=INDC1005N
}
N 41600 47000 41600 47100 4
C 41900 46000 1 90 0 capacitor-3.sym
{
T 41600 46100 5 6 0 0 90 0 1
device=CAPACITOR
T 41500 46100 5 6 1 1 90 0 1
refdes=C3
T 41800 46100 5 6 1 1 90 0 1
value=10n
T 41900 46100 5 6 0 1 90 0 1
footprint=CAPC1005N
}
C 41500 45800 1 0 0 gnd-4.sym
N 41600 46300 41600 46500 4
C 49100 43600 1 0 1 CY7C68013A-56-QFN.sym
{
T 48800 47350 5 8 1 1 0 6 1
refdes=U3
T 47000 43600 5 8 0 0 0 6 1
device=CY7C68013A-56
T 47000 44000 5 8 0 0 0 6 1
footprint=QFN56_8_EP
T 49100 43600 5 10 0 0 0 0 1
net=GND:57
}
C 48500 42000 1 0 1 24LC64-1.sym
{
T 47100 42100 5 8 0 0 0 6 1
device=24LC64
T 47100 42500 5 8 0 0 0 6 1
footprint=DFN8_3
T 48200 42850 5 8 1 1 0 6 1
refdes=U4
}
C 49100 43600 1 0 0 gnd-4.sym
N 49100 44600 49200 44600 4
N 49200 44600 49200 43800 4
N 49100 44500 49200 44500 4
N 49100 44400 49200 44400 4
N 49100 44300 49200 44300 4
N 49100 44200 49200 44200 4
N 49100 44100 49200 44100 4
N 49100 44000 49200 44000 4
N 49100 43900 49200 43900 4
N 41600 46400 41800 46400 4
N 43400 47200 42600 47200 4
N 42600 47200 42600 47800 4
N 42600 47800 42100 47800 4
N 43400 47100 42100 47100 4
C 41000 44100 1 0 0 XTal-Osc-1.sym
{
T 41300 44750 5 8 1 1 0 0 1
refdes=U2
T 41300 44150 5 8 1 1 0 0 1
value=16.368MHz
T 42500 44100 5 8 0 0 0 0 1
device=I547-3Q3-16.368
T 42500 44500 5 8 0 0 0 0 1
footprint=XO_SMD
}
C 40900 43900 1 0 0 gnd-4.sym
N 41000 44100 41000 44400 4
N 40600 45100 40600 45200 4
N 40600 44400 40600 44600 4
C 40900 44600 1 90 0 inductor-core-1.sym
{
T 40400 44700 5 6 0 0 90 0 1
device=INDUCTOR
T 40500 44700 5 6 1 1 90 0 1
refdes=L5
T 40900 44600 5 6 1 1 90 0 1
value=BLM15AX601SN1D
T 40900 44700 5 6 0 1 90 0 1
footprint=INDC1005N
}
C 40900 44100 1 90 0 capacitor-3.sym
{
T 40600 44200 5 6 0 0 90 0 1
device=CAPACITOR
T 40500 44200 5 6 1 1 90 0 1
refdes=C15
T 40800 44200 5 6 1 1 90 0 1
value=100n
T 40900 44200 5 6 0 1 90 0 1
footprint=CAPC1005N
}
C 40500 43900 1 0 0 gnd-4.sym
N 41000 44500 40600 44500 4
C 42700 45200 1 90 0 capacitor-3.sym
{
T 42400 45300 5 6 0 0 90 0 1
device=CAPACITOR
T 42300 45300 5 6 1 1 90 0 1
refdes=C5
T 42600 45300 5 6 1 1 90 0 1
value=10n
T 42700 45300 5 6 0 1 90 0 1
footprint=CAPC1005N
}
N 42400 45500 42400 46100 4
N 42400 46100 43400 46100 4
N 42400 44600 42400 45200 4
C 40500 45200 1 0 0 power-circle.sym
{
T 40600 45450 5 6 1 1 0 3 1
net=3.3V:1
}
C 43700 43800 1 0 0 inductor-core-1.sym
{
T 43800 44300 5 6 0 0 0 0 1
device=INDUCTOR
T 43800 44200 5 6 1 1 0 0 1
refdes=L2
T 44000 44200 5 6 1 1 0 0 1
value=BLM15AX601SN1D
T 43800 43800 5 6 0 1 0 0 1
footprint=INDC1005N
}
C 43500 44000 1 90 0 power-circle.sym
{
T 43100 44150 5 6 1 1 180 3 1
net=3.3V:1
}
N 43500 44100 43700 44100 4
C 44700 43700 1 90 0 capacitor-3.sym
{
T 44400 43800 5 6 0 0 90 0 1
device=CAPACITOR
T 44300 43800 5 6 1 1 90 0 1
refdes=C8
T 44600 43800 5 6 1 1 90 0 1
value=100p
T 44700 43800 5 6 0 1 90 0 1
footprint=CAPC1005N
}
C 44300 43500 1 0 0 gnd-4.sym
C 45100 43700 1 90 0 capacitor-3.sym
{
T 44800 43800 5 6 0 0 90 0 1
device=CAPACITOR
T 44700 43800 5 6 1 1 90 0 1
refdes=C9
T 45000 43800 5 6 1 1 90 0 1
value=100n
T 45100 43800 5 6 0 1 90 0 1
footprint=CAPC1005N
}
C 44700 43500 1 0 0 gnd-4.sym
N 44200 44100 45000 44100 4
N 45000 44100 45000 45100 4
N 44400 44000 44400 44100 4
C 43700 43100 1 0 0 inductor-core-1.sym
{
T 43800 43600 5 6 0 0 0 0 1
device=INDUCTOR
T 43800 43500 5 6 1 1 0 0 1
refdes=L3
T 44000 43500 5 6 1 1 0 0 1
value=BLM15AX601SN1D
T 43800 43100 5 6 0 1 0 0 1
footprint=INDC1005N
}
C 44700 43000 1 90 0 capacitor-3.sym
{
T 44400 43100 5 6 0 0 90 0 1
device=CAPACITOR
T 44300 43100 5 6 1 1 90 0 1
refdes=C10
T 44600 43100 5 6 1 1 90 0 1
value=100n
T 44700 43100 5 6 0 1 90 0 1
footprint=CAPC1005N
}
C 44300 42800 1 0 0 gnd-4.sym
N 44400 43300 44400 43400 4
C 43700 42400 1 0 0 inductor-core-1.sym
{
T 43800 42900 5 6 0 0 0 0 1
device=INDUCTOR
T 43800 42800 5 6 1 1 0 0 1
refdes=L4
T 44000 42800 5 6 1 1 0 0 1
value=BLM15AX601SN1D
T 43800 42400 5 6 0 1 0 0 1
footprint=INDC1005N
}
C 44700 42300 1 90 0 capacitor-3.sym
{
T 44400 42400 5 6 0 0 90 0 1
device=CAPACITOR
T 44300 42400 5 6 1 1 90 0 1
refdes=C11
T 44600 42400 5 6 1 1 90 0 1
value=100n
T 44700 42400 5 6 0 1 90 0 1
footprint=CAPC1005N
}
C 44300 42100 1 0 0 gnd-4.sym
N 44400 42600 44400 42700 4
N 43600 44100 43600 42000 4
N 43600 42700 43700 42700 4
N 43600 43400 43700 43400 4
N 44200 43400 45100 43400 4
N 45100 43400 45100 45300 4
N 45100 45300 45000 45300 4
N 44200 42700 45200 42700 4
N 45200 42700 45200 45500 4
N 45200 45500 45000 45500 4
N 44400 41900 44400 42000 4
N 43600 42000 43700 42000 4
N 44200 42000 45300 42000 4
C 44700 41600 1 90 0 capacitor-3.sym
{
T 44400 41700 5 6 0 0 90 0 1
device=CAPACITOR
T 44300 41700 5 6 1 1 90 0 1
refdes=C12
T 44600 41700 5 6 1 1 90 0 1
value=100n
T 44700 41700 5 6 0 1 90 0 1
footprint=CAPC1005N
}
C 44300 41400 1 0 0 gnd-4.sym
N 45000 45700 45300 45700 4
N 45300 45700 45300 42000 4
C 43700 41700 1 0 0 resistor-2.sym
{
T 43800 42000 5 10 0 0 0 0 1
device=RESISTOR
T 43800 42100 5 6 1 1 0 0 1
refdes=R2
T 43800 41800 5 6 1 1 0 0 1
value=10
T 43800 41700 5 6 0 1 0 0 1
footprint=RESC1005N
}
N 45600 45400 45600 45600 4
C 45900 45100 1 90 0 capacitor-3.sym
{
T 45600 45200 5 6 0 0 90 0 1
device=CAPACITOR
T 45500 45200 5 6 1 1 90 0 1
refdes=C13
T 45800 45200 5 6 1 1 90 0 1
value=100n
T 45900 45200 5 6 0 1 90 0 1
footprint=CAPC1005N
}
C 45500 44900 1 0 0 gnd-4.sym
N 46000 45400 46000 45600 4
C 46300 45100 1 90 0 capacitor-3.sym
{
T 46000 45200 5 6 0 0 90 0 1
device=CAPACITOR
T 45900 45200 5 6 1 1 90 0 1
refdes=C14
T 46200 45200 5 6 1 1 90 0 1
value=100n
T 46300 45200 5 6 0 1 90 0 1
footprint=CAPC1005N
}
C 45900 44900 1 0 0 gnd-4.sym
N 45000 45900 45400 45900 4
N 45100 46100 45000 46100 4
C 46100 45500 1 270 1 power-circle.sym
{
T 46500 45550 5 6 1 1 180 5 1
net=3.3V:1
}
N 44800 44000 44800 44100 4
C 42500 45600 1 0 0 gnd-4.sym
N 42600 45800 42600 45900 4
N 42600 45900 43400 45900 4
N 45100 44500 42900 44500 4
N 42900 44500 42900 45700 4
N 42900 45700 43400 45700 4
N 45400 45600 46100 45600 4
C 45900 45900 1 90 0 capacitor-3.sym
{
T 45600 46000 5 6 0 0 90 0 1
device=CAPACITOR
T 45500 46000 5 6 1 1 90 0 1
refdes=C6
T 45800 46000 5 6 1 1 90 0 1
value=27p
T 45900 46000 5 6 0 1 90 0 1
footprint=CAPC1005N
}
C 45500 45700 1 0 0 gnd-4.sym
C 46700 45900 1 90 0 capacitor-3.sym
{
T 46400 46000 5 6 0 0 90 0 1
device=CAPACITOR
T 46300 46000 5 6 1 1 90 0 1
refdes=C7
T 46600 46000 5 6 1 1 90 0 1
value=470p
T 46700 46000 5 6 0 1 90 0 1
footprint=CAPC1005N
}
C 46300 45700 1 0 0 gnd-4.sym
C 45800 46000 1 0 0 resistor-2.sym
{
T 45900 46300 5 10 0 0 0 0 1
device=RESISTOR
T 45900 46400 5 6 1 1 0 0 1
refdes=R1
T 45900 46100 5 6 1 1 0 0 1
value=20k
T 45900 46000 5 6 0 1 0 0 1
footprint=RESC1005N
}
N 45000 46300 45800 46300 4
N 45600 46300 45600 46200 4
N 46300 46300 46400 46300 4
N 45100 46100 45100 45900 4
N 45400 45900 45400 45600 4
N 45000 46600 46900 46600 4
N 43200 44800 47300 44800 4
N 43200 44800 43200 45300 4
N 43200 45300 43400 45300 4
N 43400 45400 43100 45400 4
N 43100 45400 43100 44700 4
N 43100 44700 46700 44700 4
N 43400 45500 43000 45500 4
N 43000 44600 43000 45500 4
N 43000 44600 46800 44600 4
N 43400 45800 42800 45800 4
N 42800 45800 42800 44400 4
N 42800 44400 46900 44400 4
N 45000 46800 47000 46800 4
N 47000 46800 47000 44000 4
N 47000 44000 47300 44000 4
N 45000 47200 47300 47200 4
N 47300 47000 45000 47000 4
N 47300 47100 45000 47100 4
N 45000 46900 47300 46900 4
N 46900 46600 46900 46400 4
N 46900 46400 47300 46400 4
N 47300 46300 46800 46300 4
N 46800 46300 46800 46500 4
N 46800 46500 45000 46500 4
C 47100 45500 1 0 0 gnd-4.sym
N 47200 45700 47200 46800 4
N 47200 46800 47300 46800 4
N 47300 46700 47200 46700 4
N 47300 46600 47200 46600 4
N 47300 46500 47200 46500 4
N 47300 46200 47100 46200 4
{
T 46700 46150 5 6 1 1 0 0 1
netname=LED1
}
N 47300 46100 47100 46100 4
{
T 46700 46050 5 6 1 1 0 0 1
netname=LED2
}
N 47300 46000 47200 46000 4
N 47300 45900 47200 45900 4
N 47300 45800 47200 45800 4
N 47300 45700 47200 45700 4
C 49100 45800 1 0 0 gnd-4.sym
N 49200 46000 49100 46000 4
N 49500 44600 49500 44800 4
C 49800 44300 1 90 0 capacitor-3.sym
{
T 49500 44400 5 6 0 0 90 0 1
device=CAPACITOR
T 49400 44400 5 6 1 1 90 0 1
refdes=C19
T 49700 44400 5 6 1 1 90 0 1
value=100n
T 49800 44400 5 6 0 1 90 0 1
footprint=CAPC1005N
}
C 49400 44100 1 0 0 gnd-4.sym
N 49900 44800 49900 45100 4
C 50200 44300 1 90 0 capacitor-3.sym
{
T 49900 44400 5 6 0 0 90 0 1
device=CAPACITOR
T 49800 44400 5 6 1 1 90 0 1
refdes=C20
T 50100 44400 5 6 1 1 90 0 1
value=100n
T 50200 44400 5 6 0 1 90 0 1
footprint=CAPC1005N
}
C 49800 44100 1 0 0 gnd-4.sym
N 49100 44800 51100 44800 4
N 50300 44600 50300 44800 4
C 50600 44300 1 90 0 capacitor-3.sym
{
T 50300 44400 5 6 0 0 90 0 1
device=CAPACITOR
T 50200 44400 5 6 1 1 90 0 1
refdes=C21
T 50500 44400 5 6 1 1 90 0 1
value=100n
T 50600 44400 5 6 0 1 90 0 1
footprint=CAPC1005N
}
C 50200 44100 1 0 0 gnd-4.sym
N 50700 44600 50700 44800 4
C 51000 44300 1 90 0 capacitor-3.sym
{
T 50700 44400 5 6 0 0 90 0 1
device=CAPACITOR
T 50600 44400 5 6 1 1 90 0 1
refdes=C22
T 50900 44400 5 6 1 1 90 0 1
value=100n
T 51000 44400 5 6 0 1 90 0 1
footprint=CAPC1005N
}
C 50600 44100 1 0 0 gnd-4.sym
C 51200 44900 1 0 1 power-circle.sym
{
T 51100 45250 5 6 1 1 0 5 1
net=3.3V:1
}
N 49200 44800 49200 45500 4
N 49200 45400 49100 45400 4
N 49200 45300 49100 45300 4
N 49200 45200 49100 45200 4
N 49200 45100 49100 45100 4
N 49200 45000 49100 45000 4
N 49200 44900 49100 44900 4
N 49100 45500 49200 45500 4
C 50200 45100 1 90 0 resistor-2.sym
{
T 49900 45200 5 10 0 0 90 0 1
device=RESISTOR
T 49800 45200 5 6 1 1 90 0 1
refdes=R4
T 50100 45200 5 6 1 1 90 0 1
value=100k
T 50200 45200 5 6 0 1 90 0 1
footprint=RESC1005N
}
N 49500 45600 49500 45800 4
C 49400 45100 1 0 0 gnd-4.sym
N 49100 45800 49900 45800 4
C 50500 45700 1 90 0 capacitor-3.sym
{
T 50200 45800 5 6 0 0 90 0 1
device=CAPACITOR
T 50100 45800 5 6 1 1 90 0 1
refdes=C17
T 50400 45800 5 6 1 1 90 0 1
value=22p
T 50500 45800 5 6 0 1 90 0 1
footprint=CAPC1005N
}
C 50100 45500 1 0 0 gnd-4.sym
C 51300 45700 1 90 0 capacitor-3.sym
{
T 51000 45800 5 6 0 0 90 0 1
device=CAPACITOR
T 50900 45800 5 6 1 1 90 0 1
refdes=C16
T 51200 45800 5 6 1 1 90 0 1
value=22p
T 51300 45800 5 6 0 1 90 0 1
footprint=CAPC1005N
T 51300 45700 5 10 0 0 0 0 1
device=CAPACITOR
}
C 50900 45500 1 0 0 gnd-4.sym
C 50400 45800 1 0 0 crystal-4-pin-2.sym
{
T 50500 46300 5 6 1 1 0 0 1
refdes=X1
T 50500 46300 5 6 0 0 0 0 1
device=CRYSTAL
T 50500 46200 5 6 1 1 0 0 1
value=24MHz
T 50500 45900 5 6 0 1 0 0 1
footprint=XO_SMD
}
N 49900 45800 49900 45600 4
N 50200 46300 49100 46300 4
N 50800 46100 51000 46100 4
N 49100 46400 51000 46400 4
N 50200 46000 50200 46300 4
N 51000 46400 51000 46000 4
C 49800 45300 1 90 0 capacitor-3.sym
{
T 49500 45400 5 6 0 0 90 0 1
device=CAPACITOR
T 49400 45400 5 6 1 1 90 0 1
refdes=C18
T 49700 45400 5 6 1 1 90 0 1
value=100n
T 49800 45400 5 6 0 1 90 0 1
footprint=CAPC1005N
}
N 50400 46100 50200 46100 4
N 49100 46800 49500 46800 4
{
T 49600 46800 5 6 1 1 0 0 1
netname=SDA
}
N 49100 46700 49500 46700 4
{
T 49600 46600 5 6 1 1 0 0 1
netname=SCL
}
N 49300 42500 49300 42700 4
C 49200 41800 1 0 0 gnd-4.sym
C 49400 42600 1 270 1 power-circle.sym
{
T 49800 42650 5 6 1 1 180 5 1
net=3.3V:1
}
N 49400 42700 48500 42700 4
N 48600 42000 48600 42600 4
N 48600 42500 48500 42500 4
N 48500 42600 48600 42600 4
N 48600 42300 48500 42300 4
C 48500 41800 1 0 0 gnd-4.sym
N 49300 42200 49300 42000 4
C 48800 41500 1 0 0 gnd-4.sym
C 49600 42200 1 90 0 capacitor-3.sym
{
T 49300 42300 5 6 0 0 90 0 1
device=CAPACITOR
T 49200 42300 5 6 1 1 90 0 1
refdes=C23
T 49500 42300 5 6 1 1 90 0 1
value=100n
T 49600 42300 5 6 0 1 90 0 1
footprint=CAPC1005N
}
N 47300 42700 46400 42700 4
{
T 46100 42700 5 6 1 1 0 0 1
netname=SDA
}
N 47300 42600 46400 42600 4
{
T 46100 42500 5 6 1 1 0 0 1
netname=SCL
}
C 47000 42800 1 90 0 resistor-2.sym
{
T 46700 42900 5 10 0 0 90 0 1
device=RESISTOR
T 46600 42900 5 6 1 1 90 0 1
refdes=R5
T 46900 42900 5 6 1 1 90 0 1
value=2k2
T 47000 42900 5 6 0 1 90 0 1
footprint=RESC1005N
}
C 47400 42800 1 90 0 resistor-2.sym
{
T 47100 42900 5 10 0 0 90 0 1
device=RESISTOR
T 47000 42900 5 6 1 1 90 0 1
refdes=R6
T 47300 42900 5 6 1 1 90 0 1
value=2k2
T 47400 42900 5 6 0 1 90 0 1
footprint=RESC1005N
}
C 47200 43200 1 270 1 power-circle.sym
{
T 47600 43250 5 6 1 1 180 5 1
net=3.3V:1
}
N 47200 43300 46700 43300 4
N 46700 42700 46700 42800 4
N 47100 42800 47100 42600 4
C 46200 43800 1 90 0 resistor-2.sym
{
T 45900 43900 5 10 0 0 90 0 1
device=RESISTOR
T 45800 43900 5 6 1 1 90 0 1
refdes=R3
T 46100 43900 5 6 1 1 90 0 1
value=22k
T 46200 43900 5 6 0 1 90 0 1
footprint=RESC1005N
}
N 45900 43800 45900 43700 4
N 45900 44300 45900 44400 4
N 46400 46200 46400 46300 4
C 51300 46800 1 0 1 connector4-1.sym
{
T 51300 46650 5 6 1 1 0 6 1
refdes=J3
T 51300 46650 5 6 0 1 0 6 1
device=CONNECTOR_4
T 51300 46550 5 6 1 1 0 6 1
footprint=usb_A_plug
T 51300 46450 5 6 0 1 0 6 1
net=GND:5
T 51300 46350 5 6 0 1 0 6 1
net=GND:6
}
N 49100 47200 50100 47200 4
N 49100 47100 50800 47100 4
C 50400 46600 1 0 0 gnd-4.sym
N 50100 47000 50800 47000 4
C 50800 47100 1 90 0 power-arrow.sym
{
T 50400 47150 5 6 1 1 0 3 1
net=VBUS:1
}
C 41800 41100 1 0 0 regulator-3pin-positive-1.sym
{
T 42100 41750 5 8 1 1 0 0 1
device=AP2204R-3.3
T 42100 41900 5 8 1 1 0 0 1
refdes=U5
T 42100 42300 5 6 0 0 0 0 1
footprint=SOT89
}
C 42200 40900 1 0 0 gnd-4.sym
C 43000 41500 1 270 1 power-arrow.sym
{
T 43400 41550 5 6 1 1 180 5 1
net=3.3V:1
}
C 43200 41200 1 90 0 capacitor-4.sym
{
T 42800 41300 5 6 1 1 90 0 1
refdes=C25
T 42700 41300 5 6 0 1 90 0 1
device=POLARIZED_CAPACITOR
T 43100 41300 5 6 1 1 90 0 1
value=10u
T 43200 41300 5 6 0 1 90 0 1
footprint=EIA3216
}
N 42900 41500 42900 41600 4
N 42800 41600 43000 41600 4
C 42800 40900 1 0 0 gnd-4.sym
N 42900 41100 42900 41200 4
N 41700 41500 41700 41600 4
C 41600 40900 1 0 0 gnd-4.sym
N 41700 41100 41700 41200 4
C 42000 41200 1 90 0 capacitor-3.sym
{
T 41700 41300 5 6 0 0 90 0 1
device=CAPACITOR
T 41600 41300 5 6 1 1 90 0 1
refdes=C24
T 41900 41300 5 6 1 1 90 0 1
value=1u
T 42000 41300 5 6 0 1 90 0 1
footprint=CAPC2012N
}
C 41000 41500 1 90 0 power-circle.sym
{
T 40600 41650 5 6 1 1 180 3 1
net=VBUS:1
}
C 41100 41300 1 0 0 inductor-core-1.sym
{
T 41200 41800 5 6 0 0 0 0 1
device=INDUCTOR
T 41200 41800 5 6 1 1 0 0 1
refdes=L6
T 41000 41700 5 6 1 1 0 0 1
value=BLM15AG601SN1D
T 41200 41300 5 6 0 1 0 0 1
footprint=INDC2012N
}
N 41100 41600 41000 41600 4
N 41600 41600 41800 41600 4
N 46700 44700 46700 45200 4
N 46700 45200 47300 45200 4
N 46800 44600 46800 45300 4
N 46800 45300 47300 45300 4
N 46900 44400 46900 45500 4
N 46900 45500 47300 45500 4
C 49500 47400 1 0 0 RClamp522P-1.sym
{
T 49800 47950 5 8 1 1 0 0 1
refdes=D1
T 49800 47450 5 8 1 1 0 0 1
device=RClamp522P
T 50800 47600 5 8 0 0 0 0 1
footprint=SLP1610P4
}
N 49500 47700 49500 47200 4
N 49500 47800 49400 47800 4
N 49400 47800 49400 47100 4
C 50700 47400 1 0 0 gnd-4.sym
N 50800 47600 50800 47800 4
N 50800 47800 50700 47800 4
N 50700 47700 50800 47700 4
C 41400 42600 1 0 0 shield-1.sym
{
T 41400 43150 5 8 1 1 0 0 1
refdes=S1
T 41900 42700 5 8 0 0 0 0 1
device=BMI-S202
T 41900 43100 5 8 0 0 0 0 1
footprint=BMI-S-202
}
C 41500 42400 1 0 0 gnd-4.sym
N 50100 47000 50100 47200 4
N 50500 46800 50500 46900 4
N 50500 46900 50800 46900 4
C 41800 46100 1 0 0 resistor-2.sym
{
T 41900 46400 5 10 0 0 0 0 1
device=RESISTOR
T 41900 46500 5 6 1 1 0 0 1
refdes=R7
T 41900 46200 5 6 1 1 0 0 1
value=0
T 41900 46100 5 6 0 1 0 0 1
footprint=ACY300
}
N 42300 46400 43400 46400 4
C 48800 41700 1 0 0 power-ic-8pin-1.sym
{
T 48900 42150 5 6 1 1 0 3 1
refdes=U4
}
C 45800 43700 1 180 1 power-circle.sym
{
T 45900 43350 5 6 1 1 180 5 1
net=3.3V:1
}
N 51100 44600 51100 44900 4
C 51400 44300 1 90 0 capacitor-3.sym
{
T 51100 44400 5 6 0 0 90 0 1
device=CAPACITOR
T 51400 44400 5 6 0 1 90 0 1
footprint=CAPC1005N
T 51000 44400 5 6 1 1 90 0 1
refdes=C26
T 51300 44400 5 6 1 1 90 0 1
value=100n
}
C 51000 44100 1 0 0 gnd-4.sym
N 49900 44600 49900 44800 4
C 50800 43400 1 270 1 power-circle.sym
{
T 51200 43450 5 6 1 1 180 5 1
net=3.3V:1
}
C 50300 43400 1 90 0 power-circle.sym
{
T 49900 43450 5 6 1 1 180 5 1
net=3.3V:1
}
C 50300 43200 1 0 0 resistor-2.sym
{
T 50400 43500 5 10 0 0 0 0 1
device=RESISTOR
T 50400 43600 5 6 1 1 0 0 1
refdes=R8
T 50400 43300 5 6 1 1 0 0 1
value=0
T 50400 43200 5 6 0 1 0 0 1
footprint=RESC3216N
}
C 50400 41700 1 0 0 led-dual-aka-1.sym
{
T 50800 41800 5 6 1 1 0 0 1
value=L-115VEGW
T 50500 42200 5 6 1 1 0 0 1
refdes=D2
T 50800 41700 5 6 0 1 0 0 1
footprint=LED3-3
T 50500 42300 5 6 0 0 0 0 1
device=DIODE
}
C 50600 41600 1 0 0 gnd-4.sym
C 51300 42300 1 90 0 resistor-2.sym
{
T 51000 42400 5 10 0 0 90 0 1
device=RESISTOR
T 50900 42400 5 6 1 1 90 0 1
refdes=R10
T 51200 42400 5 6 1 1 90 0 1
value=220
T 51300 42400 5 6 0 1 90 0 1
footprint=RESC1005N
}
C 50700 42300 1 90 0 resistor-2.sym
{
T 50400 42400 5 10 0 0 90 0 1
device=RESISTOR
T 50300 42400 5 6 1 1 90 0 1
refdes=R9
T 50600 42400 5 6 1 1 90 0 1
value=220
T 50700 42400 5 6 0 1 90 0 1
footprint=RESC1005N
}
N 50400 42300 50400 42000 4
N 51000 42000 51000 42300 4
N 50400 42800 50400 42900 4
{
T 50300 42950 5 6 1 1 0 0 1
netname=LED1
}
N 51000 42800 51000 42900 4
{
T 50900 42950 5 6 1 1 0 0 1
netname=LED2
}
