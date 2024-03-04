v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 450 -320 450 -240 {
lab=Z}
N 450 -80 450 -60 {
lab=vss}
N 450 -60 630 -60 {
lab=vss}
N 630 -80 630 -60 {
lab=vss}
N 590 -110 630 -110 {
lab=vss}
N 590 -110 590 -60 {
lab=vss}
N 570 -210 630 -210 {
lab=vss}
N 570 -210 570 -60 {
lab=vss}
N 450 -110 490 -110 {
lab=vss}
N 490 -110 490 -60 {
lab=vss}
N 450 -210 510 -210 {
lab=vss}
N 510 -210 510 -60 {
lab=vss}
N 450 -180 450 -140 {
lab=#net1}
N 630 -180 630 -140 {
lab=#net2}
N 450 -280 770 -280 {
lab=Z}
N 630 -280 630 -240 {
lab=Z}
N 630 -320 630 -280 {
lab=Z}
N 450 -500 450 -480 {
lab=vdd}
N 450 -500 630 -500 {
lab=vdd}
N 630 -500 630 -480 {
lab=vdd}
N 590 -450 630 -450 {
lab=vdd}
N 590 -500 590 -450 {
lab=vdd}
N 450 -450 490 -450 {
lab=vdd}
N 490 -500 490 -450 {
lab=vdd}
N 450 -350 510 -350 {
lab=vdd}
N 510 -500 510 -350 {
lab=vdd}
N 570 -350 630 -350 {
lab=vdd}
N 570 -500 570 -350 {
lab=vdd}
N 630 -500 770 -500 {
lab=vdd}
N 630 -60 770 -60 {
lab=vss}
N 160 -470 160 -440 {
lab=vdd}
N 160 -360 160 -340 {
lab=vss}
N 160 -220 160 -190 {
lab=vdd}
N 160 -110 160 -90 {
lab=vss}
N 450 -420 450 -380 {}
N 630 -420 630 -380 {}
N 450 -400 630 -400 {}
C {sky130_fd_pr/nfet_01v8.sym} 430 -110 0 0 {name=M6
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
C {sky130_fd_pr/nfet_01v8.sym} 430 -210 0 0 {name=M4
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
C {sky130_fd_pr/nfet_01v8.sym} 650 -210 0 1 {name=M5
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
C {sky130_fd_pr/nfet_01v8.sym} 650 -110 0 1 {name=M7
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
C {sky130_fd_pr/pfet_01v8.sym} 430 -450 0 0 {name=M0
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
C {sky130_fd_pr/pfet_01v8.sym} 650 -450 0 1 {name=M1
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
C {sky130_fd_pr/pfet_01v8.sym} 430 -350 0 0 {name=M2
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
C {sky130_fd_pr/pfet_01v8.sym} 650 -350 0 1 {name=M3
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
C {devices/iopin.sym} 670 -210 2 1 {name=p1 lab=A}
C {devices/iopin.sym} 670 -110 2 1 {name=p2 lab=B}
C {devices/lab_pin.sym} 410 -450 0 0 {name=p3 sig_type=std_logic lab=Bb
}
C {devices/lab_pin.sym} 410 -350 0 0 {name=p4 sig_type=std_logic lab=A}
C {devices/lab_pin.sym} 410 -210 0 0 {name=p5 sig_type=std_logic lab=Ab}
C {devices/lab_pin.sym} 410 -110 0 0 {name=p6 sig_type=std_logic lab=Bb}
C {devices/lab_pin.sym} 670 -350 0 1 {name=p7 sig_type=std_logic lab=B}
C {devices/lab_pin.sym} 670 -450 0 1 {name=p8 sig_type=std_logic lab=Ab}
C {devices/iopin.sym} 770 -500 0 0 {name=p9 lab=vdd}
C {devices/iopin.sym} 770 -280 0 0 {name=p10 lab=Z}
C {devices/iopin.sym} 770 -60 0 0 {name=p11 lab=vss}
C {/foss/designs/inverter.sym} 40 -320 0 0 {name=x1}
C {devices/lab_pin.sym} 100 -400 0 0 {name=p12 sig_type=std_logic lab=A}
C {devices/lab_pin.sym} 220 -400 0 1 {name=p14 sig_type=std_logic lab=Ab}
C {devices/lab_pin.sym} 160 -340 0 1 {name=p17 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 160 -470 0 1 {name=p18 sig_type=std_logic lab=vdd}
C {/foss/designs/inverter.sym} 40 -70 0 0 {name=x2}
C {devices/lab_pin.sym} 100 -150 0 0 {name=p13 sig_type=std_logic lab=B
}
C {devices/lab_pin.sym} 220 -150 0 1 {name=p15 sig_type=std_logic lab=Bb}
C {devices/lab_pin.sym} 160 -90 0 1 {name=p16 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 160 -220 0 1 {name=p19 sig_type=std_logic lab=vdd}
