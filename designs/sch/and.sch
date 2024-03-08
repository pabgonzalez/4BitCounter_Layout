v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 240 -140 280 -140 {
lab=#net1}
N 140 -220 140 -200 {
lab=xxx}
N 140 -220 340 -220 {
lab=xxx}
N 340 -220 340 -180 {
lab=xxx}
N 140 -80 140 -60 {
lab=vss}
N 140 -60 340 -60 {
lab=vss}
N 340 -100 340 -60 {
lab=vss}
N 60 -160 80 -160 {
lab=A}
N 60 -120 80 -120 {
lab=B}
N 400 -140 420 -140 {
lab=Z}
C {/foss/designs/sch/nand.sym} 60 -60 0 0 {name=x1}
C {/foss/designs/sch/inverter.sym} 220 -60 0 0 {name=x2}
C {devices/iopin.sym} 420 -140 0 0 {name=p1 lab=Z
}
C {devices/iopin.sym} 60 -160 2 0 {name=p2 lab=A}
C {devices/iopin.sym} 60 -120 2 0 {name=p3 lab=B}
C {devices/iopin.sym} 340 -220 0 0 {name=p4 lab=vdd
}
C {devices/iopin.sym} 340 -60 2 1 {name=p5 lab=vss
}
