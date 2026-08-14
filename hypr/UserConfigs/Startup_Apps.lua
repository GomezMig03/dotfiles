-- /* https://github.com/GomezMig03 */  #
-- Commands and Apps to be executed at launch

local scriptsDir = HOME .. "/.config/hypr/scripts"
local UserScripts = HOME .. "/.config/hypr/UserScripts"

local wallDIR = HOME .. "/Pictures/wallpapers"
local lock = scriptsDir .. "/LockScreen.sh"
local SwwwRandom = UserScripts .. "/WallpaperAutoChange.sh"
local livewallpaper = "\"" .. HOME .. "/Pictures/wallpapers/𝐔𝐧𝐭𝐢𝐥 𝐓𝐡𝐞 𝐌𝐨𝐫𝐧𝐢𝐧𝐠 𝐂𝐨𝐦𝐞𝐬.mp4\""

hl.on("hyprland.start", function()
    --hl.exec_cmd("mpvpaper '*' -o \"load-scripts=no no-audio --loop\" $livewallpaper")
    --hl.exec_cmd("$SwwwRandom $wallDIR")
    --hl.exec_cmd("$scriptsDir/Polkit.sh")
    --hl.exec_cmd("ags")
    --hl.exec_cmd("blueman-applet")
    --hl.exec_cmd("rog-control-center")
    --hl.exec_cmd("wl-paste --type text --watch cliphist store")
    --hl.exec_cmd("wl-paste --type image --watch cliphist store")
    --hl.exec_cmd("$UserScripts/RainbowBorders.sh")
    --hl.exec_cmd("mullvad-vpn")
    --hl.exec_cmd("/home/miguel/Documentos/linux/server_linux_debug")
    --hl.exec_cmd("flatpak run org.qbittorrent.qBittorrent &")
    --hl.exec_cmd("swww-daemon --format xrgb && swww img $HOME/Pictures/wallpapers/mecha-nostalgia.png")
    --hl.exec_cmd("$scriptsDir/Polkit-NixOS.sh")
    --hl.exec_cmd("$scriptsDir/PortalHyprland.sh")
    --hl.exec_cmd("musicpresence")
    --hl.exec_cmd("/usr/lib/kdeconnectd &")

    hl.exec_cmd("awww-daemon --format xrgb")
    hl.exec_cmd("dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP")
    hl.exec_cmd("systemctl --user import-environment WAYLAND_DISPLAY XDG_CURRENT_DESKTOP")
    hl.exec_cmd("/usr/lib/polkit-kde-authentication-agent-1")
    hl.exec_cmd("nm-applet --indicator")
    hl.exec_cmd("swaync")
    hl.exec_cmd("waybar")
    hl.exec_cmd("wl-paste --type text --watch cliphist store")
    hl.exec_cmd("wl-paste --type image --watch cliphist store")
    hl.exec_cmd("hypridle")
    hl.exec_cmd("fcitx5")
    hl.exec_cmd("protonvpn-app")
    hl.exec_cmd("hyprsunset")
end)

