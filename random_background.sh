#!/bin/bash

cd /usr/share/pixmaps

background_home=/home/edwin/Pictures/backgrounds

# Shuffle backgrounds and pick one
background=$(ls $background_home | shuf -n 1)

# Replace current LightDM greeter background
cp $background_home/$background background.jpg

sleep 30m
# Use feh to ad hoc set a new random background at a given time interval
while :
do
	feh --randomize --bg-fill /home/edwin/Pictures/backgrounds/*
	sleep 30m
done
