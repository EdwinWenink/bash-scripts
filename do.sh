#!/bin/bash

if [[ $@ ]]; then
	echo "$@" >> ~/todo.txt
elif [ ! -f ~/todo.txt ]; then
        echo "No to do list yet, type e.g. 'todo something'"	
else
	cat -n ~/todo.txt
fi
echo
