# Movement

| G-code | Details |
| --------------|---------|
| G0 | Linear move in current workspace |
| G1 | Linear move in current workspace |
| G2 | Arc move in current workspace |
| G3 | Arc move in current workspace |
| G90 | Absolute mode in current workspace |
| G91 | Relative mode in current workspace |


# Workspace
| G-code | Details |
| --------------|---------|
| G54 | Select workspace #1 |
| G55 | Select workspace #2 |
| G56 | Select workspace #3 |
| G57 | Select workspace #4 |
| G58 | Select workspace #5 |

# Measurement selector
Only milimeters is supported for now (G21), inches mode (G20) does not do anything but give an error. Will be added in the future by calculating inches to milimeters