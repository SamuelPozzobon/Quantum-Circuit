OPENQASM 2.0;
include "qelib1.inc";
qreg q[2];
creg c[2];
measure q[1] -> c[1];
cx q[0], q[1];
measure q[0] -> c[0];
h q[0];
u(pi/2, pi/2, pi/2) q[1];
barrier q; // @phaseDisk
rx(pi/2) q[0];
p(pi/2) q[1];
id q[0];
id q[1];
s q[0];
cx q[0], q[1];