#!/bin/bash
# Would be cool if this script also shows you what you have done today!
# Also: make it accept ranges (use sed for this). E.g. done 1-4.

if [[ $1 ]]; then
	DONE=$(sed -n "$1p" ~/todo.txt)
	sed -i "$1d" ~/todo.txt
	echo "$DONE [$(date +%T)]" >> ~/done.txt
else
	(echo "Tasks completed: " && cat -n ~/done.txt) | cowsay -f tux
fi


