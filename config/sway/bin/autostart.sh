#!/bin/bash

#Start the polkit agent
if [[ $(pidof /usr/lib/polkit-kde-authentication-agent-1) -eq "" ]]; then
	/usr/lib/polkit-kde-authentication-agent-1 &
else
	kill $(pidof /usr/lib/polkit-kde-authentication-agent-1) && /usr/lib/polkit-kde-authentication-agent-1 &
fi

#Start dunst notification daemon
if [[ $(pidof dunst) -eq "" ]]; then
	dunst -conf ~/.config/sway/dunstrc &
else
	kill $(pidof dunst) && dunst -conf ~/.config/sway/dunstrc &
fi

#Start waybar
if [[ $(pidof waybar) -eq "" ]]; then
	waybar --config ~/.config/waybar/config.json &
else
	killall waybar && waybar --config ~/.config/waybar/config.json &
fi
