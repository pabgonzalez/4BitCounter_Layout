v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -60 -20 -60 0 {
lab=#net1}
N -60 60 -60 90 {
lab=Z}
N -60 150 -60 170 {
lab=#net2}
N 90 150 90 170 {
lab=#net3}
N 90 60 90 90 {
lab=Z}
N 90 -20 90 0 {
lab=#net1}
N -60 80 90 80 {
lab=Z}
N -60 230 -60 240 {
lab=GND}
N -60 240 90 240 {
lab=GND}
N 90 230 90 240 {
lab=GND}
N -60 -100 -60 -80 {
lab=vdd}
N -60 -100 90 -100 {
lab=vdd}
N 90 -100 90 -80 {
lab=vdd}
N 90 -100 290 -100 {
lab=vdd}
N 290 -100 480 -100 {
lab=vdd}
N -130 30 -100 30 {
lab=A}
N 90 240 480 240 {
lab=GND}
N 130 30 160 30 {
lab=B}
N 90 80 220 80 {
lab=Z}
N 250 50 250 60 {
lab=A}
N 250 60 260 60 {
lab=A}
N 250 -20 250 50 {
lab=A}
N 250 -20 260 -20 {
lab=A}
N 240 20 250 20 {
lab=A}
N 300 10 300 30 {
lab=Ab}
N 300 -80 300 -50 {
lab=vdd}
N 300 -20 340 -20 {
lab=vdd}
N 340 -80 340 -20 {
lab=vdd}
N 300 -80 340 -80 {
lab=vdd}
N 300 90 300 120 {
lab=GND}
N 300 120 340 120 {
lab=GND}
N 340 70 340 120 {
lab=GND}
N 340 60 340 70 {
lab=GND}
N 300 60 340 60 {
lab=GND}
N 300 20 330 20 {
lab=Ab}
N 300 -100 300 -80 {
lab=vdd}
N 300 120 300 240 {
lab=GND}
N 430 50 430 60 {
lab=B}
N 430 60 440 60 {
lab=B}
N 430 -20 430 50 {
lab=B}
N 430 -20 440 -20 {
lab=B}
N 420 20 430 20 {
lab=B}
N 480 10 480 30 {
lab=Bb}
N 480 -80 480 -50 {
lab=vdd}
N 520 -80 520 -20 {
lab=vdd}
N 480 -80 520 -80 {
lab=vdd}
N 480 90 480 120 {
lab=GND}
N 480 120 520 120 {
lab=GND}
N 520 70 520 120 {
lab=GND}
N 520 60 520 70 {
lab=GND}
N 480 60 520 60 {
lab=GND}
N 480 20 510 20 {
lab=Bb}
N 480 -100 480 -80 {
lab=vdd}
N 480 120 480 240 {
lab=GND}
N -60 -50 10 -50 {
lab=vdd}
N 20 -50 90 -50 {
lab=vdd}
N -60 30 10 30 {
lab=vdd}
N 10 30 90 30 {
lab=vdd}
N 10 -50 20 -50 {
lab=vdd}
N 10 -100 10 -50 {
lab=vdd}
N -60 120 -10 120 {
lab=GND}
N 50 120 90 120 {
lab=GND}
N -60 200 90 200 {
lab=GND}
N 20 200 20 240 {
lab=GND}
N -10 120 50 120 {
lab=GND}
N 20 120 20 200 {
lab=GND}
N 480 -20 520 -20 {
lab=vdd}
N -80 -100 -60 -100 {
lab=vdd}
N 150 240 150 260 {
lab=GND}
N -60 -10 90 -10 {
lab=#net1}
N 10 -50 10 30 {
lab=vdd}
C {sky130_fd_pr/pfet_01v8.sym} -80 -50 0 0 {name=M0
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
C {sky130_fd_pr/pfet_01v8.sym} 110 -50 0 1 {name=M1
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
C {sky130_fd_pr/pfet_01v8.sym} -80 30 0 0 {name=M2
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
C {sky130_fd_pr/pfet_01v8.sym} 110 30 0 1 {name=M3
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
C {sky130_fd_pr/nfet_01v8.sym} -80 120 0 0 {name=M4
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
C {sky130_fd_pr/nfet_01v8.sym} 110 120 0 1 {name=M5
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
C {sky130_fd_pr/nfet_01v8.sym} -80 200 0 0 {name=M6
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
C {sky130_fd_pr/nfet_01v8.sym} 110 200 0 1 {name=M7
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
C {devices/lab_pin.sym} 240 20 0 0 {name=p2 sig_type=std_logic lab=A}
C {devices/lab_pin.sym} 130 120 0 1 {name=p3 sig_type=std_logic lab=A}
C {devices/lab_pin.sym} 330 20 0 1 {name=p4 sig_type=std_logic lab=Ab
}
C {devices/lab_pin.sym} 130 -50 0 1 {name=p5 sig_type=std_logic lab=Ab
}
C {devices/lab_pin.sym} -100 120 0 0 {name=p6 sig_type=std_logic lab=Ab
}
C {devices/lab_pin.sym} 130 200 0 1 {name=p8 sig_type=std_logic lab=B}
C {devices/iopin.sym} -130 30 0 1 {name=p7 lab=A}
C {devices/lab_pin.sym} 420 20 0 0 {name=p10 sig_type=std_logic lab=B}
C {devices/lab_pin.sym} 510 20 0 1 {name=p11 sig_type=std_logic lab=Bb
}
C {devices/lab_pin.sym} -100 200 0 0 {name=p12 sig_type=std_logic lab=Bb
}
C {devices/lab_pin.sym} -100 -50 0 0 {name=p13 sig_type=std_logic lab=Bb
}
C {devices/iopin.sym} 160 30 0 0 {name=p14 lab=B}
C {devices/iopin.sym} -80 -100 0 1 {name=p15 lab=vdd}
C {devices/iopin.sym} 150 260 3 1 {name=p16 lab=vss}
C {devices/iopin.sym} 220 80 0 0 {name=p17 lab=Z}
C {sky130_fd_pr/nfet_01v8.sym} 280 60 0 0 {name=M9
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
C {sky130_fd_pr/pfet_01v8.sym} 280 -20 0 0 {name=M8
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
C {sky130_fd_pr/nfet_01v8.sym} 460 60 0 0 {name=M11
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
C {sky130_fd_pr/pfet_01v8.sym} 460 -20 0 0 {name=M10
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
