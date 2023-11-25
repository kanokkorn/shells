#!/bin/sh

# restart and reset bluetooth service when `org.bluez.Error.Blocked`
# or `org.bluez.Error.Busy`

# toggle bluetooth
rfkill block bluetooth && rfkill unblock bluetooth

# restart bluetooth service
doas systemctl stop bluetooth.service
doas systemctl start bluetooth.service
