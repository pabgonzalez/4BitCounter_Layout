v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {Test 2 NAND:
- Entrada A: 0-->1
- Entrada B: 0-->1
- Salida Z: 1-->0} 80 -460 0 0 0.3 0.3 {}
N 670 -180 670 -140 {
lab=GND}
N 670 -280 670 -240 {
lab=avss1p8}
N 770 -180 770 -140 {
lab=avss1p8}
N 770 -280 770 -240 {
lab=avdd1p8}
N 870 -280 870 -240 {
lab=vin}
N 870 -180 870 -140 {
lab=avss1p8}
N 300 -220 380 -220 {
lab=vout}
N 540 -220 540 -180 {
lab=#net1}
N 500 -220 540 -220 {
lab=#net1}
C {/foss/designs/sch/inverter.sym} 320 -140 0 0 {name=x2}
C {devices/vsource.sym} 670 -210 0 0 {name=V4 value=DC\{vss\} savecurrent=false}
C {devices/vsource.sym} 770 -210 0 0 {name=V5 value=DC\{vdd\} savecurrent=false}
C {devices/vsource.sym} 870 -210 0 0 {name=V6 value="PULSE(\{vdd\} 0 0.0 1p 1p \{Tclk/4\} \{Tclk/2\}) DC 0 AC 0" savecurrent=false}
C {devices/gnd.sym} 670 -140 0 0 {name=l1 lab=GND}
C {devices/netlist_not_shown.sym} 250 -470 0 0 {name=SIMULATION only_toplevel=false
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
  tran 0.01u 100n
  setplot tran1
  plot v(vin) v(vout)+2
reset
  dc V6 0 1.8 0.01
  setplot dc
  plot vin vout ylabel vout xlabel vin
  set filetype = ascii
  write dcsweep.raw
.endc

.end
"}
C {devices/lab_pin.sym} 670 -280 1 0 {name=p7 sig_type=std_logic lab=avss1p8}
C {devices/lab_pin.sym} 770 -280 1 0 {name=p8 sig_type=std_logic lab=avdd1p8}
C {devices/lab_pin.sym} 870 -280 1 0 {name=p9 sig_type=std_logic lab=vin}
C {devices/lab_pin.sym} 870 -140 3 0 {name=p10 sig_type=std_logic lab=avss1p8}
C {devices/lab_pin.sym} 770 -140 3 0 {name=p11 sig_type=std_logic lab=avss1p8}
C {/foss/designs/sch/nand.sym} 120 -140 0 0 {name=x1}
C {devices/lab_pin.sym} 200 -160 3 0 {name=p1 sig_type=std_logic lab=avss1p8}
C {devices/lab_pin.sym} 200 -280 1 0 {name=p2 sig_type=std_logic lab=avdd1p8}
C {devices/lab_pin.sym} 440 -180 3 0 {name=p3 sig_type=std_logic lab=avss1p8}
C {devices/lab_pin.sym} 440 -260 1 0 {name=p4 sig_type=std_logic lab=avdd1p8}
C {devices/lab_pin.sym} 140 -240 0 0 {name=p5 sig_type=std_logic lab=vin}
C {devices/lab_pin.sym} 140 -200 0 0 {name=p6 sig_type=std_logic lab=vin
}
C {devices/lab_pin.sym} 340 -220 1 0 {name=p12 sig_type=std_logic lab=vout}
C {devices/capa.sym} 540 -150 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 540 -120 3 0 {name=p13 sig_type=std_logic lab=avss1p8}
