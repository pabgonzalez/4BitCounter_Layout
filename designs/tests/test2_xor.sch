v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {Test 2 XOR:
- Entrada A: 0-->1
- Entrada B: 1
- Salida Z: 1-->0} 30 -530 0 0 0.3 0.3 {}
N 630 -220 630 -180 {
lab=GND}
N 630 -320 630 -280 {
lab=avss1p8}
N 730 -220 730 -180 {
lab=avss1p8}
N 730 -320 730 -280 {
lab=avdd1p8}
N 830 -320 830 -280 {
lab=vin}
N 830 -220 830 -180 {
lab=avss1p8}
N 260 -260 340 -260 {
lab=vout}
N 500 -260 500 -220 {
lab=#net1}
N 460 -260 500 -260 {
lab=#net1}
N 240 -260 260 -260 {
lab=vout}
C {/foss/designs/inverter.sym} 280 -180 0 0 {name=x2}
C {devices/vsource.sym} 630 -250 0 0 {name=V4 value=DC\{vss\} savecurrent=false}
C {devices/vsource.sym} 730 -250 0 0 {name=V5 value=DC\{vdd\} savecurrent=false}
C {devices/vsource.sym} 830 -250 0 0 {name=V6 value="PULSE(\{vdd\} 0 0.0 1p 1p \{Tclk/4\} \{Tclk/2\}) DC 0 AC 0" savecurrent=false}
C {devices/gnd.sym} 630 -180 0 0 {name=l1 lab=GND}
C {devices/netlist_not_shown.sym} 350 -520 0 0 {name=SIMULATION only_toplevel=false
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
C {devices/lab_pin.sym} 630 -320 1 0 {name=p7 sig_type=std_logic lab=avss1p8}
C {devices/lab_pin.sym} 730 -320 1 0 {name=p8 sig_type=std_logic lab=avdd1p8}
C {devices/lab_pin.sym} 830 -320 1 0 {name=p9 sig_type=std_logic lab=vin}
C {devices/lab_pin.sym} 830 -180 3 0 {name=p10 sig_type=std_logic lab=avss1p8}
C {devices/lab_pin.sym} 730 -180 3 0 {name=p11 sig_type=std_logic lab=avss1p8}
C {devices/lab_pin.sym} 160 -200 3 0 {name=p1 sig_type=std_logic lab=avss1p8}
C {devices/lab_pin.sym} 160 -320 1 0 {name=p2 sig_type=std_logic lab=avdd1p8}
C {devices/lab_pin.sym} 400 -220 3 0 {name=p3 sig_type=std_logic lab=avss1p8}
C {devices/lab_pin.sym} 400 -300 1 0 {name=p4 sig_type=std_logic lab=avdd1p8}
C {devices/lab_pin.sym} 100 -280 0 0 {name=p5 sig_type=std_logic lab=vin}
C {devices/lab_pin.sym} 100 -240 0 0 {name=p6 sig_type=std_logic lab=avdd1p8
}
C {devices/lab_pin.sym} 300 -260 1 0 {name=p12 sig_type=std_logic lab=vout}
C {devices/capa.sym} 500 -190 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 500 -160 3 0 {name=p13 sig_type=std_logic lab=avss1p8}
C {/foss/designs/xor.sym} 60 -180 0 0 {name=x1}
