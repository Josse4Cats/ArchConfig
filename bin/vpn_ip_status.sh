#!/bin/bash

IFACE=$(ifconfig |grep tun0 |awk '{print $1}' | tr -d ':')
if [ "$IFACE" == "tun0" ]
then 
  IP=$(ifconfig tun0 | grep inet | head -n1 |awk '{print $2}')
  echo %{F#2495e7} %{F#ffffff}$IP%{u-}

else
  echo %{F#2495e7} %{F#ffffff}Disconect%{u-}
fi
