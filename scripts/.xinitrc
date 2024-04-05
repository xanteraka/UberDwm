#!/bin/sh

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi
xsetroot -solid "#1e1e2e" &
picom  --config /home/user/.config/picom/picom.conf &
/home/user/bar.sh &

exec dwm 

