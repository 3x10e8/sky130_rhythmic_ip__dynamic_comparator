v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 120 -180 150 -180 {
lab=ena}
N -80 -20 -60 -20 {
lab=vinp}
N 120 -20 140 -20 {
lab=vinm}
N -80 -240 -80 -220 {
lab=avdd}
N -0 -240 0 -220 {
lab=dvdd}
N -80 40 -60 40 {
lab=avss}
N 460 -130 460 -110 {
lab=avdd}
N 480 -130 480 -110 {
lab=dvdd}
N 500 -130 500 -110 {
lab=ena}
N 120 -120 150 -120 {
lab=dvss}
N 460 -10 460 10 {
lab=avss}
N 480 -10 480 10 {
lab=dvss}
N 500 -10 500 10 {
lab=clk}
N 520 -10 520 10 {
lab=ibias}
N 420 -80 440 -80 {
lab=vinp}
N 420 -40 440 -40 {
lab=vinm}
N 530 -70 550 -70 {
lab=vout}
N 120 40 140 40 {
lab=avss}
N -80 180 -60 180 {
lab=dvss}
N -80 120 -60 120 {
lab=clk}
N -80 240 -60 240 {
lab=ibias}
N -80 300 -60 300 {
lab=avss}
C {devices/netlist.sym} -10 -300 2 1 {name=SPICE2 only_toplevel=false value="
.lib /foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.include /foss/pdks/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice
.control
    tran 1u 0.5m
    plot vout 10*(vinp-vinm)
    plot x1.FP x1.FN x1.tail x1.phi1
    plot ena clk 
    plot x1.phi1 x1.phi1b
    plot i(VDDA) i(VDDD) clk*10e-6 vout*10e-6
    meas trans yavg AVG i(VDDA) from=0 to=1u
.endc
.save all
"}
C {devices/vsource.sym} -80 10 0 0 {name=V1 value="SIN(0.9,50m,10k)"}
C {devices/vsource.sym} 0 -190 0 0 {name=VDDD value=1.8}
C {devices/lab_pin.sym} -60 -20 2 0 {name=l18 sig_type=std_logic lab=vinp}
C {devices/vsource.sym} 120 10 0 0 {name=V2 value="SIN(0.9,-50m,10k)"}
C {devices/lab_pin.sym} 140 -20 2 0 {name=l7 sig_type=std_logic lab=vinm}
C {devices/vsource.sym} -80 150 0 0 {name=VCLK value="PULSE(0,1.8,0,1n,1n,10u,20u)"}
C {devices/lab_pin.sym} -60 120 2 0 {name=l9 sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} 0 -240 0 1 {name=l1 sig_type=std_logic lab=dvdd}
C {devices/vsource.sym} -80 -190 0 0 {name=VDDA value=1.8}
C {devices/lab_pin.sym} -80 -240 0 1 {name=l28 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} -80 -160 0 1 {name=l29 sig_type=std_logic lab=avss}
C {devices/lab_pin.sym} 0 -160 0 1 {name=l17 sig_type=std_logic lab=dvss}
C {devices/lab_pin.sym} -60 40 0 1 {name=l5 sig_type=std_logic lab=avss}
C {devices/lab_pin.sym} 140 40 0 1 {name=l10 sig_type=std_logic lab=avss}
C {devices/lab_pin.sym} -60 180 0 1 {name=l8 sig_type=std_logic lab=dvss}
C {devices/lab_pin.sym} 460 -130 3 1 {name=l2 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} 480 -130 3 1 {name=l3 sig_type=std_logic lab=dvdd}
C {devices/lab_pin.sym} 460 10 1 1 {name=l4 sig_type=std_logic lab=avss}
C {devices/lab_pin.sym} 480 10 1 1 {name=l6 sig_type=std_logic lab=dvss}
C {devices/lab_pin.sym} 420 -80 0 0 {name=l11 sig_type=std_logic lab=vinp}
C {devices/lab_pin.sym} 420 -40 0 0 {name=l12 sig_type=std_logic lab=vinm}
C {devices/lab_pin.sym} 500 10 3 0 {name=l13 sig_type=std_logic lab=clk}
C {devices/vsource.sym} 120 -150 0 0 {name=VEN value=0}
C {devices/lab_pin.sym} 150 -180 0 1 {name=l14 sig_type=std_logic lab=ena}
C {devices/lab_pin.sym} 150 -120 0 1 {name=l15 sig_type=std_logic lab=dvss}
C {devices/lab_pin.sym} 500 -130 3 1 {name=l16 sig_type=std_logic lab=ena}
C {devices/isource.sym} -80 270 0 0 {name=I0 value=1u}
C {devices/lab_pin.sym} -60 300 0 1 {name=l19 sig_type=std_logic lab=avss}
C {devices/lab_pin.sym} -60 240 0 1 {name=l20 sig_type=std_logic lab=ibias}
C {devices/lab_pin.sym} 520 10 1 1 {name=l21 sig_type=std_logic lab=ibias}
C {devices/lab_pin.sym} 680 -80 2 0 {name=l22 sig_type=std_logic lab=vout}
C {devices/vsource.sym} -80 -90 0 0 {name=vssa value=0}
C {devices/lab_pin.sym} -80 -120 0 1 {name=l23 sig_type=std_logic lab=avss}
C {devices/gnd.sym} -80 -60 0 0 {name=l24 lab=GND}
C {devices/vsource.sym} 0 -90 0 0 {name=vssd value=0}
C {devices/lab_pin.sym} 0 -120 0 1 {name=l25 sig_type=std_logic lab=dvss}
C {devices/gnd.sym} 0 -60 0 0 {name=l26 lab=GND}
C {/foss/designs/sky130_rhythmic_ip__dynamic_comparator/xschem/comparator_single_tail.sym} 420 0 0 0 {name=x1}
C {devices/capa.sym} 680 -50 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 550 -70 2 0 {name=l27 sig_type=std_logic lab=vout}
C {devices/lab_pin.sym} 680 -20 0 1 {name=l30 sig_type=std_logic lab=dvss}
