v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 180 -220 220 -220 {
lab=clk}
N 180 -190 220 -190 {
lab=clr}
N 180 -160 220 -160 {
lab=vss}
N 180 -130 220 -130 {
lab=vdd}
N 340 -280 410 -280 {
lab=#net1}
N 340 -480 340 -280 {
lab=#net1}
N 550 -280 600 -280 {
lab=#net2}
N 1260 -260 1340 -260 {
lab=Qb}
N 1340 -300 1340 -260 {
lab=Qb}
N 1060 -260 1120 -260 {
lab=#net3}
N 1000 -480 1110 -480 {
lab=#net3}
N 1060 -480 1060 -260 {
lab=#net3}
N 1260 -500 1340 -500 {
lab=Q}
N 1340 -500 1340 -420 {
lab=Q}
N 650 -480 860 -480 {
lab=#net4}
N 750 -260 820 -260 {
lab=#net4}
N 820 -480 820 -260 {
lab=#net4}
N 1340 -500 1420 -500 {
lab=Q}
N 1340 -260 1420 -260 {
lab=Qb}
N 100 -480 150 -480 {
lab=D}
N 290 -480 530 -480 {
lab=#net1}
N 200 -640 270 -640 {
lab=n_clk}
N 400 -640 400 -620 {
lab=p_clk}
N 220 -640 220 -620 {
lab=n_clk}
N 390 -640 400 -640 {
lab=p_clk}
C {/foss/designs/inverter.sym} 20 -560 0 0 {name=x1}
C {/foss/designs/inverter.sym} 470 -400 0 0 {name=x2}
C {/foss/designs/inverter.sym} 1420 -480 3 1 {name=x3}
C {/foss/designs/tg.sym} -10 -320 0 0 {name=x4}
C {/foss/designs/nor.sym} 1090 -420 0 0 {name=x8}
C {/foss/designs/nor.sym} 770 -200 0 1 {name=x9}
C {devices/lab_pin.sym} 140 -600 2 0 {name=p1 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 140 -680 2 0 {name=p2 sig_type=std_logic lab=vdd
}
C {devices/lab_pin.sym} 80 -640 2 1 {name=p3 sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} 220 -620 2 0 {name=p4 sig_type=std_logic lab=n_clk}
C {devices/iopin.sym} 180 -220 0 1 {name=p5 lab=clk}
C {devices/lab_pin.sym} 220 -220 2 0 {name=p6 sig_type=std_logic lab=clk}
C {devices/iopin.sym} 180 -190 0 1 {name=p7 lab=clr}
C {devices/lab_pin.sym} 220 -190 2 0 {name=p8 sig_type=std_logic lab=clr}
C {devices/iopin.sym} 180 -160 0 1 {name=p9 lab=vss}
C {devices/lab_pin.sym} 220 -160 2 0 {name=p10 sig_type=std_logic lab=vss}
C {devices/iopin.sym} 180 -130 0 1 {name=p11 lab=vdd}
C {devices/lab_pin.sym} 220 -130 2 0 {name=p12 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 220 -420 2 0 {name=p13 sig_type=std_logic lab=p_clk}
C {devices/lab_pin.sym} 220 -520 2 0 {name=p14 sig_type=std_logic lab=n_clk
}
C {devices/iopin.sym} 100 -480 0 1 {name=p15 lab=D}
C {/foss/designs/tg.sym} 710 -120 0 1 {name=x5
lab=n_clk}
C {devices/lab_pin.sym} 480 -220 2 1 {name=p16 sig_type=std_logic lab=n_clk}
C {devices/lab_pin.sym} 480 -320 2 0 {name=p17 sig_type=std_logic lab=p_clk
}
C {/foss/designs/tg.sym} 700 -320 0 0 {name=x6
lab=p_clk}
C {devices/lab_pin.sym} 930 -420 2 0 {name=p18 sig_type=std_logic lab=n_clk}
C {devices/lab_pin.sym} 930 -520 2 0 {name=p19 sig_type=std_logic lab=p_clk
}
C {devices/lab_pin.sym} 750 -300 2 0 {name=p22 sig_type=std_logic lab=clr}
C {devices/lab_pin.sym} 590 -520 2 0 {name=p25 sig_type=std_logic lab=vdd
}
C {devices/lab_pin.sym} 590 -440 2 0 {name=p26 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 700 -340 2 0 {name=p27 sig_type=std_logic lab=vdd
}
C {devices/lab_pin.sym} 700 -220 2 0 {name=p23 sig_type=std_logic lab=vss}
C {/foss/designs/tg.sym} 1420 -100 0 1 {name=x7}
C {devices/lab_pin.sym} 1190 -200 2 1 {name=p20 sig_type=std_logic lab=p_clk}
C {devices/lab_pin.sym} 1190 -300 2 1 {name=p21 sig_type=std_logic lab=n_clk
}
C {devices/lab_pin.sym} 1380 -360 2 0 {name=p24 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 1300 -360 2 1 {name=p28 sig_type=std_logic lab=vdd
}
C {devices/lab_pin.sym} 1160 -440 2 0 {name=p29 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 1160 -560 2 0 {name=p30 sig_type=std_logic lab=vdd
}
C {devices/lab_pin.sym} 1110 -520 2 1 {name=p31 sig_type=std_logic lab=clr}
C {devices/iopin.sym} 1420 -500 0 0 {name=p33 lab=Q
}
C {/foss/designs/inverter.sym} 210 -560 0 0 {name=x10}
C {devices/lab_pin.sym} 330 -600 2 0 {name=p32 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 330 -680 2 0 {name=p35 sig_type=std_logic lab=vdd
}
C {devices/lab_pin.sym} 400 -620 0 1 {name=p36 sig_type=std_logic lab=p_clk}
C {devices/lab_pin.sym} 1420 -260 0 1 {name=p34 sig_type=std_logic lab=Qb}
C {devices/lab_pin.sym} 260 -530 2 0 {name=p37 sig_type=std_logic lab=vdd
}
C {devices/lab_pin.sym} 440 -330 2 1 {name=p38 sig_type=std_logic lab=vdd
}
C {devices/lab_pin.sym} 970 -530 2 0 {name=p39 sig_type=std_logic lab=vdd
}
C {devices/lab_pin.sym} 1150 -310 2 1 {name=p40 sig_type=std_logic lab=vdd
}
C {devices/lab_pin.sym} 260 -430 2 0 {name=p41 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 440 -230 2 1 {name=p42 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 970 -430 2 0 {name=p43 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 1150 -210 2 1 {name=p44 sig_type=std_logic lab=vss}
