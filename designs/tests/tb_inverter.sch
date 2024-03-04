v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 220 -220 220 -180 {
lab=avss1p8}
N 220 -340 220 -300 {
lab=avdd1p8}
N 280 -260 400 -260 {
lab=vout}
N 120 -260 160 -260 {
lab=vin}
N 520 -260 560 -260 {
lab=Z}
N 460 -220 460 -180 {
lab=avss1p8}
N 460 -340 460 -300 {
lab=avdd1p8}
N 720 -240 720 -200 {
lab=GND}
N 720 -340 720 -300 {
lab=avss1p8}
N 820 -240 820 -200 {
lab=avss1p8}
N 820 -340 820 -300 {
lab=avdd1p8}
N 920 -340 920 -300 {
lab=vin}
N 920 -240 920 -200 {
lab=avss1p8}
N 620 -160 620 -120 {
lab=avss1p8}
N 620 -260 620 -220 {
lab=Z}
C {devices/vsource.sym} 720 -270 0 0 {name=V4 value=DC\{vss\} savecurrent=false}
C {devices/vsource.sym} 820 -270 0 0 {name=V5 value=DC\{vdd\} savecurrent=false}
C {devices/vsource.sym} 920 -270 0 0 {name=V6 value="PULSE(\{vdd\} 0 0.0 1p 1p \{Tclk/4\} \{Tclk/2\}) DC 0 AC 0" savecurrent=false}
C {/foss/designs/inverter.sym} 100 -180 0 0 {name=x1}
C {/foss/designs/inverter.sym} 340 -180 0 0 {name=x2}
C {devices/gnd.sym} 720 -200 0 0 {name=l1 lab=GND}
C {devices/netlist_not_shown.sym} 1030 -180 0 0 {name=SIMULATION only_toplevel=false
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
  tran 0.001n 10n
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
C {devices/capa.sym} 620 -190 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 220 -180 0 0 {name=p1 sig_type=std_logic lab=avss1p8
}
C {devices/lab_pin.sym} 460 -180 0 0 {name=p2 sig_type=std_logic lab=avss1p8}
C {devices/lab_pin.sym} 220 -340 0 0 {name=p3 sig_type=std_logic lab=avdd1p8}
C {devices/lab_pin.sym} 460 -340 0 0 {name=p4 sig_type=std_logic lab=avdd1p8}
C {devices/lab_pin.sym} 120 -260 0 0 {name=p5 sig_type=std_logic lab=vin
}
C {devices/lab_pin.sym} 560 -260 2 0 {name=p6 sig_type=std_logic lab=Z
}
C {devices/lab_pin.sym} 720 -340 1 0 {name=p7 sig_type=std_logic lab=avss1p8}
C {devices/lab_pin.sym} 820 -340 1 0 {name=p8 sig_type=std_logic lab=avdd1p8}
C {devices/lab_pin.sym} 920 -340 1 0 {name=p9 sig_type=std_logic lab=vin}
C {devices/lab_pin.sym} 920 -200 3 0 {name=p10 sig_type=std_logic lab=avss1p8}
C {devices/lab_pin.sym} 820 -200 3 0 {name=p11 sig_type=std_logic lab=avss1p8}
C {devices/lab_pin.sym} 620 -120 0 0 {name=p12 sig_type=std_logic lab=avss1p8}
C {devices/lab_pin.sym} 620 -260 2 0 {name=p13 sig_type=std_logic lab=Z}
C {devices/lab_pin.sym} 340 -260 1 0 {name=p14 sig_type=std_logic lab=vout
}
