in klippy/gcode.py
change line to
```
 args_r = re.compile('([A-Z_!$?]+|[A-Z!$?*/])')
```


in klippy/configfile.ph
```
value_r = re.compile('[^A-Za-z0-9_!$?].*$')
```

in klippy/gcode.py
```
    # Parameter parsing helpers
    extended_r = re.compile(
        r'^\s*(?:N[0-9]+\s*)?'
        r'(?P<cmd>[a-zA-Z_!$?][a-zA-Z0-9_!$?]+)(?:\s+|$)'
        r'(?P<args>[^#*;]*?)'
        r'\s*(?:[#*;].*)?$')

```
