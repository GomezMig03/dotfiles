#!/bin/bash
# /* ---- 💫 https://github.com/JaKooLit 💫 ---- */  #
# This file used on waybar modules sourcing defaults set in $HOME/.config/hypr/UserConfigs/01-UserDefaults.conf

# Define the path to the config file
config_file=$HOME/.config/hypr/UserConfigs/01-UserDefaults.lua

# Check if the config file exists
if [[ ! -f "$config_file" ]]; then
    echo "Error: Configuration file not found!"
    exit 1
fi

# Process the config file in memory, removing the $ and fixing spaces
term=$(cat $config_file | grep "local term" | awk -F'"' '{print $2}')


# Execute accordingly based on the passed argument
if [[ "$1" == "--btop" ]]; then
    kitty --override=confirm_os_window_close=2 --title btop sh -c 'btop'
elif [[ "$1" == "--nvtop" ]]; then
    $term --title nvtop sh -c 'nvtop'
elif [[ "$1" == "--nmtui" ]]; then
    $term nmtui
elif [[ "$1" == "--term" ]]; then
    $term &
else
    echo "Usage: $0 [--btop | --nvtop | --nmtui | --term]"
    echo "--btop       : Open btop in a new term"
    echo "--nvtop      : Open nvtop in a new term"
    echo "--nmtui      : Open nmtui in a new term"
    echo "--term   : Launch a term window"
fi
