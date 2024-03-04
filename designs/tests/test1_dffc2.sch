v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {Test 1 DFFC2
Flip Flop D con clear

1) Cuando clr=0, la salida Q 
solo cambia en los flancos descendentes de 
clk al valor indicado por la entrada D.

2) Cuando clr=1, Q=0} 90 -580 0 0 0.3 0.3 {}
N 600 -210 600 -170 {
lab=GND}
N 600 -310 600 -270 {
lab=avss1p8}
N 700 -210 700 -170 {
lab=avss1p8}
N 700 -310 700 -270 {
lab=avdd1p8}
N 940 -370 940 -330 {
lab=in}
N 940 -270 940 -230 {
lab=avss1p8}
N 470 -250 470 -210 {
lab=#net1}
N 430 -250 470 -250 {
lab=#net1}
N 800 -310 800 -270 {
lab=clk}
N 800 -210 800 -170 {
lab=avss1p8}
N 870 -340 870 -300 {
lab=clr}
N 870 -240 870 -200 {
lab=avss1p8}
N 230 -250 270 -250 {
lab=out}
N 270 -250 310 -250 {
lab=out}
C {/foss/designs/inverter.sym} 250 -170 0 0 {name=x2}
C {devices/vsource.sym} 600 -240 0 0 {name=V4 value=DC\{vss\} savecurrent=false}
C {devices/vsource.sym} 700 -240 0 0 {name=V5 value=DC\{vdd\} savecurrent=false}
C {devices/vsource.sym} 940 -300 0 0 {name=V6 value="PULSE(0 \{vdd\} \{Tclk/4\} 1p 1p \{5*Tclk/2\} \{4*Tclk\}) DC 0 AC 0" savecurrent=false}
C {devices/gnd.sym} 600 -170 0 0 {name=l1 lab=GND}
C {devices/netlist_not_shown.sym} 480 -520 0 0 {name=SIMULATION only_toplevel=false
value="
* Circuit Parameters
.param vdd = 1.8
.param vss = 0.0
.param Tclk = 10n
.options TEMP = 65.0

* Include Models
.lib /foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice TT

* OP Parameters & Singals to save
.save all

* Simulations
.control
  tran 0.01u 240n
  setplot tran1
  plot clr v(in)+2 v(out)+4 clk+6
reset
.endc

.end
"}
C {devices/lab_pin.sym} 600 -310 1 0 {name=p7 sig_type=std_logic lab=avss1p8}
C {devices/lab_pin.sym} 700 -310 1 0 {name=p8 sig_type=std_logic lab=avdd1p8}
C {devices/lab_pin.sym} 940 -370 1 0 {name=p9 sig_type=std_logic lab=in}
C {devices/lab_pin.sym} 940 -230 3 0 {name=p10 sig_type=std_logic lab=avss1p8}
C {devices/lab_pin.sym} 700 -170 3 0 {name=p11 sig_type=std_logic lab=avss1p8}
C {devices/lab_pin.sym} 150 -150 3 0 {name=p1 sig_type=std_logic lab=avss1p8}
C {devices/lab_pin.sym} 190 -150 3 0 {name=p2 sig_type=std_logic lab=avdd1p8}
C {devices/lab_pin.sym} 370 -210 3 0 {name=p3 sig_type=std_logic lab=avss1p8}
C {devices/lab_pin.sym} 370 -290 1 0 {name=p4 sig_type=std_logic lab=avdd1p8}
C {devices/lab_pin.sym} 270 -250 1 0 {name=p12 sig_type=std_logic lab=out}
C {devices/capa.sym} 470 -180 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 470 -150 3 0 {name=p13 sig_type=std_logic lab=avss1p8}
C {devices/vsource.sym} 800 -240 0 0 {name=V1 value="PULSE(\{vdd\} 0 0.0 1p 1p \{Tclk/2\} \{Tclk\}) DC 0 AC 0" savecurrent=false}
C {devices/lab_pin.sym} 800 -310 1 0 {name=p14 sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} 800 -170 3 0 {name=p15 sig_type=std_logic lab=avss1p8}
C {devices/lab_pin.sym} 110 -200 0 0 {name=p16 sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} 110 -250 0 0 {name=p17 sig_type=std_logic lab=in}
C {devices/vsource.sym} 870 -270 0 0 {name=V2 value="PULSE(0 \{vdd\} \{-Tclk/2\} 1p 1p \{Tclk*3\} \{Tclk*10\}) DC 0 AC 0" savecurrent=false}
C {devices/lab_pin.sym} 870 -340 1 0 {name=p5 sig_type=std_logic lab=clr}
C {devices/lab_pin.sym} 870 -200 3 0 {name=p6 sig_type=std_logic lab=avss1p8}
C {devices/lab_pin.sym} 170 -310 1 0 {name=p18 sig_type=std_logic lab=clr
}
C {/foss/designs/dffc2.sym} 90 -120 0 0 {name=x1}
