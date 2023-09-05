#!/bin/bash

function run {
  if ! pgrep $1 ;
  then
    $@&
  fi
}
# run dex $HOME/.config/autostart/arcolinux-welcome-app.desktop
#run xrandr --output VGA-1 --primary --mode 1360x768 --pos 0x0 --rotate normal
#run xrandr --output HDMI2 --mode 1920x1080 --pos 1920x0 --rotate normal --output HDMI1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output VIRTUAL1 --off
run nm-applet
run xfce4-power-manager
run kdeconnect-indicator
run /usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1
run /usr/lib/geoclue-2.0/demos/agent &
run intel-undervolt apply
run numlockx on
run volumeicon
run flameshot
run redshift
run copyq
run nitrogen --restore
run flatpak run com.github.wwmm.pulseeffects
