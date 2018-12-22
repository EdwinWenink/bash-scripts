#!/bin/bash

if [[ $@ ]]; then
	echo "$@" >> ~/todo.txt
fi

cat -n ~/todo.txt

echo

