#!/bin/bash
# /* ---- 💫 https://github.com/JaKooLit 💫 ---- */  ##
# simple bash script to check if update is available by comparing local version and github version
# Local Paths
local_dir="$HOME/.config/hypr"
iDIR="$HOME/.config/swaync/images/"
local_version=$(ls $local_dir/v* 2>/dev/null | sort -V | tail -n 1 | sed 's/.*v\(.*\)/\1/')

# exit if cannot find local version
if [ -z "$local_version" ]; then
  notify-send -i "$iDIR/error.png" "ERROR "!"" "Unable to find KooL's dots version . exiting.... "
  exit 1
fi

# GitHub URL - KooL's dots
#github_commits=$(curl -s "https://api.github.com/repos/GomezMig03/dotfiles/commits?per_page=1" -I | grep -o 'page=[0-9]*' | tail -1 | cut -d= -f2)
#local_commits=$(cd $HOME/.config/ && git log --author="gomezmig03@gmail.com" --format="%ad" --date=short -1)
local_date=$(cd $HOME/.config/ && git log --author="gomezmig03@gmail.com" --format="%ad" --date=short -1)

github_date=$(curl -s "https://api.github.com/repos/GomezMig03/dotfiles/commits?author=GomezMig03&per_page=1" \
  | grep -o '"date": *"[^"]*"' | head -1 | cut -d'"' -f4 | cut -dT -f1)


# Cant find  GitHub URL - KooL's dots version
if [ -z "$github_date" ]; then
  notify-send -i "$iDIR/error.png" "ERROR "!"" "Unable to find upstream repo. exiting.... "
  exit 1
fi

# Comparing local and github versions
if [[ ! "$github_date" > "$local_date" ]]; then
   notify-send -i "$iDIR/note.png" "KooL Hyprland:" "No update available"
  exit 0
else
  # update available
  notify_cmd_base="notify-send -t 10000 -A action1=Update -A action2=NO -h string:x-canonical-private-synchronous:shot-notify"
  notify_cmd_shot="${notify_cmd_base} -i $iDIR/ja.png"

  response=$($notify_cmd_shot "KooL Hyprland:" "Update available! Update now?")

  case "$response" in
    "action1")  
      if [ -d $KooL_Dots_DIR ]; then
      	if ! command -v kitty &> /dev/null; then
  			notify-send -i "$iDIR/error.png" "E-R-R-O-R" "Kitty terminal not found. Please install Kitty terminal."
  			exit 1
		fi
        kitty -e bash -c "
          cd ~/.config &&
          git stash &&
          git pull &&
	  notify-send -u critical -i "$iDIR/ja.png" 'Update Completed:' 'Kindly log out and relogin to take effect'
        "
	
      else
         if ! command -v kitty &> /dev/null; then
  		  	notify-send -i "$iDIR/error.png" "E-R-R-O-R" "Kitty terminal not found. Please install Kitty terminal."
  			exit 1
		fi
        kitty -e bash -c "
          git clone --depth=1 https://github.com/GomezMig03/dotfiles.git $KooL_Dots_DIR &&
          cd $KooL_Dots_DIR &&
          chmod +x copy.sh &&
          ./copy.sh &&
		  notify-send -u critical -i "$iDIR/ja.png" 'Update Completed:' 'Kindly log out and relogin to take effect'
        "
      fi
      ;;
    "action2")
      exit 0
      ;;
  esac
fi
