#!/bin/bash
wp_path=/home/rwt/.wallpapers/
image=$(ls $wp_path | grep -E '(jpg|png)$' | sort -R | tail -1)
xwallpaper --zoom $wp_path/$image
