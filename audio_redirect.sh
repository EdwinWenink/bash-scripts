#!/bin/bash

pacmd list-sink-inputs | grep -e index -e sink
echo "Select input stream index to redirect:"
read FROM

pacmd list-sinks | grep -e index -e name -e alias
echo "Redirect input stream to sink index (asterix is default, not current sink):"
read TO

pacmd move-sink-input $FROM $TO
