v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 120 -380 140 -380 {lab=A}
N 120 -380 120 -220 {lab=A}
N 120 -220 140 -220 {lab=A}
N 180 -350 180 -250 {lab=#net1}
N 180 -300 260 -300 {lab=#net1}
N 60 -300 120 -300 {lab=A}
N 180 -460 180 -410 {lab=VDD}
N 180 -190 180 -140 {lab=VSS}
N 180 -380 220 -380 {lab=VDD}
N 220 -420 220 -380 {lab=VDD}
N 180 -420 220 -420 {lab=VDD}
N 180 -220 220 -220 {lab=VSS}
N 220 -220 220 -180 {lab=VSS}
N 180 -180 220 -180 {lab=VSS}
C {sky130_fd_pr/nfet_01v8.sym} 160 -220 0 0 {name=M1
W=1
L=0.15
nf=1 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 160 -380 0 0 {name=M2
W=1
L=0.15
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {iopin.sym} 180 -460 3 0 {name=p1 lab=VDD}
C {iopin.sym} 180 -140 1 0 {name=p2 lab=VSS}
C {ipin.sym} 60 -300 0 0 {name=p3 lab=A}
C {opin.sym} 260 -300 0 0 {name=p4 lab=Y}
