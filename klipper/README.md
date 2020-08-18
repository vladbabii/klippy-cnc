in klippy/gcode.py
change line to
```
 args_r = re.compile('([A-Z_!$?]+|[A-Z!$?*/])')
```


in klippy/configfile.ph
```
value_r = re.compile('[^A-Za-z0-9_!$?].*$')
```
