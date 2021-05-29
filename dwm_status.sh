print_volume() {
	volume="$(amixer get Master | tail -n1 | sed -r 's/.*\[(.*)%\].*/\1/')"
	if test "$volume" -gt 0
	then
		echo -e "\uE05D${volume}"
	else
		echo -e "Mute"
	fi
}

print_ip() {
  ip=$(ip route get 8.8.8.8 2>/dev/null|grep -Eo 'src [0-9.]+'|grep -Eo '[0-9.]+')
  echo -e $ip
}

print_ssid_nm() {
  local con=$(nmcli --nocheck c show)

  device=wlp3s0
  if echo "$con" | grep -q '[ \t]vpn[ \t].*[ \t][a-zA-Z0-9]\+[ \t]*$'; then
    echo "$con" \
      | grep '[ \t]vpn[ \t]' \
      | grep -v -- '--[ \t]*$' \
      | sed '/^[ \t]*$/d' \
      | awk '{ print $1 }'
    return 0
  fi
  echo "$con" \
    | grep -v -- '--[ \t]*$' \
    | sed '/^[ \t]*$/d' \
    | sed -n 2p \
    | awk '{ print $1 }'
}

print_mem(){
	memfree=$(($(grep -m1 'MemAvailable:' /proc/meminfo | awk '{print $2}') / 1024))
	echo -e "$memfree"
}


print_temp(){
	test -f /sys/class/thermal/thermal_zone0/temp || return 0
	echo $(head -c 2 /sys/class/thermal/thermal_zone0/temp)C
}

# Misschien handig voor rebooten; zoek uit hoe dit goed werkt
#killall dwm_status.sh

while true; do
	BATT=$( acpi -b | sed 's/.*[charging|unknown], \([0-9]*\)%.*/\1/gi' )
	STATUS=$( acpi -b | sed 's/.*: \([a-zA-Z]*\),.*/\1/gi' )
	#xsetroot -name "$(print_wifi) | $(print_temp) `echo $BATT % $STATUS` ` date +"%R"`"
	#xsetroot -name "`echo $BATT % $STATUS` ` date +"%R"`"
	xsetroot -name " $(print_ip) | `echo $BATT% $STATUS` | `date +"%R"`"
	sleep 1
done &
