#!/usr/bin/env bash
current=$(hyprctl getoption general:layout -j | jq -r '.str')

if [ "$current" = "scrolling" ]; then
    hyprctl keyword general:layout dwindle
    notify-send "Layout" "Switched to Dwindle" -t 1500
else
    hyprctl keyword general:layout scrolling
    notify-send "Layout" "Switched to Scrolling" -t 1500
fi
