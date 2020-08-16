# Unconditional stop

| G-code | Details |
| --------------|---------|
| M0 | Not supported! |
| M1 | Not supported! |

These will be mapped to pause/resume

# Spindle controll

| G-code | Details |
| --------------|---------|
| M3 | start the spindle clocwise |
| M4 | start the spindle anti clocwise |
| M5 | stop spindle |

M3 and M4 will be mapped to turn an output pin to 1
M5 will be mapped to turn that same output pin to 0

These will require changes based on your hardware!
