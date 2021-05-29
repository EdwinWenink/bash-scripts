if pgrep trayer 
then	
	killall trayer
else
	# Note the height of dwm bar is 18px, but then the 1px yellow border I have atm overflows
	trayer --edge top --height 17 --widthtype request --padding 1 --transparent true -l --tint 0x000000 & disown
fi
