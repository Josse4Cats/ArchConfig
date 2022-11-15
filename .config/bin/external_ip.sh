#!/bin/sh
 
echo "%{F#2495e7} %{F#ffffff}$(curl -s ifconfig.me | cut -c 1-)%{u-}"
