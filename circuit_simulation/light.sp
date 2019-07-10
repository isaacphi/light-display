.title single light circuit

* Imports
.include circuit_simulation/2N2222A.TXT
* .include 2N2907A.TXT

* Circuit
vcc pwr 0 dc 12V
vx x 0 dc 0 PULSE (0 5 1u 1u 1u 1s)
vy y 0 dc 0 PULSE (0 5 1u 1u 1u 1s)
q1 y x b Q2N2222
c1 b 0 1u
r1 b 0 1k
q2 c b e Q2N2222
r2 e 0 1
rl pwr e 10

* Plot
.tran 0.1ms 2s
.control
run
plot v(x) v(y) v(b) v(e)

* Save image
* set hcopydevtype=postscript
* hardcopy rcPlot.ps v(b) v(e)

.endc

.end
