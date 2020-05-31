#!/bin/bash

MENU="$(printf "Lock\nLogout\nReboot\nShutdown" | dmenu -i -p 'System')"
case "$MENU" in
	Lock) i3exit lock
	;; # -i = path/to/image.png || -c = rrggbb
	Logout) i3exit logout
	;;
	Reboot) i3exit reboot
	;;
	Shutdown) i3exit shutdown now
	;;
esac
