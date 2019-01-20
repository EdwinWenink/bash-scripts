#!/bin/bash

# Simple script that extracts questions from my notes written in markdown
# Assumes that questions are written in bold as such '**Q**'
# Outputs the results as a markdown list

if [[ -e $1 ]]
	then
		filename="Questions $1"
		count=$(grep -Fc '**Q**' "$1")
		report="$count Questions extracted from $filename"
		printf "# $report \n \n" > "./$filename"
		grep -Fn '**Q**' "$1" | sed -e 's/\*\*Q:*\*\*:*//g' | sed -e 's/^/- /' >> "$filename"
		echo $report 
	else 
		echo Provide a file as an argument
fi
