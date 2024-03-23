v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {Elzakker's comparator (JSSC 2010) adapted for sky130 using NVT and LVT FETs. 
"high" is high when vinp > vinm and low otherwise.
Note that Elzakker's design uses a single bias voltage, so this might need to be tweaked for cross-domain AVDD (3.3V) to DVDD (1.8V) coupling.} -560 -600 0 0 0.3 0.3 {}
T {Elzakker's comparator (JSSC 2010) adapted for sky130 using NVT and LVT FETs. 
"high" is high when vinp > vinm and low otherwise.
Note that Elzakker's design uses a single bias voltage, so this might need to be tweaked for cross-domain AVDD (3.3V) to DVDD (1.8V) coupling.} -560 -600 0 0 0.3 0.3 {}
T {Unused (for symmetry)} 1620 80 0 0 0.3 0.3 { layer=0}
T {Unused (for layout symmetry)} 550 -230 0 0 0.3 0.3 {}
N -260 70 -110 70 { lab=high}
N -260 130 -110 130 { lab=dvss}
N 110 70 260 70 { lab=low}
N 110 130 260 130 { lab=dvss}
N 70 -50 70 100 { lab=high}
N -70 -90 -70 100 { lab=low}
N -110 0 -110 70 { lab=high}
N 110 0 110 70 { lab=low}
N -110 0 70 0 { lab=high}
N -70 70 110 70 { lab=low}
N -280 -320 -170 -320 { lab=tail}
N -170 -320 -60 -320 { lab=tail}
N 70 -90 70 -50 { lab=high}
N -130 30 -110 30 { lab=high}
N 110 30 140 30 { lab=low}
N -280 -350 -60 -350 {
lab=avss}
N -60 -440 -60 -410 {
lab=avdd}
N -280 -440 -280 -410 {
lab=avdd}
N 110 -120 110 -90 {
lab=dvdd}
N -110 -120 -110 -90 {
lab=dvdd}
N -110 -30 -100 -30 {
lab=dvdd}
N 100 -30 110 -30 {
lab=dvdd}
N 480 -220 520 -220 {
lab=#net1}
N 480 -440 520 -440 {
lab=vout}
N 260 100 260 130 {
lab=dvss}
N 110 100 110 130 {
lab=dvss}
N -260 100 -260 130 {
lab=dvss}
N -110 100 -110 130 {
lab=dvss}
N -500 -180 -440 -180 {
lab=#net2}
N -480 -120 -440 -120 {
lab=#net2}
N -480 -180 -480 -120 {
lab=#net2}
N -360 -180 -320 -180 {
lab=phi1}
N -360 -120 -320 -120 {
lab=phi1b}
N 340 -440 400 -440 {
lab=high}
N 340 -220 400 -220 {
lab=low}
N -800 -180 -680 -180 {
lab=clk}
N -800 -160 -780 -160 {
lab=ena}
N -700 -160 -680 -160 {
lab=#net3}
N -170 -290 -120 -290 {
lab=avss}
C {devices/lab_pin.sym} 150 -30 0 1 {name=l104 sig_type=std_logic lab=FN}
C {devices/lab_pin.sym} -150 -30 0 0 {name=l105 sig_type=std_logic lab=FP}
C {devices/lab_pin.sym} -210 -290 0 0 {name=l106 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} -130 30 0 0 {name=l107 sig_type=std_logic lab=high}
C {devices/lab_pin.sym} 140 30 2 0 {name=l108 sig_type=std_logic lab=low}
C {devices/lab_pin.sym} -240 -410 2 0 {name=l109 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} 300 100 2 0 {name=l110 sig_type=std_logic lab=phi1b}
C {devices/lab_pin.sym} -300 100 0 0 {name=l111 sig_type=std_logic lab=phi1b}
C {devices/lab_pin.sym} -280 -380 0 0 {name=l124 sig_type=std_logic lab=FP}
C {devices/lab_pin.sym} -60 -380 0 1 {name=l125 sig_type=std_logic lab=FN}
C {devices/lab_pin.sym} -320 -350 0 0 {name=l15 sig_type=std_logic lab=vinp}
C {devices/lab_pin.sym} -20 -350 0 1 {name=l121 sig_type=std_logic lab=vinm}
C {devices/ipin.sym} -800 -180 0 0 {name=p1 lab=clk}
C {devices/iopin.sym} -800 -340 2 0 {name=p4 lab=vinp}
C {devices/iopin.sym} -800 -320 2 0 {name=p5 lab=vinm}
C {devices/lab_pin.sym} -20 -410 2 0 {name=l1 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} -110 -120 3 1 {name=l5 sig_type=std_logic lab=dvdd}
C {devices/iopin.sym} -800 -100 2 0 {name=p19 lab=dvdd}
C {devices/iopin.sym} -800 -80 2 0 {name=p22 lab=dvss}
C {sky130_fd_pr/nfet_03v3_nvt.sym} -300 -350 0 0 {name=M12
L=0.5
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_03v3_nvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_03v3_nvt.sym} -40 -350 0 1 {name=M13
L=0.5
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_03v3_nvt
spiceprefix=X
}
C {devices/lab_pin.sym} -280 -320 3 0 {name=l4 sig_type=std_logic lab=tail}
C {sky130_fd_pr/pfet_01v8.sym} -90 -90 0 1 {name=M14
L=0.15
W=0.42
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} -130 -30 0 0 {name=M3
L=0.15
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 130 -30 2 0 {name=M8
L=0.15
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 90 -90 2 1 {name=M2
L=0.15
W=0.42
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 90 100 0 0 {name=M7
L=2
W=0.42
nf=1
mult=1
body=GND
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} -90 100 0 1 {name=M9
L=2
W=0.42
nf=1
mult=1
body=GND
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} -190 -290 0 0 {name=M10
L=2
W=0.42
nf=1
mult=1
body=GND
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {devices/lab_pin.sym} -110 -60 0 0 {name=l13 sig_type=std_logic lab=pfetw}
C {devices/lab_pin.sym} 110 -60 0 1 {name=l14 sig_type=std_logic lab=pfete}
C {sky130_fd_pr/pfet_01v8.sym} -260 -410 2 0 {name=M1
L=0.15
W=0.42
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} -40 -410 0 1 {name=M6
L=0.15
W=0.42
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 110 -120 3 1 {name=l6 sig_type=std_logic lab=dvdd}
C {devices/lab_pin.sym} -280 -440 3 1 {name=l7 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} -60 -440 3 1 {name=l8 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} -190 130 1 1 {name=l9 sig_type=std_logic lab=dvss}
C {devices/lab_pin.sym} 190 130 1 1 {name=l10 sig_type=std_logic lab=dvss}
C {devices/lab_pin.sym} -170 -260 1 1 {name=l11 sig_type=std_logic lab=ibias}
C {devices/lab_pin.sym} -100 -30 0 1 {name=l2 sig_type=std_logic lab=dvdd}
C {devices/lab_pin.sym} 100 -30 0 0 {name=l3 sig_type=std_logic lab=dvdd}
C {devices/opin.sym} 520 -440 0 0 {name=p2 lab=vout}
C {sky130_fd_pr/nfet_01v8_lvt.sym} -280 100 0 0 {name=M4
L=2
W=0.42
nf=1
mult=1
body=GND
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 280 100 0 1 {name=M5
L=2
W=0.42
nf=1
mult=1
body=GND
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {devices/lab_pin.sym} -170 -350 3 1 {name=l11 sig_type=std_logic lab=avss}
C {devices/iopin.sym} -800 -480 2 0 {name=p7 lab=avdd}
C {devices/iopin.sym} -800 -460 2 0 {name=p8 lab=avss}
C {devices/lab_pin.sym} -320 -180 2 0 {name=p9 sig_type=std_logic lab=phi1
}
C {devices/lab_pin.sym} -320 -120 2 0 {name=p10 sig_type=std_logic lab=phi1b}
C {devices/iopin.sym} -800 -280 2 0 {name=p3 lab=ibias}
C {devices/title.sym} -560 290 0 0 {name=l12 author="Ankur Sharma, Abhinav Uppal"}
C {sky130_stdcells/buf_1.sym} 440 -440 0 0 {name=x2 VGND=dvss VNB=dvss VPB=dvdd VPWR=dvdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/buf_1.sym} 440 -220 0 0 {name=x3 VGND=dvss VNB=dvss VPB=dvdd VPWR=dvdd prefix=sky130_fd_sc_hd__ }
C {devices/lab_pin.sym} 340 -440 0 0 {name=p11 sig_type=std_logic lab=high}
C {devices/lab_pin.sym} 340 -220 0 0 {name=p12 sig_type=std_logic lab=low}
C {devices/ipin.sym} -800 -160 0 0 {name=p6 lab=ena}
C {sky130_stdcells/dlclkp_1.sym} -590 -170 0 0 {name=x4 VGND=dvss VNB=dvss VPB=dvdd VPWR=dvdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkbuf_1.sym} -400 -180 0 0 {name=x1 VGND=dvss VNB=dvss VPB=dvdd VPWR=dvdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkinv_1.sym} -400 -120 0 0 {name=x5 VGND=dvss VNB=dvss VPB=dvdd VPWR=dvdd prefix=sky130_fd_sc_hd__ }
C {devices/lab_pin.sym} -120 -290 0 1 {name=l16 sig_type=std_logic lab=avss}
C {sky130_stdcells/inv_1.sym} -740 -160 0 0 {name=x6 VGND=dvss VNB=dvss VPB=dvdd VPWR=dvdd prefix=sky130_fd_sc_hd__ }
