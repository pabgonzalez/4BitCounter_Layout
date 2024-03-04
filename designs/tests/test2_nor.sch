v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {Test 2 NOR:
- Entrada A: 0-->1
- Entrada B: 0-->1
- Salida Z: 1-->0} 30 -450 0 0 0.3 0.3 {}
N 620 -170 620 -130 {
lab=GND}
N 620 -270 620 -230 {
lab=avss1p8}
N 720 -170 720 -130 {
lab=avss1p8}
N 720 -270 720 -230 {
lab=avdd1p8}
N 820 -270 820 -230 {
lab=vin}
N 820 -170 820 -130 {
lab=avss1p8}
N 250 -210 330 -210 {
lab=vout}
N 490 -210 490 -170 {
lab=#net1}
N 450 -210 490 -210 {
lab=#net1}
C {/foss/designs/inverter.sym} 270 -130 0 0 {name=x2}
C {devices/vsource.sym} 620 -200 0 0 {name=V4 value=DC\{vss\} savecurrent=false}
C {devices/vsource.sym} 720 -200 0 0 {name=V5 value=DC\{vdd\} savecurrent=false}
C {devices/vsource.sym} 820 -200 0 0 {name=V6 value="PULSE(\{vdd\} 0 0.0 1p 1p \{Tclk/4\} \{Tclk/2\}) DC 0 AC 0" savecurrent=false}
C {devices/gnd.sym} 620 -130 0 0 {name=l1 lab=GND}
C {devices/netlist_not_shown.sym} 200 -460 0 0 {name=SIMULATION only_toplevel=false
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
C {devices/lab_pin.sym} 620 -270 1 0 {name=p7 sig_type=std_logic lab=avss1p8}
C {devices/lab_pin.sym} 720 -270 1 0 {name=p8 sig_type=std_logic lab=avdd1p8}
C {devices/lab_pin.sym} 820 -270 1 0 {name=p9 sig_type=std_logic lab=vin}
C {devices/lab_pin.sym} 820 -130 3 0 {name=p10 sig_type=std_logic lab=avss1p8}
C {devices/lab_pin.sym} 720 -130 3 0 {name=p11 sig_type=std_logic lab=avss1p8}
C {devices/lab_pin.sym} 150 -150 3 0 {name=p1 sig_type=std_logic lab=avss1p8}
C {devices/lab_pin.sym} 150 -270 1 0 {name=p2 sig_type=std_logic lab=avdd1p8}
C {devices/lab_pin.sym} 390 -170 3 0 {name=p3 sig_type=std_logic lab=avss1p8}
C {devices/lab_pin.sym} 390 -250 1 0 {name=p4 sig_type=std_logic lab=avdd1p8}
C {devices/lab_pin.sym} 100 -230 0 0 {name=p5 sig_type=std_logic lab=vin}
C {devices/lab_pin.sym} 100 -190 0 0 {name=p6 sig_type=std_logic lab=vin
}
C {devices/lab_pin.sym} 290 -210 1 0 {name=p12 sig_type=std_logic lab=vout}
C {devices/capa.sym} 490 -140 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 490 -110 3 0 {name=p13 sig_type=std_logic lab=avss1p8}
C {/foss/designs/nor.sym} 80 -130 0 0 {name=x1}
