#!/bin/sh

sed -n '/START_KEYS/,/END_KEYS/p' \
~/.config/dwm/config.def.h | \
grep -e '{' -e 'TAGKEYS' | \
sed -e 's/^[ \t]*//' \
