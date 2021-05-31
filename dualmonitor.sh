#!/bin/bash

xrandr --output VGA1 --auto --mode 1920x1080 --output LVDS1 --mode 1600x900 --left-of VGA1

# The auto switch automatically activates/focuses on the new window, I think.

# Mirroring
# xrandr --output VGA1 --auto --same-as LVSD1 --mode 1600x900
