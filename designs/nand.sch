v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 100 -300 100 -260 {
lab=Z}
N 100 -260 220 -260 {
lab=Z}
N 220 -300 220 -260 {
lab=Z}
N 160 -260 160 -220 {
lab=Z}
N 160 -260 320 -260 {
lab=Z}
N 160 -160 160 -120 {
lab=#net1}
N 100 -330 140 -330 {
lab=vdd}
N 100 -380 100 -360 {
lab=vdd}
N 100 -380 320 -380 {
lab=vdd}
N 140 -380 140 -330 {
lab=vdd}
N 220 -330 260 -330 {
lab=vdd}
N 260 -380 260 -330 {
lab=vdd}
N 160 -60 160 -40 {
lab=vss}
N 160 -40 320 -40 {
lab=vss}
N 160 -90 200 -90 {
lab=vss}
N 200 -90 200 -40 {
lab=vss}
N 160 -190 260 -190 {}
N 260 -190 260 -40 {}
N 220 -380 220 -360 {}
C {sky130_fd_pr/nfet_01v8.sym} 140 -90 0 0 {name=M1
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
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 140 -190 0 0 {name=M2
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
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 80 -330 0 0 {name=M3
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
C {sky130_fd_pr/pfet_01v8.sym} 200 -330 0 0 {name=M4
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
C {devices/iopin.sym} 120 -90 0 1 {name=p1 lab=B}
C {devices/iopin.sym} 120 -190 0 1 {name=p2 lab=A}
C {devices/iopin.sym} 320 -380 0 0 {name=p5 lab=vdd}
C {devices/iopin.sym} 320 -260 0 0 {name=p6 lab=Z}
C {devices/iopin.sym} 320 -40 0 0 {name=p7 lab=vss}
C {devices/lab_pin.sym} 60 -330 0 0 {name=p3 sig_type=std_logic lab=A}
C {devices/lab_pin.sym} 180 -330 0 0 {name=p4 sig_type=std_logic lab=B}
