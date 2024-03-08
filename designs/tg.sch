v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 120 -100 120 -80 {
lab=vout}
N 120 -80 320 -80 {
lab=vout}
N 320 -100 320 -80 {
lab=vout}
N 120 -180 120 -160 {
lab=vin}
N 120 -180 320 -180 {
lab=vin}
N 320 -180 320 -160 {
lab=vin}
N 220 -80 220 -50 {
lab=vout}
N 220 -210 220 -180 {
lab=vin}
N 290 -130 320 -130 {
lab=vss}
N 120 -130 150 -130 {
lab=vss}
C {sky130_fd_pr/nfet_01v8.sym} 100 -130 0 0 {name=M1
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
C {sky130_fd_pr/pfet_01v8.sym} 340 -130 0 1 {name=M2
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
C {devices/iopin.sym} 220 -210 2 1 {name=p1 lab=vin}
C {devices/iopin.sym} 220 -50 2 1 {name=p2 lab=vout
}
C {devices/iopin.sym} 360 -130 0 0 {name=p5 lab=enb}
C {devices/iopin.sym} 80 -130 0 1 {name=p3 lab=en}
C {devices/iopin.sym} 150 -130 0 0 {name=p4 lab=vss}
C {devices/iopin.sym} 290 -130 0 1 {name=p6 lab=vdd}
