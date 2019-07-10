.title Single light circuit

***************
* Components
***************

.include circuit_simulation/2N2222A.TXT
* .include circuit_simulation/2N2907A.TXT

***************
* Circuit
***************

* Power and inputs
vcc pwr 0 dc 12V
vy y 0 dc 5V
* (initial V, pulsed V, delay time, rise time, fall time, pulse width, period)
vx x 0 dc 0 PULSE (0 5 100ns 100ns 100ns 0.002ms 17ms)

* Switching transistor and time decay
* (collector, base, emitter )
q1 y x a Q2N2222
c1 a 0 0.4u
r1 a 0 500k

* Power transistor and light
r2 a b 10k
q2 c b 0 Q2N2222
* light
rl pwr c 10

***************
* Graph
***************


.tran 100ns 18ms
.control
run
plot v(x) v(b) v(a) v(c)

.endc

.end
