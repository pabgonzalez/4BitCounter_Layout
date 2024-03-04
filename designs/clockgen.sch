v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 70 -390 90 -390 {
lab=clk}
N 70 -70 150 -70 {
lab=clk}
N 350 -390 390 -390 {
lab=#net1}
N 540 -370 590 -370 {
lab=#net2}
N 70 -390 70 -70 {
lab=clk}
N 330 -350 390 -350 {
lab=p_clk}
N 330 -350 470 -190 {
lab=p_clk}
N 470 -190 750 -190 {
lab=p_clk}
N 540 -90 590 -90 {
lab=#net3}
N 270 -70 390 -70 {
lab=#net4}
N 330 -110 390 -110 {
lab=clk1}
N 330 -110 470 -270 {
lab=clk1}
N 470 -270 750 -270 {
lab=clk1}
N 710 -370 750 -370 {
lab=#net5}
N 870 -370 920 -370 {
lab=clk1}
N 710 -90 750 -90 {
lab=#net6}
N 870 -90 930 -90 {
lab=p_clk}
N 750 -270 890 -270 {
lab=clk1}
N 890 -370 890 -270 {
lab=clk1}
N 750 -190 890 -190 {
lab=p_clk}
N 890 -190 890 -90 {
lab=p_clk}
N 210 -390 230 -390 {
lab=#net7}
C {/foss/designs/inverter.sym} 90 10 0 0 {name=x1}
C {/foss/designs/nor.sym} 370 -290 0 0 {name=x2}
C {/foss/designs/nor.sym} 370 -10 0 0 {name=x3}
C {/foss/designs/inverter.sym} 30 -310 0 0 {name=x4}
C {/foss/designs/inverter.sym} 530 -290 0 0 {name=x6}
C {/foss/designs/inverter.sym} 530 -10 0 0 {name=x7}
C {devices/iopin.sym} 180 -250 2 0 {name=p8 lab=vss
}
C {devices/iopin.sym} 180 -210 2 0 {name=p9 lab=vdd}
C {devices/lab_pin.sym} 180 -250 0 1 {name=p1 sig_type=std_logic lab=vss
}
C {devices/lab_pin.sym} 180 -210 0 1 {name=p2 sig_type=std_logic lab=vdd
}
C {devices/lab_pin.sym} 210 -110 0 1 {name=p3 sig_type=std_logic lab=vdd
}
C {devices/lab_pin.sym} 440 -150 0 1 {name=p4 sig_type=std_logic lab=vdd
}
C {devices/lab_pin.sym} 650 -130 0 1 {name=p5 sig_type=std_logic lab=vdd
}
C {devices/lab_pin.sym} 150 -430 0 1 {name=p7 sig_type=std_logic lab=vdd
}
C {devices/lab_pin.sym} 440 -430 0 1 {name=p10 sig_type=std_logic lab=vdd
}
C {devices/lab_pin.sym} 650 -410 0 1 {name=p11 sig_type=std_logic lab=vdd
}
C {devices/lab_pin.sym} 150 -350 0 1 {name=p13 sig_type=std_logic lab=vss
}
C {devices/lab_pin.sym} 440 -310 0 1 {name=p14 sig_type=std_logic lab=vss
}
C {devices/lab_pin.sym} 650 -330 0 1 {name=p15 sig_type=std_logic lab=vss
}
C {devices/lab_pin.sym} 210 -30 0 1 {name=p16 sig_type=std_logic lab=vss
}
C {devices/lab_pin.sym} 440 -30 0 1 {name=p17 sig_type=std_logic lab=vss
}
C {devices/lab_pin.sym} 650 -50 0 1 {name=p18 sig_type=std_logic lab=vss
}
C {devices/iopin.sym} 920 -370 0 0 {name=p19 lab=clk1}
C {devices/iopin.sym} 930 -90 0 0 {name=p20 lab=clk2}
C {devices/iopin.sym} 70 -230 0 1 {name=p21 lab=clk}
C {/foss/designs/inverter.sym} 690 -290 0 0 {name=x5}
C {devices/lab_pin.sym} 810 -410 0 1 {name=p6 sig_type=std_logic lab=vdd
}
C {devices/lab_pin.sym} 810 -330 0 1 {name=p12 sig_type=std_logic lab=vss
}
C {/foss/designs/inverter.sym} 690 -10 0 0 {name=x8}
C {devices/lab_pin.sym} 810 -130 0 1 {name=p22 sig_type=std_logic lab=vdd
}
C {devices/lab_pin.sym} 810 -50 0 1 {name=p23 sig_type=std_logic lab=vss
}
C {/foss/designs/inverter.sym} 170 -310 0 0 {name=x9}
C {devices/lab_pin.sym} 290 -430 0 1 {name=p24 sig_type=std_logic lab=vdd
}
C {devices/lab_pin.sym} 290 -350 0 1 {name=p25 sig_type=std_logic lab=vss
}
