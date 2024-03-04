v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 270 -160 310 -160 {
lab=clk}
N 270 -130 310 -130 {
lab=clr}
N 270 -100 310 -100 {
lab=vss}
N 270 -70 310 -70 {
lab=vdd}
N 430 -220 500 -220 {
lab=#net1}
N 430 -420 430 -220 {
lab=#net1}
N 640 -220 690 -220 {
lab=#net2}
N 1350 -200 1430 -200 {
lab=Qb}
N 1430 -240 1430 -200 {
lab=Qb}
N 1150 -200 1210 -200 {
lab=#net3}
N 1090 -420 1200 -420 {
lab=#net3}
N 1150 -420 1150 -200 {
lab=#net3}
N 1350 -440 1430 -440 {
lab=Q}
N 1430 -440 1430 -360 {
lab=Q}
N 740 -420 950 -420 {
lab=#net4}
N 840 -200 910 -200 {
lab=#net4}
N 910 -420 910 -200 {
lab=#net4}
N 1430 -440 1510 -440 {
lab=Q}
N 1430 -200 1510 -200 {
lab=Qb}
N 190 -420 240 -420 {
lab=D}
N 380 -420 620 -420 {
lab=#net1}
N 200 -720 270 -720 {
lab=n_clk_2}
N 210 -560 280 -560 {
lab=n_clk_1}
C {/foss/designs/inverter.sym} 20 -640 0 0 {name=x1}
C {/foss/designs/inverter.sym} 560 -340 0 0 {name=x2}
C {/foss/designs/inverter.sym} 1510 -420 3 1 {name=x3}
C {/foss/designs/tg.sym} 80 -260 0 0 {name=x4}
C {/foss/designs/nor.sym} 1180 -360 0 0 {name=x8}
C {/foss/designs/nor.sym} 860 -140 0 1 {name=x9}
C {devices/lab_pin.sym} 140 -680 2 0 {name=p1 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 140 -760 2 0 {name=p2 sig_type=std_logic lab=vdd
}
C {devices/lab_pin.sym} 80 -720 2 1 {name=p3 sig_type=std_logic lab=clk_2}
C {devices/lab_pin.sym} 230 -720 1 0 {name=p4 sig_type=std_logic lab=n_clk_2}
C {devices/iopin.sym} 270 -160 0 1 {name=p5 lab=clk}
C {devices/lab_pin.sym} 310 -160 2 0 {name=p6 sig_type=std_logic lab=clk}
C {devices/iopin.sym} 270 -130 0 1 {name=p7 lab=clr}
C {devices/lab_pin.sym} 310 -130 2 0 {name=p8 sig_type=std_logic lab=clr}
C {devices/iopin.sym} 270 -100 0 1 {name=p9 lab=vss}
C {devices/lab_pin.sym} 310 -100 2 0 {name=p10 sig_type=std_logic lab=vss}
C {devices/iopin.sym} 270 -70 0 1 {name=p11 lab=vdd}
C {devices/lab_pin.sym} 310 -70 2 0 {name=p12 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 310 -360 2 0 {name=p13 sig_type=std_logic lab=n_clk_1}
C {devices/lab_pin.sym} 310 -460 2 0 {name=p14 sig_type=std_logic lab=p_clk_1
}
C {devices/iopin.sym} 190 -420 0 1 {name=p15 lab=D}
C {/foss/designs/tg.sym} 800 -60 0 1 {name=x5
lab=n_clk}
C {devices/lab_pin.sym} 570 -160 2 1 {name=p16 sig_type=std_logic lab=n_clk_2}
C {devices/lab_pin.sym} 570 -260 2 1 {name=p17 sig_type=std_logic lab=p_clk_2}
C {/foss/designs/tg.sym} 790 -260 0 0 {name=x6
lab=p_clk}
C {devices/lab_pin.sym} 1020 -360 2 0 {name=p18 sig_type=std_logic lab=n_clk_2}
C {devices/lab_pin.sym} 1020 -460 2 0 {name=p19 sig_type=std_logic lab=p_clk_2
}
C {devices/lab_pin.sym} 840 -240 2 0 {name=p22 sig_type=std_logic lab=clr}
C {devices/lab_pin.sym} 680 -460 2 0 {name=p25 sig_type=std_logic lab=vdd
}
C {devices/lab_pin.sym} 680 -380 2 0 {name=p26 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 790 -280 2 0 {name=p27 sig_type=std_logic lab=vdd
}
C {devices/lab_pin.sym} 790 -160 2 0 {name=p23 sig_type=std_logic lab=vss}
C {/foss/designs/tg.sym} 1510 -40 0 1 {name=x7}
C {devices/lab_pin.sym} 1280 -140 2 1 {name=p20 sig_type=std_logic lab=n_clk_1}
C {devices/lab_pin.sym} 1280 -240 2 1 {name=p21 sig_type=std_logic lab=p_clk_1
}
C {devices/lab_pin.sym} 1470 -300 2 0 {name=p24 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 1390 -300 2 1 {name=p28 sig_type=std_logic lab=vdd
}
C {devices/lab_pin.sym} 1250 -380 2 0 {name=p29 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 1250 -500 2 0 {name=p30 sig_type=std_logic lab=vdd
}
C {devices/lab_pin.sym} 1200 -460 2 1 {name=p31 sig_type=std_logic lab=clr}
C {devices/iopin.sym} 1510 -440 0 0 {name=p33 lab=Q
}
C {/foss/designs/inverter.sym} 210 -640 0 0 {name=x10}
C {devices/lab_pin.sym} 330 -680 2 0 {name=p32 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 330 -760 2 0 {name=p35 sig_type=std_logic lab=vdd
}
C {devices/lab_pin.sym} 390 -720 0 1 {name=p36 sig_type=std_logic lab=p_clk_2}
C {devices/lab_pin.sym} 1510 -200 0 1 {name=p34 sig_type=std_logic lab=Qb}
C {/foss/designs/clockgen.sym} 780 -710 0 0 {name=x11}
C {devices/lab_pin.sym} 930 -690 2 0 {name=p37 sig_type=std_logic lab=vdd
}
C {devices/lab_pin.sym} 930 -730 2 0 {name=p38 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 930 -710 2 0 {name=p39 sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} 930 -750 2 0 {name=p40 sig_type=std_logic lab=clk_1}
C {devices/lab_pin.sym} 930 -670 2 0 {name=p41 sig_type=std_logic lab=clk_2}
C {/foss/designs/inverter.sym} 30 -480 0 0 {name=x12}
C {devices/lab_pin.sym} 150 -520 2 0 {name=p42 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 150 -600 2 0 {name=p43 sig_type=std_logic lab=vdd
}
C {devices/lab_pin.sym} 90 -560 2 1 {name=p44 sig_type=std_logic lab=clk_1}
C {devices/lab_pin.sym} 240 -560 1 0 {name=p45 sig_type=std_logic lab=n_clk_1}
C {/foss/designs/inverter.sym} 220 -480 0 0 {name=x13}
C {devices/lab_pin.sym} 340 -520 2 0 {name=p46 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 340 -600 2 0 {name=p47 sig_type=std_logic lab=vdd
}
C {devices/lab_pin.sym} 400 -560 0 1 {name=p48 sig_type=std_logic lab=p_clk_1}
