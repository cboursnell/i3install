#!/bin/bash
scrot /tmp/screen.png
convert /tmp/screen.png -scale 10% -scale 1000% /tmp/screen.png
convert /tmp/screen.png ~/Pictures/lock-icon.png -gravity center -composite -matte /tmp/screen.png
i3lock -u -i /tmp/screen.png
rm /tmp/screen.png
