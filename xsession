#!/bin/sh

setxkbmap -layout 'us,ru' -option \
	'grp:alt_space_toggle,grp_led:caps,ctrl:nocaps'

xinput set-prop "/dev/wsmouse" "WS Pointer Wheel Emulation" 1
xinput set-prop "/dev/wsmouse" "WS Pointer Wheel Emulation Button" 2
xinput set-prop "/dev/wsmouse" "WS Pointer Wheel Emulation Axes" 6 7 4 5

xrdb -merge "$HOME/.Xresources"
xset -b
exec cwm
