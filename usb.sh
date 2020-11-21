#!/bin/bash

# Mounts or unmounts USB, depending on whether 
# Has some remaining issues

# TODO, handle the general case where multiples usb's are plugged in
# TODO, my e-reader is at sda1 and is not found with sd[b-z]
plugged_in=$(lsblk | grep "sd[b-z]1")
usb=$(ls /dev/sd[b-z]1) # Can I combine this with previous line?
mountpoint=/mnt/usb
echo "Mount point:" $mountpoint

if [ "$plugged_in" != "" ]; then
	echo "Drive found:"
	echo $plugged_in
	if lsblk | grep $mountpoint &> /dev/null;  then
		echo "USB already mounted at $mountpoint"
		sudo umount $mountpoint
		echo "Unmounted $usb from $mountpoint"
	else
		echo "USB not mounted yet"
		# TODO next line needs to be adapted to deal with more USBs
		sudo mount $usb $mountpoint
		echo "Mounted $usb at $mountpoint"
	fi
else
	echo "No USB plugged in"
fi
