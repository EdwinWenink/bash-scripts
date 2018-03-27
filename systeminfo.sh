#!/bin/bash
echo "System info for `uname -s` `uname -m`"
echo "Uptime: `uptime`"

echo
echo "These users are connected:"
w | cut -d " " -f 1 - | grep -v USER | sort -u

echo
echo "Blk devices:"
lsblk


