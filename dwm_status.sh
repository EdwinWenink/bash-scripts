print_volume() {
	volume="$(amixer get Master | tail -n1 | sed -r 's/.*\[(.*)%\].*/\1/')"
	if test "$volume" -gt 0
	then
		echo -e "\uE05D${volume}"
	else
		echo -e "Mute"
	fi
}

print_wifi() {
	ip=$(ip route get 8.8.8.8 2>/dev/null|grep -Eo 'src [0-9.]+'|grep -Eo '[0-9.]+')

	if=wlan0
		while IFS=$': \t' read -r label value
		do
			case $label in SSID) SSID=$value
				;;
			signal) SIGNAL=$value
				;;
		esac
	done < <(iw "$if" link)

	echo -e "$SSID $SIGNAL edwin@$ip"
}

print_mem(){
	memfree=$(($(grep -m1 'MemAvailable:' /proc/meminfo | awk '{print $2}') / 1024))
	echo -e "$memfree"
}

print_temp(){
	test -f /sys/class/thermal/thermal_zone0/temp || return 0
	echo $(head -c 2 /sys/class/thermal/thermal_zone0/temp)C
}

while true; do
	BATT=$( acpi -b | sed 's/.*[charging|unknown], \([0-9]*\)%.*/\1/gi' )
	STATUS=$( acpi -b | sed 's/.*: \([a-zA-Z]*\),.*/\1/gi' )
	xsetroot -name "$(print_wifi) | $(print_temp) `echo $BATT % $STATUS` ` date +"%R"`"
	#xsetroot -name "`echo $BATT % $STATUS` ` date +"%R"`"
done &
