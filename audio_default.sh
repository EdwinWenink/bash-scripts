#!/bin/bash

pacmd list-sinks | grep -e index -e name -e alias
echo "Select new default sink (asterix is current default)"
read DEFAULT

pacmd set-default-sink $DEFAULT
