#!/bin/bash
img=$(wl-paste -l | grep '^image/' | head -n1)
txt=$(wl-paste -l | head -n1)
if [[ ! -e "/tmp/litterico.png" ]]; then
	wcurl "https://litterbox.catbox.moe/resources/litterbox.png" -o "/tmp/litterico.png"
fi

if [[ -n $img ]]; then
	extension=${img#image/}
	path="/tmp/litter-$(date +%F%T).$extension"
	wl-paste -t "$img" > "$path"
	link=$(curl -F "reqtype=fileupload" -F "time=12h" -F "fileToUpload=@$path" https://litterbox.catbox.moe/resources/internals/api.php)
	wl-copy "$link"
	notify-send "Litterbox" "Se ha terminado la subida" --icon="/tmp/litterico.png"
	rm "$path"
elif [[ -n $txt ]]; then
	path="/tmp/litter-$(date +%F%T).txt"
	wl-paste > "$path"
	link=$(curl -F "reqtype=fileupload" -F "time=12h" -F "fileToUpload=@$path" https://litterbox.catbox.moe/resources/internals/api.php)
	wl-copy "$link"
	notify-send "Litterbox" "Se ha terminado la subida" --icon="/tmp/litterico.png"
	rm "$path"
fi
