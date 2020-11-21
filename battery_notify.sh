TOO_LOW=20 # how low is too low?
NOT_CHARGING="0"
POWERSUPPLY="/sys/class/power_supply/AC/online"
ICON="/usr/share/icons/HighContrast/48x48/devices/battery.png"

#export DISPLAY=:0

BATTERY_LEVEL=$(acpi -b | grep -P -o '[0-9]+(?=%)')
STATUS=$(cat $POWERSUPPLY)

if [ $BATTERY_LEVEL -le $TOO_LOW -a $STATUS = $NOT_CHARGING ]
then
    /usr/bin/notify-send -u critical -i "$ICON" -t 3000 "Battery low" "Battery level is ${BATTERY_LEVEL}%!"
fi

exit 0
