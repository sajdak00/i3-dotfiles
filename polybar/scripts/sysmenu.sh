#!/bin/bash

MENU=MENU="$(rofi -sep "|" -dmenu -i -p 'System' -location 3 -xoffset -20 -yoffset 50 -width 20 -hide-scrollbar -line-padding 4 -padding 20 -lines 4 <<< "> Lock|> Logout|> Reboot|> Shutdown")"
case "$MENU" in
  *Lock) i3lock ;;
  *Logout) openbox --exit;;
  *Reboot) reboot ;;
  *Shutdown) shutdown now
esac
