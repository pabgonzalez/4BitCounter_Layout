v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {Test 1 DFFC
Flip Flop D con clear

1) Cuando clr=0, la salida Q 
solo cambia en los flancos descendentes de 
clk al valor indicado por la entrada D.

2) Cuando clr=1, Q=0} 160 -570 0 0 0.3 0.3 {}
N 670 -200 670 -160 {
lab=GND}
N 670 -300 670 -260 {
lab=avss1p8}
N 770 -200 770 -160 {
lab=avss1p8}
N 770 -300 770 -260 {
lab=avdd1p8}
N 1010 -360 1010 -320 {
lab=in}
N 1010 -260 1010 -220 {
lab=avss1p8}
N 540 -240 540 -200 {
lab=#net1}
N 500 -240 540 -240 {
lab=#net1}
N 870 -300 870 -260 {
lab=clk}
N 870 -200 870 -160 {
lab=avss1p8}
N 940 -330 940 -290 {
lab=clr}
N 940 -230 940 -190 {
lab=avss1p8}
N 300 -240 340 -240 {
lab=out}
N 340 -240 380 -240 {
lab=out}
C {/foss/designs/sch/inverter.sym} 320 -160 0 0 {name=x2}
C {devices/vsource.sym} 670 -230 0 0 {name=V4 value=DC\{vss\} savecurrent=false}
C {devices/vsource.sym} 770 -230 0 0 {name=V5 value=DC\{vdd\} savecurrent=false}
C {devices/vsource.sym} 1010 -290 0 0 {name=V6 value="PULSE(0 \{vdd\} \{Tclk/4\} 1p 1p \{5*Tclk/2\} \{4*Tclk\}) DC 0 AC 0" savecurrent=false}
C {devices/gnd.sym} 670 -160 0 0 {name=l1 lab=GND}
C {devices/netlist_not_shown.sym} 550 -510 0 0 {name=SIMULATION only_toplevel=false
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
C {devices/lab_pin.sym} 670 -300 1 0 {name=p7 sig_type=std_logic lab=avss1p8}
C {devices/lab_pin.sym} 770 -300 1 0 {name=p8 sig_type=std_logic lab=avdd1p8}
C {devices/lab_pin.sym} 1010 -360 1 0 {name=p9 sig_type=std_logic lab=in}
C {devices/lab_pin.sym} 1010 -220 3 0 {name=p10 sig_type=std_logic lab=avss1p8}
C {devices/lab_pin.sym} 770 -160 3 0 {name=p11 sig_type=std_logic lab=avss1p8}
C {devices/lab_pin.sym} 220 -140 3 0 {name=p1 sig_type=std_logic lab=avss1p8}
C {devices/lab_pin.sym} 260 -140 3 0 {name=p2 sig_type=std_logic lab=avdd1p8}
C {devices/lab_pin.sym} 440 -200 3 0 {name=p3 sig_type=std_logic lab=avss1p8}
C {devices/lab_pin.sym} 440 -280 1 0 {name=p4 sig_type=std_logic lab=avdd1p8}
C {devices/lab_pin.sym} 340 -240 1 0 {name=p12 sig_type=std_logic lab=out}
C {devices/capa.sym} 540 -170 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 540 -140 3 0 {name=p13 sig_type=std_logic lab=avss1p8}
C {/foss/designs/sch/dffc.sym} -20 20 0 0 {name=x1}
C {devices/vsource.sym} 870 -230 0 0 {name=V1 value="PULSE(\{vdd\} 0 0.0 1p 1p \{Tclk/2\} \{Tclk\}) DC 0 AC 0" savecurrent=false}
C {devices/lab_pin.sym} 870 -300 1 0 {name=p14 sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} 870 -160 3 0 {name=p15 sig_type=std_logic lab=avss1p8}
C {devices/lab_pin.sym} 180 -190 0 0 {name=p16 sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} 180 -240 0 0 {name=p17 sig_type=std_logic lab=in}
C {devices/vsource.sym} 940 -260 0 0 {name=V2 value="PULSE(0 \{vdd\} \{-Tclk/2\} 1p 1p \{Tclk*3\} \{Tclk*10\}) DC 0 AC 0" savecurrent=false}
C {devices/lab_pin.sym} 940 -330 1 0 {name=p5 sig_type=std_logic lab=clr}
C {devices/lab_pin.sym} 940 -190 3 0 {name=p6 sig_type=std_logic lab=avss1p8}
C {devices/lab_pin.sym} 240 -300 1 0 {name=p18 sig_type=std_logic lab=clr
}
