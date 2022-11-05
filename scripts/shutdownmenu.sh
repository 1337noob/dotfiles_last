#!/bin/sh

cmd=$(printf "poweroff\nreboot\nsuspend\nhibernate\nlock\n" | dmenu -p "Execute:" $*)

if [ -z "$cmd" ]; then
	exit 0
fi

case "$cmd" in
	poweroff)
		systemctl poweroff ;;
	reboot)
		systemctl reboot ;;
	suspend)
		systemctl suspend ;;
	hibernate)
		systemctl hibernate ;;
	lock)
		slock ;;
	*)
		printf "Option not recognized: %s\n" "$cmd" >&2
esac
