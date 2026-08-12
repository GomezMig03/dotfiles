#!/bin/bash
# /* https://github.com/GomezMig03 */  ##

# kill yad to not interfere with this binds
pkill yad || true

# check if rofi is already running
if pidof rofi > /dev/null; then
  pkill rofi
fi

# define the config files
keybinds_conf="$HOME/.config/hypr/configs/Keybinds.lua"
user_keybinds_conf="$HOME/.config/hypr/UserConfigs/UserKeybinds.lua"
laptop_conf="$HOME/.config/hypr/UserConfigs/Laptops.conf"
rofi_theme="$HOME/.config/rofi/config-keybinds.rasi"
msg='Clicking or pressing ENTER will have no function'

# combine the contents of the keybinds files and filter for keybinds
mainMod=$(cat $keybinds_conf | grep "local mainMod" | awk -F'"' '{print $2}')
keybinds=$(cat "$keybinds_conf" "$user_keybinds_conf" | grep -v "\--" | grep -v "local" | tr -d '\t\n' | grep -oP 'hl\.bind\(\K[^,]+' | sed "s/mainMod/$mainMod/g" | sed 's/\.\. " //g' | sed 's/\"//g')
actions=$(cat "$keybinds_conf" "$user_keybinds_conf" | grep -v "\--" | grep -v "local" | tr -d '\t\n' | grep -oP '(?<=\",).*?(?=hl\.bind)')

pair=$(paste -d '=' <(echo "$keybinds") <(echo "$actions") | sed 's/\=/ \-\>/g';)

#TODO: add the last action to the list, currectly it isn't displayed at there isn't a hl.bind after the end

# check if laptop.conf exists and add its keybinds if present
#if [[ -f "$laptop_conf" ]]; then
#    laptop_binds=$(grep -E '^bind' "$laptop_conf")
#    keybinds+=$'\n'"$laptop_binds"
#fi

if [[ -z "$pair" ]]; then
    echo "no keybinds found."
    exit 1
fi

echo "$pair" | rofi -dmenu -i -config "$rofi_theme" -mesg "$msg"
