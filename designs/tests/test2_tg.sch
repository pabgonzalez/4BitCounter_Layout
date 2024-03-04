v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {Test 2 TG:
- Entrada: barrido de vss a vdd
- Enable
La salida copia a la entrada} 20 -530 0 0 0.3 0.3 {}
N 620 -220 620 -180 {
lab=GND}
N 620 -320 620 -280 {
lab=avss1p8}
N 720 -220 720 -180 {
lab=avss1p8}
N 720 -320 720 -280 {
lab=avdd1p8}
N 820 -320 820 -280 {
lab=vin}
N 820 -220 820 -180 {
lab=avss1p8}
N 250 -260 330 -260 {
lab=vout}
N 490 -260 490 -220 {
lab=#net1}
N 450 -260 490 -260 {
lab=#net1}
N 60 -260 110 -260 {
lab=vin}
C {/foss/designs/inverter.sym} 270 -180 0 0 {name=x2}
C {devices/vsource.sym} 620 -250 0 0 {name=V4 value=DC\{vss\} savecurrent=false}
C {devices/vsource.sym} 720 -250 0 0 {name=V5 value=DC\{vdd\} savecurrent=false}
C {devices/vsource.sym} 820 -250 0 0 {name=V6 value="PULSE(\{vdd\} 0 0.0 1p 1p \{Tclk/4\} \{Tclk/2\}) DC 0 AC 0" savecurrent=false}
C {devices/gnd.sym} 620 -180 0 0 {name=l1 lab=GND}
C {devices/netlist_not_shown.sym} 340 -520 0 0 {name=SIMULATION only_toplevel=false
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
  plot vout ylabel vout xlabel vin
  set filetype = ascii
  write dcsweep.raw
.endc

.end
"}
C {devices/lab_pin.sym} 620 -320 1 0 {name=p7 sig_type=std_logic lab=avss1p8}
C {devices/lab_pin.sym} 720 -320 1 0 {name=p8 sig_type=std_logic lab=avdd1p8}
C {devices/lab_pin.sym} 820 -320 1 0 {name=p9 sig_type=std_logic lab=vin}
C {devices/lab_pin.sym} 820 -180 3 0 {name=p10 sig_type=std_logic lab=avss1p8}
C {devices/lab_pin.sym} 720 -180 3 0 {name=p11 sig_type=std_logic lab=avss1p8}
C {devices/lab_pin.sym} 390 -220 3 0 {name=p3 sig_type=std_logic lab=avss1p8}
C {devices/lab_pin.sym} 390 -300 1 0 {name=p4 sig_type=std_logic lab=avdd1p8}
C {devices/lab_pin.sym} 60 -260 0 0 {name=p5 sig_type=std_logic lab=vin}
C {devices/lab_pin.sym} 290 -260 1 0 {name=p12 sig_type=std_logic lab=vout}
C {devices/capa.sym} 490 -190 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 490 -160 3 0 {name=p13 sig_type=std_logic lab=avss1p8}
C {devices/lab_pin.sym} 180 -300 1 0 {name=p6 sig_type=std_logic lab=avdd1p8}
C {devices/lab_pin.sym} 180 -200 3 0 {name=p14 sig_type=std_logic lab=avss1p8}
C {/foss/designs/tg.sym} -50 -100 0 0 {name=x1}
