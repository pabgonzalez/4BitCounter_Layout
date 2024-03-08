v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {Test 1 1BitCounter
Contador de 1 bit

Se verifica que:
1) Con CE=0, Sout=0 y el bit Q mantiene su valor.
2) Con CE=1, Q=Sout alterna entre 0 y 1 en el flanco descendente del clk.
3) Con CLR=1, Q=Sout=0} 80 -690 0 0 0.3 0.3 {}
N 740 -250 740 -210 {
lab=GND}
N 740 -350 740 -310 {
lab=avss1p8}
N 840 -250 840 -210 {
lab=avss1p8}
N 840 -350 840 -310 {
lab=avdd1p8}
N 1080 -410 1080 -370 {
lab=ce}
N 1080 -310 1080 -270 {
lab=avss1p8}
N 460 -410 500 -410 {
lab=#net1}
N 420 -410 460 -410 {
lab=#net1}
N 940 -350 940 -310 {
lab=clk}
N 940 -250 940 -210 {
lab=avss1p8}
N 1010 -380 1010 -340 {
lab=clr}
N 1010 -280 1010 -240 {
lab=avss1p8}
N 220 -410 260 -410 {
lab=sout}
N 260 -410 300 -410 {
lab=sout}
N 290 -210 330 -210 {
lab=sout}
N 220 -370 250 -370 {
lab=sout}
N 250 -370 250 -210 {
lab=sout}
N 250 -210 290 -210 {
lab=sout}
N 450 -210 500 -210 {
lab=#net2}
C {/foss/designs/sch/inverter.sym} 240 -330 0 0 {name=x2}
C {devices/vsource.sym} 740 -280 0 0 {name=V4 value=DC\{vss\} savecurrent=false}
C {devices/vsource.sym} 840 -280 0 0 {name=V5 value=DC\{vdd\} savecurrent=false}
C {devices/vsource.sym} 1080 -340 0 0 {name=V6 value="PULSE(0 \{vdd\} \{Tclk/4\} 1p 1p \{16*Tclk\} \{20*Tclk\}) DC 0 AC 0" savecurrent=false}
C {devices/gnd.sym} 740 -210 0 0 {name=l1 lab=GND}
C {devices/netlist_not_shown.sym} 710 -650 0 0 {name=SIMULATION only_toplevel=false
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
  tran 0.01u 200n
  setplot tran1
  plot clr ce+2 v(sout)+4 v(q)+6 clk+8
reset
.endc

.end
"}
C {devices/lab_pin.sym} 740 -350 1 0 {name=p7 sig_type=std_logic lab=avss1p8}
C {devices/lab_pin.sym} 840 -350 1 0 {name=p8 sig_type=std_logic lab=avdd1p8}
C {devices/lab_pin.sym} 1080 -410 1 0 {name=p9 sig_type=std_logic lab=ce}
C {devices/lab_pin.sym} 1080 -270 3 0 {name=p10 sig_type=std_logic lab=avss1p8}
C {devices/lab_pin.sym} 840 -210 3 0 {name=p11 sig_type=std_logic lab=avss1p8}
C {devices/lab_pin.sym} 140 -310 3 0 {name=p1 sig_type=std_logic lab=avss1p8}
C {devices/lab_pin.sym} 180 -310 3 0 {name=p2 sig_type=std_logic lab=avdd1p8}
C {devices/lab_pin.sym} 360 -370 3 0 {name=p3 sig_type=std_logic lab=avss1p8}
C {devices/lab_pin.sym} 360 -450 1 0 {name=p4 sig_type=std_logic lab=avdd1p8}
C {devices/lab_pin.sym} 260 -410 1 0 {name=p12 sig_type=std_logic lab=sout}
C {devices/capa.sym} 530 -410 3 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 560 -410 2 0 {name=p13 sig_type=std_logic lab=avss1p8}
C {devices/vsource.sym} 940 -280 0 0 {name=V1 value="PULSE(\{vdd\} 0 0.0 1p 1p \{Tclk/2\} \{Tclk\}) DC 0 AC 0" savecurrent=false}
C {devices/lab_pin.sym} 940 -350 1 0 {name=p14 sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} 940 -210 3 0 {name=p15 sig_type=std_logic lab=avss1p8}
C {devices/lab_pin.sym} 100 -370 0 0 {name=p16 sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} 100 -410 0 0 {name=p17 sig_type=std_logic lab=ce}
C {devices/vsource.sym} 1010 -310 0 0 {name=V2 value="PULSE(0 \{vdd\} \{-Tclk/2\} 1p 1p \{Tclk*2\} \{Tclk*10\}) DC 0 AC 0" savecurrent=false}
C {devices/lab_pin.sym} 1010 -380 1 0 {name=p5 sig_type=std_logic lab=clr}
C {devices/lab_pin.sym} 1010 -240 3 0 {name=p6 sig_type=std_logic lab=avss1p8}
C {devices/lab_pin.sym} 160 -470 1 0 {name=p18 sig_type=std_logic lab=clr
}
C {/foss/designs/sch/1BitCounter.sym} -140 -150 0 0 {name=x1}
C {/foss/designs/sch/inverter.sym} 270 -130 0 0 {name=x3}
C {devices/lab_pin.sym} 390 -170 3 0 {name=p19 sig_type=std_logic lab=avss1p8}
C {devices/lab_pin.sym} 390 -250 1 0 {name=p20 sig_type=std_logic lab=avdd1p8}
C {devices/capa.sym} 530 -210 3 0 {name=C2
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 560 -210 2 0 {name=p21 sig_type=std_logic lab=avss1p8}
C {devices/lab_pin.sym} 290 -210 1 0 {name=p22 sig_type=std_logic lab=q
}
