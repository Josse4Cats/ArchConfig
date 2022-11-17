#!/usr/bin/env sh

## Add this to your wm startup file.

# Terminate already running bar instances
killall -q polybar

## Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

## Launch

## Left bar
polybar logo -c ~/.config/polybar/current.ini &
polybar date -c ~/.config/polybar/current.ini &
polybar ethernet -c ~/.config/polybar/current.ini &
polybar vpn -c ~/.config/polybar/current.ini &

## Right bar
polybar tray -c ~/.config/polybar/current.ini &
polybar sysmenu -c ~/.config/polybar/current.ini &i
polybar target -c  ~/.config/polybar/current.ini &i


## Center bar
polybar primary -c ~/.config/polybar/workspace.ini &
