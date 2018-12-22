#!/bin/bash

# Uses pandoc to convert a .md file to .pdf using my custom *notes.latex* template
if [ "$#" -eq "0" ]
  then
    	echo "Pass one or multiple markdown files"
  else
	# The name of the first argument is used for the new filename
	file=$(basename "$1$")
	filename=${file%.*}
	pandoc "$@" -s --template=notes.latex -o "$filename".pdf
fi


