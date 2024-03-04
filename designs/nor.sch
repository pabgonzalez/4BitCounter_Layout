v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 240 -440 240 -400 {
lab=#net1}
N 240 -520 240 -500 {
lab=vdd}
N 240 -470 280 -470 {
lab=vdd}
N 280 -520 280 -470 {
lab=vdd}
N 240 -370 320 -370 {
lab=vdd}
N 320 -520 320 -370 {
lab=vdd}
N 240 -520 360 -520 {
lab=vdd}
N 160 -300 160 -260 {
lab=Z}
N 160 -300 360 -300 {
lab=Z}
N 320 -300 320 -260 {
lab=Z}
N 240 -340 240 -300 {
lab=Z}
N 160 -200 160 -180 {
lab=vss}
N 160 -180 320 -180 {
lab=vss}
N 320 -200 320 -180 {
lab=vss}
N 320 -180 420 -180 {
lab=vss}
N 360 -300 420 -300 {
lab=Z}
N 360 -520 420 -520 {
lab=vdd}
N 160 -230 200 -230 {
lab=vss}
N 200 -230 200 -180 {
lab=vss}
N 320 -230 360 -230 {
lab=vss}
N 360 -230 360 -180 {
lab=vss}
C {sky130_fd_pr/nfet_01v8.sym} 140 -230 0 0 {name=M1
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
C {sky130_fd_pr/pfet_01v8.sym} 220 -470 0 0 {name=M4
L=0.15
W=3
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
C {sky130_fd_pr/nfet_01v8.sym} 300 -230 0 0 {name=M2
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
C {sky130_fd_pr/pfet_01v8.sym} 220 -370 0 0 {name=M3
L=0.15
W=3
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
C {devices/iopin.sym} 120 -230 0 1 {name=p1 lab=A}
C {devices/iopin.sym} 280 -230 0 1 {name=p2 lab=B}
C {devices/iopin.sym} 420 -520 0 0 {name=p3 lab=vdd}
C {devices/iopin.sym} 420 -300 0 0 {name=p4 lab=Z
}
C {devices/iopin.sym} 420 -180 0 0 {name=p5 lab=vss}
C {devices/lab_pin.sym} 200 -470 0 0 {name=p6 sig_type=std_logic lab=B}
C {devices/lab_pin.sym} 200 -370 0 0 {name=p7 sig_type=std_logic lab=A}
