#!/usr/bin/env bash

## Author      : Aditya Shakya
## Modifikasi  : Abdul Aziz

dir="~/.config/polybar/hack/scripts/rofi"
 uptime=$(uptime -p | sed -e 's/up //g')

rofi_command="rofi -theme $dir/powermenu.rasi"

# Options
shutdown=" Shutdown"
reboot=" Restart"
lock=" Lock"
suspend=" Sleep"
logout=" Logout"


# Variable passed to rofi
options="$shutdown\n$suspend\n$reboot\n$logout\n$lock"

chosen="$(echo -e "$options" | $rofi_command -p "         By Aziz" -dmenu -selected-row 0)"
case $chosen in
    $shutdown)
		systemctl poweroff
        ;;
    $reboot)
		systemctl reboot
        ;;
    $lock)
		betterlockscreen -l
        ;;
    $suspend)
		systemctl suspend
		betterlockscreen -l
        ;;
    $logout) 
		i3-msg exit
		    ;;
esac
