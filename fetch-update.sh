#!/bin/sh

doas apt update && doas apt upgrade -y && \
doas apt autoremove && doas flatpak upgrade && \
doas snap refresh
