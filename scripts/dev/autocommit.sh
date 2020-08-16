#!/bin/bash

cd /home/pi/klippy-cnc
git pull
git add *
git commit -m "auto"
git push
git pull
