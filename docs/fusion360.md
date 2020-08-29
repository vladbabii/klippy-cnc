
# Post processor settings for Fusion360

## Arcs
```
allowedCircularPlanes =  (1 << PLANE_XY) | (0 << PLANE_ZX) | (0 << PLANE_YZ);
```
shorter version:
```
allowedCircularPlanes =  0; // no arcs
allowedCircularPlanes =  1; // only xy arcs
```

## Modal Movements
By default, most post processors omit G<number> if it's the same command. To fix this, add force:true inside gMotionModal
```
var gMotionModal = createModal({force:true}, gFormat); 
```
