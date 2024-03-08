v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {Test 1 clock generator

Se verifica que:
clk1 y clk2 nunca valen 1 al mismo tiempo} 30 -650 0 0 0.3 0.3 {}
N 980 -190 980 -150 {
lab=GND}
N 980 -290 980 -250 {
lab=avss1p8}
N 1080 -190 1080 -150 {
lab=avss1p8}
N 1080 -290 1080 -250 {
lab=avdd1p8}
N 700 -350 740 -350 {
lab=#net1}
N 660 -350 700 -350 {
lab=#net1}
N 1180 -290 1180 -250 {
lab=clk}
N 1180 -190 1180 -150 {
lab=avss1p8}
N 460 -350 500 -350 {
lab=clk1}
N 500 -350 540 -350 {
lab=clk1}
N 530 -150 570 -150 {
lab=clk2}
N 490 -150 530 -150 {
lab=clk2}
N 690 -150 740 -150 {
lab=#net2}
N 320 -350 460 -350 {
lab=clk1}
N 320 -270 490 -270 {
lab=clk2}
N 490 -270 490 -150 {
lab=clk2}
C {/foss/designs/sch/inverter.sym} 480 -270 0 0 {name=x2}
C {devices/vsource.sym} 980 -220 0 0 {name=V4 value=DC\{vss\} savecurrent=false}
C {devices/vsource.sym} 1080 -220 0 0 {name=V5 value=DC\{vdd\} savecurrent=false}
C {devices/gnd.sym} 980 -150 0 0 {name=l1 lab=GND}
C {devices/netlist_not_shown.sym} 660 -610 0 0 {name=SIMULATION only_toplevel=false
value="
* Circuit Parameters
.param vdd = 1.8
.param vss = 0.0
.param Tclk = 5n
.options TEMP = 65.0

* Include Models
.lib /foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice TT

* OP Parameters & Singals to save
.save all

* Simulations
.control
  tran 0.001n 10n
  setplot tran1
  plot clk v(clk1)+2 v(clk2)+4
reset
.endc

.end
"}
C {devices/lab_pin.sym} 980 -290 1 0 {name=p7 sig_type=std_logic lab=avss1p8}
C {devices/lab_pin.sym} 1080 -290 1 0 {name=p8 sig_type=std_logic lab=avdd1p8}
C {devices/lab_pin.sym} 1080 -150 3 0 {name=p11 sig_type=std_logic lab=avss1p8}
C {devices/lab_pin.sym} 320 -330 0 1 {name=p1 sig_type=std_logic lab=avss1p8}
C {devices/lab_pin.sym} 320 -290 2 0 {name=p2 sig_type=std_logic lab=avdd1p8}
C {devices/lab_pin.sym} 600 -310 3 0 {name=p3 sig_type=std_logic lab=avss1p8}
C {devices/lab_pin.sym} 600 -390 1 0 {name=p4 sig_type=std_logic lab=avdd1p8}
C {devices/lab_pin.sym} 500 -350 1 0 {name=p12 sig_type=std_logic lab=clk1
}
C {devices/capa.sym} 770 -350 3 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 800 -350 2 0 {name=p13 sig_type=std_logic lab=avss1p8}
C {devices/vsource.sym} 1180 -220 0 0 {name=V1 value="PULSE(\{vdd\} 0 0.0 1p 1p \{Tclk/2\} \{Tclk\}) DC 0 AC 0" savecurrent=false}
C {devices/lab_pin.sym} 1180 -290 1 0 {name=p14 sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} 1180 -150 3 0 {name=p15 sig_type=std_logic lab=avss1p8}
C {devices/lab_pin.sym} 320 -310 2 0 {name=p16 sig_type=std_logic lab=clk}
C {/foss/designs/sch/inverter.sym} 510 -70 0 0 {name=x3}
C {devices/lab_pin.sym} 630 -110 3 0 {name=p19 sig_type=std_logic lab=avss1p8}
C {devices/lab_pin.sym} 630 -190 1 0 {name=p20 sig_type=std_logic lab=avdd1p8}
C {devices/capa.sym} 770 -150 3 0 {name=C2
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 800 -150 2 0 {name=p21 sig_type=std_logic lab=avss1p8}
C {devices/lab_pin.sym} 530 -150 1 0 {name=p22 sig_type=std_logic lab=clk2
}
C {/foss/designs/sch/clockgen.sym} 170 -310 0 0 {name=x1}
