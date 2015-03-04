#!/bin/bash

if [ "$2" != "2d02" ]; then #if idProduct is not for AOA2 then 
# Put android device into AOA2 usb audio out mode
/usr/local/bin/aoa2usbaudio.py $1 $2

# wait 1 seconds for device to switch over, then connect android device to output device
# hw:0,0,0 playback device
# hw:2,0,0 android source
# AOA2 is 16bit 2 channel, 44.1hkz
# 50ms buffer
# Sync mode to match input sample rate to output sample rate
#	 5 or auto       - automatically selects the best method
#	 in this order: captshift, playshift, samplerate, simple
(sleep 1s ; alsaloop -P hw:0,0,0 -C hw:2,0,0 -f S16_LE -r 44100 -t 50000 -S 1)&
fi

exit 0
