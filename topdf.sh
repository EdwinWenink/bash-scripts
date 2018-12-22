#!/bin/bash

# Uses pandoc to convert a .md file to .pdf

if [ -f "$1" ]; then
        file=$(basename "$1$")
        filename=${file%.*}
        pandoc "$1" -s -o "$filename".pdf
        zathura "$filename".pdf & disown
fi

