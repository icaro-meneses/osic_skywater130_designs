v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 340 -220 340 -200 {lab=GND}
N 140 -180 140 -140 {lab=GND}
N 20 -180 20 -140 {lab=GND}
N 20 -300 20 -240 {lab=vdd}
N 140 -300 140 -240 {lab=vin}
N 340 -400 340 -340 {lab=vdd}
N 220 -280 280 -280 {lab=vin}
N 450 -280 500 -280 {lab=vout}
N 500 -280 520 -280 {lab=vout}
C {inverter.sym} 400 -280 0 0 {name=x1}
C {vsource.sym} 20 -210 0 0 {name=V1 value=1.8 savecurrent=false}
C {vsource.sym} 140 -210 0 0 {name=vin value=0 savecurrent=false}
C {gnd.sym} 20 -140 0 0 {name=l1 lab=GND}
C {gnd.sym} 140 -140 0 0 {name=l2 lab=GND}
C {gnd.sym} 340 -200 0 0 {name=l3 lab=GND}
C {lab_pin.sym} 20 -300 0 0 {name=p1 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 140 -300 0 0 {name=p2 sig_type=std_logic lab=vin}
C {lab_pin.sym} 220 -280 0 0 {name=p3 sig_type=std_logic lab=vin}
C {lab_pin.sym} 340 -400 0 0 {name=p4 sig_type=std_logic lab=vdd}
C {opin.sym} 520 -280 0 0 {name=p5 lab=vout}
C {devices/code.sym} 70 -600 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
C {devices/code_shown.sym} 240 -630 0 0 {name=NGSPICE
only_toplevel=true
value="
.option savecurrents

.control
save all

dc vin 0 1.8 0.1
plot v(vin) v(vout)

.endc
" }
