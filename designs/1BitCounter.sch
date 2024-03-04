v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {1 bit counter

CE: counter enable
CLR: clear signal
CLK: clock signal
SOUT: counter output
VDD: high voltage supply
VSS: low voltage supply

Probar dffc.sym o dffc2.sym} 40 -460 0 0 0.3 0.3 {}
N 530 -340 590 -340 {
lab=#net1}
N 710 -340 750 -340 {
lab=Q}
N 750 -460 750 -340 {
lab=Q}
N 370 -360 390 -360 {
lab=ce}
N 370 -360 370 -150 {
lab=ce}
N 370 -150 390 -150 {
lab=ce}
N 270 -320 390 -320 {
lab=Q}
N 270 -460 750 -460 {
lab=Q}
N 270 -110 390 -110 {
lab=Q}
N 270 -460 270 -110 {
lab=Q}
N 630 -420 650 -420 {
lab=clr}
N 650 -420 650 -400 {
lab=clr}
N 700 -160 730 -160 {
lab=vdd}
N 700 -130 730 -130 {
lab=vss}
N 750 -340 780 -340 {
lab=Q}
C {/foss/designs/and.sym} 370 -60 0 0 {name=x1}
C {/foss/designs/xor.sym} 350 -260 0 0 {name=x2}
C {/foss/designs/dffc.sym} 390 -80 0 0 {name=x3}
C {devices/iopin.sym} 590 -290 2 0 {name=p1 lab=clk}
C {devices/iopin.sym} 530 -130 2 1 {name=p2 lab=sout}
C {devices/iopin.sym} 370 -250 2 0 {name=p3 lab=ce}
C {devices/iopin.sym} 630 -420 2 0 {name=p4 lab=clr}
C {devices/iopin.sym} 700 -160 2 0 {name=p5 lab=vdd}
C {devices/iopin.sym} 700 -130 2 0 {name=p6 lab=vss}
C {devices/lab_pin.sym} 730 -160 0 1 {name=p7 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 730 -130 0 1 {name=p8 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 670 -240 1 1 {name=p9 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 450 -400 3 1 {name=p10 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 450 -190 3 1 {name=p11 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 630 -240 1 1 {name=p12 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 450 -280 1 1 {name=p13 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 450 -70 1 1 {name=p14 sig_type=std_logic lab=vss}
C {devices/iopin.sym} 780 -340 2 1 {name=p16 lab=Q}
