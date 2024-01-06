#!/bin/sh

# restart and reset bluetooth service when `org.bluez.Error.Blocked`
# or `org.bluez.Error.Busy`
# from https://stackoverflow.com/questions/68728478/

# toggle bluetooth
rfkill block bluetooth && rfkill unblock bluetooth

# restart bluetooth service
doas systemctl stop bluetooth.service
doas systemctl start bluetooth.service
