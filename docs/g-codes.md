# Movement

| G-code | Details |
| --------------|---------|
| G0 | Linear move in current workspace |
| G1 | Linear move in current workspace |
| G2 | Arc move in current workspace |
| G3 | Arc move in current workspace |
| G28 | Set position |
| G28.1 | Move to saved position |
| G30 | Set position  |
| G30.1 | Move to saved position |
| G53 | Move in absolute coordinates per line |

Parameters supported for
* G0 and G1: X, Y, Z, F
* G2 and G3: X, Y, Z, F, I, J

# Others
| G-code | Details |
| --------------|---------|
| G4 | Dwell a number of seconds |



# Tool Length Offset
| G-code | Details |
| --------------|---------|
| G43.1 | Not supported! |
| G49 | Not supported! |

# Distance mode

| G-code | Details |
| --------------|---------|
| G90 | Not supported! |
| G91 | Not supported! |


# Feed rate mode

| G-code | Details |
| --------------|---------|
| G93 | Absolute mode in current workspace |
| G94 | Relative mode in current workspace |


# Plane Select

* G17, G18, G19 not supported yet

# Workspace

| G-code | Details |
| --------------|---------|
| G54 | Select workspace #1 |
| G55 | Select workspace #2 |
| G56 | Select workspace #3 |
| G57 | Select workspace #4 |
| G58 | Select workspace #5 |
| G10 L2 | Set coordinate system - Not supported yet |
| G10 L20 | Set coordiante system - Not supported yet |
| G92 | Coordinate system offset - Not supported yet |
| G92.1 | Coordiante system offset - Not supported yet |


# Measurement selector

Only milimeters is supported for now (G21), inches mode (G20) does not do anything but give an error. Will be added in the future by calculating inches to milimeters
