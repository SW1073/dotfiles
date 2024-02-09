#!/bin/bash

DEV="ELAN1301:00 04F3:3115 Touchpad"
STATE=$(xinput list-props "$DEV" | grep "Device Enabled" | sed -e "s/.*:*\([0-1]\)/\1/")

if [ $STATE = "1" ]; then
    xinput disable "$DEV"
    notify-send "Touchpad disabled"
else
    xinput enable "$DEV"
    notify-send "Touchpad endabled"
fi
