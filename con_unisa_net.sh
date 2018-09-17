#!/bin/bash

# Kill all instances of wpa_supplicant and dhcpcd
pkill wpa_supplicant
pkill dhcpcd
sleep 2

# Start wpa_supplicant with unisa configuration file, you may want to change the dirver used eg. wext.... with the -D option
wpa_supplicant -c /home/xored/.config/unisa.cfg -i wlp3s0 -D nl80211 &
# Wait for few seconds for the wpa_supplicant to authenticate...
sleep 13

# Grab IP address using wlp3s0 wireless interface. Change the interface if need to: `ip addr` to list devices
dhcpcd wlp3s0 &

