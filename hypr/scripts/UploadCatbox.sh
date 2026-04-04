#!/bin/bash
img=$(wl-paste -l | grep '^image/' | head -n1)
txt=$(wl-paste -l | head -n1)
if [[ ! -e "/tmp/catb.png" ]]; then
	wcurl "https://catbox.moe/pictures/logo.png" -o "/tmp/catb.png"
fi

if [[ -n $img ]]; then
	extension=${img#image/}
	path="/tmp/litter-$(date +%F%T).$extension"
	wl-paste -t "$img" > "$path"
	link=$(curl -F "reqtype=fileupload" -F "fileToUpload=@$path" https://catbox.moe/user/api.php)
	wl-copy "$link"
	echo "$link"
	notify-send "Catbox" "Se ha terminado la subida" --icon="/tmp/catb.png"
	rm "$path"
elif [[ -n $txt ]]; then
	path="/tmp/litter-$(date +%F%T).txt"
	wl-paste > "$path"
	link=$(curl -F "reqtype=fileupload" -F "fileToUpload=@$path" https://catbox.moe/user/api.php)
	wl-copy "$link"
	notify-send "Catbox" "Se ha terminado la subida" --icon="/tmp/catb.png"
	rm "$path"
fi
