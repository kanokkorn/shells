#!/usr/bin/sh
# create swap

# partition
dd if=/dev/zero of=/swapfile bs=1M count=1024 status=progress

# give permission
chmod 0600 /swapfile
mkswap -U clear /swapfile
swapon /swapfile
/etc/fstab
/swapfile none swap defaults 0 0
