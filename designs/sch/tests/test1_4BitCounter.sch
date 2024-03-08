v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {Test 1 4BitCounter
Contador de 4 bits

El contador no avanza si CE=0.
Cuando clr=1, el contador se pone en cero.

Funciona con dffc.sym y dffc2.sym (en 1BitCounter)} 500 -880 0 1 0.3 0.3 {}
N 760 -430 760 -390 {
lab=GND}
N 760 -530 760 -490 {
lab=avss1p8}
N 860 -430 860 -390 {
lab=avss1p8}
N 860 -530 860 -490 {
lab=avdd1p8}
N 1100 -590 1100 -550 {
lab=ce}
N 1100 -490 1100 -450 {
lab=avss1p8}
N 960 -530 960 -490 {
lab=clk}
N 960 -430 960 -390 {
lab=avss1p8}
N 1030 -560 1030 -520 {
lab=clr}
N 1030 -460 1030 -420 {
lab=avss1p8}
N 380 -680 380 -660 {
lab=avdd1p8}
N 380 -580 380 -560 {
lab=avss1p8}
N 440 -620 460 -620 {
lab=#net1}
N 380 -530 380 -510 {
lab=avdd1p8}
N 380 -430 380 -410 {
lab=avss1p8}
N 440 -470 460 -470 {
lab=#net2}
N 380 -380 380 -360 {
lab=avdd1p8}
N 380 -280 380 -260 {
lab=avss1p8}
N 440 -320 460 -320 {
lab=#net3}
N 380 -230 380 -210 {
lab=avdd1p8}
N 380 -130 380 -110 {
lab=avss1p8}
N 440 -170 460 -170 {
lab=#net4}
N 230 -620 320 -620 {
lab=q0}
N 230 -600 300 -600 {
lab=q1}
N 300 -600 300 -470 {
lab=q1}
N 300 -470 320 -470 {
lab=q1}
N 230 -580 280 -580 {
lab=q2}
N 280 -580 280 -320 {
lab=q2}
N 280 -320 320 -320 {
lab=q2}
N 230 -560 260 -560 {
lab=q3}
N 260 -560 260 -170 {
lab=q3}
N 260 -170 320 -170 {
lab=q3}
N 290 -650 290 -620 {
lab=q0}
C {/foss/designs/sch/inverter.sym} 260 -540 0 0 {name=x2}
C {devices/vsource.sym} 760 -460 0 0 {name=V4 value=DC\{vss\} savecurrent=false}
C {devices/vsource.sym} 860 -460 0 0 {name=V5 value=DC\{vdd\} savecurrent=false}
C {devices/vsource.sym} 1100 -520 0 0 {name=V6 value="PULSE(0 \{vdd\} \{Tclk/4\} 1p 1p \{22*Tclk\} \{25*Tclk\}) DC 0 AC 0" savecurrent=false}
C {devices/gnd.sym} 760 -390 0 0 {name=l1 lab=GND}
C {devices/netlist_not_shown.sym} 780 -770 0 0 {name=SIMULATION only_toplevel=false
value="
* Circuit Parameters
.param vdd = 1.8
.param vss = 0.0
.param Tclk = 15n
.options TEMP = 65.0

* Include Models
.lib /foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice TT

* OP Parameters & Singals to save
.save all

* Simulations
.control
  tran 0.01u 1u
  setplot tran1
  plot clr ce+2 v(q0)+4 v(q1)+6 v(q2)+8 v(q3)+10 clk+12
reset
.endc

.end
"}
C {devices/lab_pin.sym} 760 -530 1 0 {name=p7 sig_type=std_logic lab=avss1p8}
C {devices/lab_pin.sym} 860 -530 1 0 {name=p8 sig_type=std_logic lab=avdd1p8}
C {devices/lab_pin.sym} 1100 -590 1 0 {name=p9 sig_type=std_logic lab=ce}
C {devices/lab_pin.sym} 1100 -450 3 0 {name=p10 sig_type=std_logic lab=avss1p8}
C {devices/lab_pin.sym} 860 -390 3 0 {name=p11 sig_type=std_logic lab=avss1p8}
C {devices/lab_pin.sym} 150 -500 3 0 {name=p1 sig_type=std_logic lab=avss1p8}
C {devices/lab_pin.sym} 190 -500 3 0 {name=p2 sig_type=std_logic lab=avdd1p8}
C {devices/lab_pin.sym} 380 -560 2 0 {name=p3 sig_type=std_logic lab=avss1p8}
C {devices/lab_pin.sym} 380 -680 2 0 {name=p4 sig_type=std_logic lab=avdd1p8}
C {devices/capa.sym} 490 -620 3 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 520 -620 2 0 {name=p13 sig_type=std_logic lab=avss1p8}
C {devices/vsource.sym} 960 -460 0 0 {name=V1 value="PULSE(\{vdd\} 0 0.0 1p 1p \{Tclk/2\} \{Tclk\}) DC 0 AC 0" savecurrent=false}
C {devices/lab_pin.sym} 960 -530 1 0 {name=p14 sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} 960 -390 3 0 {name=p15 sig_type=std_logic lab=avss1p8}
C {devices/lab_pin.sym} 110 -560 0 0 {name=p16 sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} 110 -600 0 0 {name=p17 sig_type=std_logic lab=ce}
C {devices/vsource.sym} 1030 -490 0 0 {name=V2 value="PULSE(0 \{vdd\} \{-Tclk/2\} 1p 1p \{Tclk*2\} \{Tclk*30\}) DC 0 AC 0" savecurrent=false}
C {devices/lab_pin.sym} 1030 -560 1 0 {name=p5 sig_type=std_logic lab=clr}
C {devices/lab_pin.sym} 1030 -420 3 0 {name=p6 sig_type=std_logic lab=avss1p8}
C {devices/lab_pin.sym} 170 -660 1 0 {name=p18 sig_type=std_logic lab=clr
}
C {/foss/designs/sch/4BitCounter.sym} 90 -480 0 0 {name=x1}
C {/foss/designs/sch/inverter.sym} 260 -390 0 0 {name=x3}
C {devices/lab_pin.sym} 380 -410 2 0 {name=p12 sig_type=std_logic lab=avss1p8}
C {devices/lab_pin.sym} 380 -530 2 0 {name=p19 sig_type=std_logic lab=avdd1p8}
C {devices/capa.sym} 490 -470 3 0 {name=C2
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 520 -470 2 0 {name=p20 sig_type=std_logic lab=avss1p8}
C {/foss/designs/sch/inverter.sym} 260 -240 0 0 {name=x4}
C {devices/lab_pin.sym} 380 -260 2 0 {name=p21 sig_type=std_logic lab=avss1p8}
C {devices/lab_pin.sym} 380 -380 2 0 {name=p22 sig_type=std_logic lab=avdd1p8}
C {devices/capa.sym} 490 -320 3 0 {name=C3
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 520 -320 2 0 {name=p23 sig_type=std_logic lab=avss1p8}
C {/foss/designs/sch/inverter.sym} 260 -90 0 0 {name=x5}
C {devices/lab_pin.sym} 380 -110 2 0 {name=p24 sig_type=std_logic lab=avss1p8}
C {devices/lab_pin.sym} 380 -230 2 0 {name=p25 sig_type=std_logic lab=avdd1p8}
C {devices/capa.sym} 490 -170 3 0 {name=C4
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 520 -170 2 0 {name=p26 sig_type=std_logic lab=avss1p8}
C {devices/lab_pin.sym} 260 -190 2 0 {name=p27 sig_type=std_logic lab=q3}
C {devices/lab_pin.sym} 280 -350 2 0 {name=p28 sig_type=std_logic lab=q2
}
C {devices/lab_pin.sym} 300 -500 2 0 {name=p29 sig_type=std_logic lab=q1}
C {devices/lab_pin.sym} 290 -650 2 0 {name=p30 sig_type=std_logic lab=q0}
