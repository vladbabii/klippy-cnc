# Unconditional stop

| G-code | Details |
| --------------|---------|
| M0 | Program pause |
| M1 | Program pause |

These will be mapped to pause/resume

# Spindle controll

| G-code | Details |
| --------------|---------|
| M3 | start the spindle clocwise |
| M4 | start the spindle anti clocwise |
| M5 | stop spindle |

Right now, only manual spindle controll is supported but this can be macroed with an output pins
* M3 and M4 will be mapped to turn an output pin to 1
* M5 will be mapped to turn that same output pin to 0
* These will require changes based on your hardware!


# Coolant state

| G-code | Details |
| --------------|---------|
| M7 | mist coolant on |
| M8 | flood coolant on |
| M9 | flood coolant off |

Right now, only manual cooling is supported but this can be macroed with one or two output pins
* These will be mapped to 2 output pins, but please modify the gcodes to match your configuration
* These will require changes based on your hardware!
