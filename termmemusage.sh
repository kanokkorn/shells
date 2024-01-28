#!/bin/sh
ps -eo comm,rss,pcpu | grep -E 'xterm|alacritty'
