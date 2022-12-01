#!/bin/sh
WHITE="%{F#ffffff}"
GREEN="%{F#00ff00}"
RED="%{F#ff0000}"


if [ $(cat /sys/class/power_supply/AC/online) == 1 ]; then ACSTATUS="ﮣ" ; else ACSTATUS="ﮤ" ; fi

if [ "$(cat /sys/class/power_supply/BAT1/status)" == "Full" ]; then BAT1STATUS=""; COLORBAT1=$GREEN; fi
if [ "$(cat /sys/class/power_supply/BAT1/status)" == "Not charging" ]; then BAT1STATUS=""; COLORBAT1=$RED; fi
if [ "$(cat /sys/class/power_supply/BAT1/status)" == "Discharging" ]; then BAT1STATUS="" ; COLORBAT1=$RED; fi
if [ "$(cat /sys/class/power_supply/BAT1/status)" == "Charging" ]; then BAT1STATUS="" ; COLORBAT1=$GREEN; fi

if [ "$(cat /sys/class/power_supply/BAT0/status)" == "Full" ]; then BAT0STATUS=""; COLORBAT0=$GREEN; fi
if [ "$(cat /sys/class/power_supply/BAT0/status)" == "Not charging" ]; then BAT0STATUS=""; COLORBAT0=$RED; fi
if [ "$(cat /sys/class/power_supply/BAT0/status)" == "Discharging" ]; then BAT0STATUS="" ; COLORBAT0=$RED; fi
if [ "$(cat /sys/class/power_supply/BAT0/status)" == "Charging" ]; then BAT0STATUS="" ; COLORBAT0=$GREEN;  fi

BAT1LEVEL=$(cat /sys/class/power_supply/BAT1/capacity)
BAT0LEVEL=$(cat /sys/class/power_supply/BAT0/capacity)

if [ BAT0LEVEL > 99 ]; then COLORBAT0=$GREEN; BAT0STATUS=""; fi


echo "%{F#ffffff}$ACSTATUS $BAT1STATUS$COLORBAT1 $BAT1LEVEL% $WHITE$BAT0STATUS$COLORBAT0 $BAT0LEVEL% "
