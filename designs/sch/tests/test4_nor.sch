v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {Test 4 NOR:
- Entrada A: 0
- Entrada B: 0-->1
- Salida Z: 1-->0

En este caso NO hay efecto backgate
y el pull up es más fuerte} 50 -500 0 0 0.3 0.3 {}
N 650 -180 650 -140 {
lab=GND}
N 650 -280 650 -240 {
lab=avss1p8}
N 750 -180 750 -140 {
lab=avss1p8}
N 750 -280 750 -240 {
lab=avdd1p8}
N 850 -280 850 -240 {
lab=vin}
N 850 -180 850 -140 {
lab=avss1p8}
N 280 -220 360 -220 {
lab=vout}
N 520 -220 520 -180 {
lab=#net1}
N 480 -220 520 -220 {
lab=#net1}
C {/foss/designs/sch/inverter.sym} 300 -140 0 0 {name=x2}
C {devices/vsource.sym} 650 -210 0 0 {name=V4 value=DC\{vss\} savecurrent=false}
C {devices/vsource.sym} 750 -210 0 0 {name=V5 value=DC\{vdd\} savecurrent=false}
C {devices/vsource.sym} 850 -210 0 0 {name=V6 value="PULSE(\{vdd\} 0 0.0 1p 1p \{Tclk/4\} \{Tclk/2\}) DC 0 AC 0" savecurrent=false}
C {devices/gnd.sym} 650 -140 0 0 {name=l1 lab=GND}
C {devices/netlist_not_shown.sym} 370 -480 0 0 {name=SIMULATION only_toplevel=false
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
C {devices/lab_pin.sym} 650 -280 1 0 {name=p7 sig_type=std_logic lab=avss1p8}
C {devices/lab_pin.sym} 750 -280 1 0 {name=p8 sig_type=std_logic lab=avdd1p8}
C {devices/lab_pin.sym} 850 -280 1 0 {name=p9 sig_type=std_logic lab=vin}
C {devices/lab_pin.sym} 850 -140 3 0 {name=p10 sig_type=std_logic lab=avss1p8}
C {devices/lab_pin.sym} 750 -140 3 0 {name=p11 sig_type=std_logic lab=avss1p8}
C {devices/lab_pin.sym} 180 -160 3 0 {name=p1 sig_type=std_logic lab=avss1p8}
C {devices/lab_pin.sym} 180 -280 1 0 {name=p2 sig_type=std_logic lab=avdd1p8}
C {devices/lab_pin.sym} 420 -180 3 0 {name=p3 sig_type=std_logic lab=avss1p8}
C {devices/lab_pin.sym} 420 -260 1 0 {name=p4 sig_type=std_logic lab=avdd1p8}
C {devices/lab_pin.sym} 130 -240 0 0 {name=p5 sig_type=std_logic lab=avss1p8}
C {devices/lab_pin.sym} 130 -200 0 0 {name=p6 sig_type=std_logic lab=vin}
C {devices/lab_pin.sym} 320 -220 1 0 {name=p12 sig_type=std_logic lab=vout}
C {devices/capa.sym} 520 -150 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 520 -120 3 0 {name=p13 sig_type=std_logic lab=avss1p8}
C {/foss/designs/sch/nor.sym} 110 -140 0 0 {name=x1}
