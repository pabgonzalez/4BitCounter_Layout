v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 200 -260 320 -260 {
lab=#net1}
N 440 -260 560 -260 {
lab=#net2}
N 680 -260 800 -260 {
lab=#net3}
N 60 -220 60 -100 {
lab=clk}
N 60 -100 780 -100 {
lab=clk}
N 780 -220 780 -100 {
lab=clk}
N 780 -220 800 -220 {
lab=clk}
N 60 -220 80 -220 {
lab=clk}
N 300 -220 320 -220 {
lab=clk}
N 300 -220 300 -100 {
lab=clk}
N 540 -220 560 -220 {
lab=clk}
N 540 -220 540 -100 {
lab=clk}
N 60 -260 80 -260 {
lab=ce}
N 60 -340 860 -340 {
lab=clr}
N 860 -340 860 -320 {
lab=clr}
N 620 -340 620 -320 {
lab=clr}
N 380 -340 380 -320 {
lab=clr}
N 140 -340 140 -320 {
lab=clr}
N 200 -220 220 -220 {
lab=q0}
N 440 -220 460 -220 {
lab=q1}
N 680 -220 700 -220 {
lab=q2}
N 920 -220 940 -220 {
lab=q3}
N 60 -60 840 -60 {
lab=vss}
N 60 -20 880 -20 {
lab=clk}
N 840 -160 840 -60 {
lab=vss}
N 600 -160 600 -60 {
lab=vss}
N 640 -160 640 -20 {
lab=clk}
N 360 -160 360 -60 {
lab=vss}
N 120 -160 120 -60 {
lab=vss}
N 160 -160 160 -20 {
lab=clk}
N 400 -160 400 -20 {}
N 880 -160 880 -20 {}
C {/foss/designs/sch/1BitCounter.sym} -160 0 0 0 {name=x1}
C {/foss/designs/sch/1BitCounter.sym} 80 0 0 0 {name=x2}
C {/foss/designs/sch/1BitCounter.sym} 320 0 0 0 {name=x3}
C {/foss/designs/sch/1BitCounter.sym} 560 0 0 0 {name=x4}
C {devices/iopin.sym} 60 -260 2 0 {name=p1 lab=ce}
C {devices/iopin.sym} 60 -100 2 0 {name=p2 lab=clk}
C {devices/iopin.sym} 60 -340 2 0 {name=p3 lab=clr}
C {devices/iopin.sym} 220 -220 2 1 {name=p4 lab=q0}
C {devices/iopin.sym} 460 -220 2 1 {name=p5 lab=q1
}
C {devices/iopin.sym} 700 -220 2 1 {name=p6 lab=q2}
C {devices/iopin.sym} 940 -220 2 1 {name=p7 lab=q3}
C {devices/iopin.sym} 60 -60 2 0 {name=p8 lab=vss
}
C {devices/iopin.sym} 60 -20 2 0 {name=p9 lab=vdd}
