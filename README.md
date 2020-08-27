# KCNC - Klipper CNC Macro Package

This is a collection of macros to support CNC commands on [klipper 3d printer software](https://github.com/KevinOConnor/klipper)

---

# G/M-code Support
The codes that are ~~strikethrough~~ are not supported yet

## KCNC Macros
Gcode | Parameters | Description
------|------------|---------
KCNC_STATUS | - | Get KCNC Status (workspace, tools, etc)
KCNC_SET_WORKSPACE | TARGET=0 | Set workspace, 0 is machine workspace, 1 is equivalent to G54 
KCNC_HOME_MACHINE | - | Homes the machine using endstops


## Supported G-codes
Gcode | Parameters | Command | Description
------|------------|---------|-------------
G0 | _axes_ | Straight traverse | Traverse at maximum velocity. At least one axis must be present
G1 | _axes_, F | Straight feed | Feed at feed rate F. At least one axis must be present
G2 | _axes_, F, I,J,K or R | Clockwise arc feed | Arc at feed rate F. Offset mode IJK or radius mode R
G3 | _axes_, F, I,J,K or R | Counter clockwise arc feed | Arc at feed rate F. Offset mode IJK or radius mode R
G4 | P | Dwell | Pause for P seconds
G10 L2 | _axes_, P | Set offset parameters | P selects coordinate system 1-6
G10 L20 | _axes_, P | Set offset parameters | P selects coordinate system 1-6
~~G17~~ | | Select XY plane | G17, G18 and G19 set the plan in which the G2/G3 arcs are drawn
~~G18~~ | | Select XZ plane |
~~G19~~ | | Select YZ plane |
~G20~ | | Select inches units mode | All Gcode from this point on will be interpreted in inches
G21 | | Select mm units mode | All Gcode from this point on will be interpreted in millimeters
G28 | _axes_ | Go to G28.1 position | Optional axes specify an intermediate point
G28.1 | | Set position for G28 | The current machine position is recorded (No parameters are provided)
G30 | _axes_ | Go to G30.1 position | Optional axes specify an intermediate point
G30.1 | | Set position for G30 | The current machine position is recorded (No parameters are provided)
G53 | | Select absolute coordinates | Non-Modal: Applies only to current block
G54 | | Select coord system 1 | 
G55 | | Select coord system 2 |
G56 | | Select coord system 3 |
G57 | | Select coord system 4 |
G58 | | Select coord system 5 |
G59 | | Select coord system 6 |
G90 | | Set absolute mode |
G91 | | Set incremental mode |
G92 | _axes_ | Set origin offsets |
G92.1 | | Reset origin offsets |
~~G92.2~~ | | Suspend origin offsets |
~~G92.3~~ | | Resume origin offsets |

## Supported M-codes
 Mcode | Parameter |Command | Description
------|-----------|--------|-------------
M0 | | Program stop |
M1 | | Program stop | Optional program stop switch is not implemented so M1 is equivalent to M0
M2 | | Program end |
M30 | | Program end |
~M6~ | | Change tool | No operation at this time

## M-codes that need customisations based on your hardware
 Mcode | Parameter |Command | Description
------|-----------|--------|-------------
M3 | S | Spindle on - CW | S is speed in RPM
M4 | S | Spindle on - CCW | S is speed in RPM
M5 | | Spindle off |
M7 | | Mist coolant on | Note that mist and flood share the same Coolant ON/OFF pin
M8 | | Flood coolant on | Note that mist and flood share the same Coolant ON/OFF pin
M9 | | All coolant off | Note that mist and flood share the same Coolant ON/OFF pin

---

# Klipper for CNC - PROs and CONs

Klipper benefits for hobby CNC
* easy install and configuration changes
* [tmc driver support](https://github.com/KevinOConnor/klipper/blob/57eb0e8975f0fc038dbf323f5ff029073334c611/config/example-extras.cfg#L962) with [endstop phase](https://github.com/KevinOConnor/klipper/blob/57eb0e8975f0fc038dbf323f5ff029073334c611/docs/Endstop_Phase.md)
* [skew correction](https://github.com/KevinOConnor/klipper/blob/57eb0e8975f0fc038dbf323f5ff029073334c611/docs/skew_correction.md)
* [advanced macro capability](https://github.com/KevinOConnor/klipper/blob/57eb0e8975f0fc038dbf323f5ff029073334c611/docs/Command_Templates.md)
* [broad 3d printer board support](https://github.com/KevinOConnor/klipper/tree/57eb0e8975f0fc038dbf323f5ff029073334c611/config)
* [great kinematics](https://github.com/KevinOConnor/klipper/blob/57eb0e8975f0fc038dbf323f5ff029073334c611/docs/Kinematics.md) that can be configured on the fly ( M204, SET_VELOCITY_LIMIT)

Klipper downsides for hobby CNC
* only 3 axis supported
