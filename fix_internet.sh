#!/bin/bash                                                                                      

# After prolonged sleep my internet stops working
# This re-enables the relevant module and fixed the problem
# Place in: /usr/lib/systemd/system-sleep/

case $1/$2 in
    pre/*)
    ;;
    post/*)
        modprobe -r r8169
        modprobe r8169
    ;;
esac

