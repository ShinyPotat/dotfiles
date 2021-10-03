#!/bin/bash

function run {
  if ! pgrep $1 ;
  then
    $@&
  fi
}

xsetroot -cursor_name left_ptr &
run sxhkd -c ~/.config/bspwm/sxhkd/sxhkdrc &

run nm-applet &
run pamac-tray &
run xfce4-power-manager &
numlockx on &
blueberry-tray &
picom --config $HOME/.config/bspwm/picom.conf &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
/usr/lib/xfce4/notifyd/xfce4-notifyd &
run volumeicon &
polychromatic-helper --autostart &
unclutter &

my_laptop_external_monitor=$(xrandr --query | grep 'HDMI-0')
if [[ $my_laptop_external_monitor = *connected* ]]; then  
  $HOME/.screenlayout/external-only.sh &
fi

$HOME/.config/polybar/launch.sh --blocks &
nitrogen --restore &
