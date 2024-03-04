v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {1) Aumentando W aumenta la carga capacitiva y los tiempos de conmutación.
Considerar que Wp=[2,3]*Wn} 310 -310 0 0 0.3 0.3 {}
N 80 -250 120 -250 {
lab=in}
N 80 -250 80 -110 {
lab=in}
N 160 -300 160 -280 {
lab=vdd}
N 160 -300 240 -300 {
lab=vdd}
N 160 -250 200 -250 {
lab=vdd}
N 200 -300 200 -250 {
lab=vdd}
N 160 -220 160 -140 {
lab=out}
N 80 -110 120 -110 {
lab=in}
N 160 -80 160 -60 {
lab=vss}
N 160 -60 240 -60 {
lab=vss}
N 160 -110 200 -110 {
lab=vss}
N 200 -110 200 -60 {
lab=vss}
N 60 -180 80 -180 {
lab=in}
N 160 -180 240 -180 {
lab=out}
C {sky130_fd_pr/nfet_01v8.sym} 140 -110 0 0 {name=M2
L=0.15
W=0.75
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 140 -250 0 0 {name=M1
L=0.15
W=1.5
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/iopin.sym} 240 -180 0 0 {name=p1 lab=out}
C {devices/iopin.sym} 240 -60 0 0 {name=p3 lab=vss}
C {devices/iopin.sym} 240 -300 0 0 {name=p4 lab=vdd
}
C {devices/iopin.sym} 60 -180 0 1 {name=p5 lab=in
}
