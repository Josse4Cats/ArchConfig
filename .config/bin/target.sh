#!/bin/bash
IP=$(cat /home/josse/.config/bin/target | awk '{print $1}')
MACHINE_NAME=$(cat /home/josse/.config/bin/target | awk '{print $2}')
if [ $IP ] && [ $MACHINE_NAME ]
  then
    echo "%{F#e51d0b}什 %{F#ffffff}$IP%{u-} - $MACHINE_NAME"
  else
    echo  "%{F#e51d0b}什 %{F#ffffff} No Target"
fi
