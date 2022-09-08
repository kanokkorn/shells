#!/usr/bin/sh
# Removes old revisions of snaps
# CLOSE ALL SNAPS BEFORE RUNNING THIS
set -eu

LANG=C snap refresh && snap list --all | awk '/disabled/{print $1, $3}' |
  while read snapname revision; do
    snap remove "$snapname" --revision="$revision"
  done
