#!/bin/sh
# fetch update for apt, flatpak and snap

doas apt update && doas apt upgrade -y && \
doas apt autoremove && doas flatpak upgrade && \
doas snap refresh
