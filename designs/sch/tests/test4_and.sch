v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {Test:
- Entrada A: 1
- Entrada B: 1-->0
- Salida Z: 1-->0

En este caso NO hay efecto backgate} 30 -470 0 0 0.3 0.3 {}
N 630 -160 630 -120 {
lab=GND}
N 630 -260 630 -220 {
lab=avss1p8}
N 730 -160 730 -120 {
lab=avss1p8}
N 730 -260 730 -220 {
lab=avdd1p8}
N 830 -260 830 -220 {
lab=vin}
N 830 -160 830 -120 {
lab=avss1p8}
N 260 -200 340 -200 {
lab=vout}
N 500 -200 500 -160 {
lab=#net1}
N 460 -200 500 -200 {
lab=#net1}
N 240 -200 260 -200 {}
C {/foss/designs/sch/inverter.sym} 280 -120 0 0 {name=x2}
C {devices/vsource.sym} 630 -190 0 0 {name=V4 value=DC\{vss\} savecurrent=false}
C {devices/vsource.sym} 730 -190 0 0 {name=V5 value=DC\{vdd\} savecurrent=false}
C {devices/vsource.sym} 830 -190 0 0 {name=V6 value="PULSE(\{vdd\} 0 0.0 1p 1p \{Tclk/4\} \{Tclk/2\}) DC 0 AC 0" savecurrent=false}
C {devices/gnd.sym} 630 -120 0 0 {name=l1 lab=GND}
C {devices/netlist_not_shown.sym} 350 -460 0 0 {name=SIMULATION only_toplevel=false
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
C {devices/lab_pin.sym} 630 -260 1 0 {name=p7 sig_type=std_logic lab=avss1p8}
C {devices/lab_pin.sym} 730 -260 1 0 {name=p8 sig_type=std_logic lab=avdd1p8}
C {devices/lab_pin.sym} 830 -260 1 0 {name=p9 sig_type=std_logic lab=vin}
C {devices/lab_pin.sym} 830 -120 3 0 {name=p10 sig_type=std_logic lab=avss1p8}
C {devices/lab_pin.sym} 730 -120 3 0 {name=p11 sig_type=std_logic lab=avss1p8}
C {devices/lab_pin.sym} 160 -140 3 0 {name=p1 sig_type=std_logic lab=avss1p8}
C {devices/lab_pin.sym} 160 -260 1 0 {name=p2 sig_type=std_logic lab=avdd1p8}
C {devices/lab_pin.sym} 400 -160 3 0 {name=p3 sig_type=std_logic lab=avss1p8}
C {devices/lab_pin.sym} 400 -240 1 0 {name=p4 sig_type=std_logic lab=avdd1p8}
C {devices/lab_pin.sym} 100 -220 0 0 {name=p5 sig_type=std_logic lab=avdd1p8}
C {devices/lab_pin.sym} 100 -180 0 0 {name=p6 sig_type=std_logic lab=vin}
C {devices/lab_pin.sym} 300 -200 1 0 {name=p12 sig_type=std_logic lab=vout}
C {devices/capa.sym} 500 -130 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 500 -100 3 0 {name=p13 sig_type=std_logic lab=avss1p8}
C {/foss/designs/sch/and.sym} 80 -130 0 0 {name=x1}
