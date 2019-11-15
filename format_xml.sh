#!/bin/bash

# Requires input directory to be passed as an argument
cd $1

for file in *.xml
do 
	xmllint --format $file --output $file
done
