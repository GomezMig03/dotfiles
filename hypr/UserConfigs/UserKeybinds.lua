-- /* https://github.com/GomezMig03 */  #
-- This is where you put your own keybinds. Be Mindful to check as well ~/.config/hypr/configs/Keybinds.conf to avoid conflict
-- if you think I should replace the Pre-defined Keybinds in ~/.config/hypr/configs/Keybinds.conf , submit an issue or let me know in DC and present me a valid reason as to why, such as conflicting with global shortcuts, etc etc

-- See https://wiki.hyprland.org/Configuring/Keywords/ for more settings and variables
-- See also Laptops.conf for laptops keybinds

-- variables
local mainMod = "SUPER"
local files = "thunar"
local term = "kitty"
local scriptsDir = HOME .. "/.config/hypr/scripts"
local UserScripts = HOME .. "/.config/hypr/UserScripts"

-- common shortcuts
hl.bind(
	mainMod .. " + " .. mainMod .. "_L",
	hl.dsp.exec_cmd("pkill rofi || rofi -show drun -modi drun,filebrowser,run,window"),
	{ release = true }
)
--bind = $mainMod, D, exec, pkill rofi || true && rofi -show drun -modi drun,filebrowser,run,window # Main Menu (APP Launcher)
hl.bind(mainMod .. " + B", hl.dsp.exec_cmd('xdg-open "https://"'))
hl.bind(mainMod .. " + A", hl.dsp.exec_cmd("pkill rofi || true && ags -t 'overview'"))
hl.bind(mainMod .. " + T", hl.dsp.exec_cmd(term))
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd(files))

-- FEATURES / EXTRAS
--bind = $mainMod, H, exec, $scriptsDir/KeyHints.sh # help / cheat sheet
hl.bind(mainMod .. " + ALT + R", hl.dsp.exec_cmd(scriptsDir .. "/Refresh.sh"))
hl.bind(mainMod .. " + ALT + E", hl.dsp.exec_cmd(scriptsDir .. "/RofiEmoji.sh"))
--bind = $mainMod, S, exec, $scriptsDir/RofiSearch.sh # Brave search using rofi
hl.bind(mainMod .. " + ALT + O", hl.dsp.exec_cmd(scriptsDir .. "/ChangeBlur.sh"))
hl.bind(mainMod .. " + SHIFT + G", hl.dsp.exec_cmd(scriptsDir .. "/GameMode.sh"))
--bind = $mainMod ALT, L, exec, $scriptsDir/ChangeLayout.sh # Toggle Master or Dwindle Layout
hl.bind(mainMod .. " + V", hl.dsp.exec_cmd(scriptsDir .. "/ClipManager.sh"))
--bind = SUPER, V, exec, cliphist list | rofi -dmenu | cliphist decode | wl-copy
hl.bind(mainMod .. " + CTRL + R", hl.dsp.exec_cmd(scriptsDir .. "/RofiThemeSelector.sh"))
hl.bind(
	mainMod .. " + CTRL + SHIFT + R",
	hl.dsp.exec_cmd("pkill rofi || true && " .. scriptsDir .. "/RofiThemeSelector-modified.sh")
)
hl.bind(mainMod .. " + CTRL + L", hl.dsp.exec_cmd(scriptsDir .. "/UploadLitterbox.sh"))
hl.bind(mainMod .. " + ALT + L", hl.dsp.exec_cmd(scriptsDir .. "/UploadCatbox.sh"))
hl.bind(mainMod .. " + P", hl.dsp.exec_cmd("hyprctl pin"))

hl.bind(mainMod .. " + SHIFT + F", hl.dsp.window.fullscreen({ mode = "fullscreen", action = "toggle" }))
hl.bind(mainMod .. " + CTRL + F", hl.dsp.window.fullscreen({ mode = "maximized", action = "toggle" }))
hl.bind(mainMod .. " + SPACE", hl.dsp.window.float({ action = "toggle" }))
hl.bind(mainMod .. " + ALT + SPACE", hl.dsp.exec_cmd("hyprctl dispatch workspaceopt allfloat"))
hl.bind(mainMod .. " + SHIFT + Return", hl.dsp.exec_cmd("[float; move 15% 5%; size 70% 60%] " .. term))

-- Desktop zooming or magnifier
hl.bind(
	mainMod .. " + ALT + mouse_down",
	hl.dsp.exec_cmd(
		"hyprctl keyword cursor:zoom_factor \"$(hyprctl getoption cursor:zoom_factor | awk 'NR==1 {factor = $2; if (factor < 1) {factor = 1}; print factor * 2.0}')\""
	)
)
hl.bind(
	mainMod .. " + ALT + mouse_up",
	hl.dsp.exec_cmd(
		"hyprctl keyword cursor:zoom_factor \"$(hyprctl getoption cursor:zoom_factor | awk 'NR==1 {factor = $2; if (factor < 1) {factor = 1}; print factor / 2.0}')\""
	)
)

--# NOTES for ja (Hyprland version 0.39 (Ubuntu 24.04))
--bind = $mainMod ALT, mouse_down, exec, hyprctl keyword misc:cursor_zoom_factor "$(hyprctl getoption misc:cursor_zoom_factor | awk 'NR==1 {factor = $2; if (factor < 1) {factor = 1}; print factor * 2.0}')"
--bind = $mainMod ALT, mouse_up, exec, hyprctl keyword misc:cursor_zoom_factor "$(hyprctl getoption misc:cursor_zoom_factor | awk 'NR==1 {factor = $2; if (factor < 1) {factor = 1}; print factor / 2.0}')"

-- Waybar / Bar related
hl.bind(mainMod .. " + CTRL + ALT + B", hl.dsp.exec_cmd("pkill -SIGUSR1 waybar"))
hl.bind(mainMod .. " + CTRL + B", hl.dsp.exec_cmd(scriptsDir .. "/WaybarStyles.sh"))
hl.bind(mainMod .. " + ALT + B", hl.dsp.exec_cmd(scriptsDir .. "/WaybarLayout.sh"))

-- FEATURES / EXTRAS (UserScripts)
hl.bind(mainMod .. " + SHIFT + M", hl.dsp.exec_cmd("elisa"))
hl.bind(mainMod .. " + SHIFT + W", hl.dsp.exec_cmd(UserScripts .. "/WallpaperEffects.sh"))
hl.bind("CTRL + ALT + W", hl.dsp.exec_cmd(UserScripts .. "/WallpaperRandom.sh"))
hl.bind(mainMod .. " + CTRL + O", hl.dsp.exec_cmd("hyprctl setprop active opaque toggle"))
hl.bind(mainMod .. " + SHIFT + K", hl.dsp.exec_cmd(scriptsDir .. "/KeyBinds.sh"))
hl.bind(mainMod .. " + SHIFT + A", hl.dsp.exec_cmd(scriptsDir .. "/Animations.sh"))
hl.bind(mainMod .. " + SHIFT + O", hl.dsp.exec_cmd(UserScripts .. "/ZshChangeTheme.sh"))
hl.bind(
	"ALT_L + SHIFT_L",
	hl.dsp.exec_cmd(scriptsDir .. "/SwitchKeyboardLayout.sh"),
	{ locked = true, non_consuming = true }
)
hl.bind(mainMod .. " + ALT + C", hl.dsp.exec_cmd(UserScripts .. "/RofiCalc.sh"))
hl.bind(mainMod .. " + L", hl.dsp.exec_cmd("hyprlock"))

hl.bind(mainMod .. " + D", hl.dsp.send_shortcut({ mods = "SHIFT", key = "D", window = "class:^(steam_app_1325860)" }))
hl.bind(mainMod .. " + S", hl.dsp.send_shortcut({ mods = "SHIFT", key = "S", window = "class:^(steam_app_1325860)" }))
hl.bind(mainMod .. " + H", hl.dsp.send_shortcut({ mods = "SHIFT", key = "J", window = "class:^(steam_app_1325860)" }))
hl.bind(mainMod .. " + C", hl.dsp.send_shortcut({ mods = "SHIFT", key = "C", window = "class:^(steam_app_1325860)" }))
hl.bind(mainMod .. " + O", hl.dsp.send_shortcut({ mods = "SHIFT", key = "Q", window = "class:^(steam_app_1325860)" }))
hl.bind(mainMod .. " + M", hl.dsp.send_shortcut({ mods = "CTRL SHIFT", key = "M", window = "class:^(vesktop)" }))
hl.bind(
	mainMod .. " + CTRL + ALT + up",
	hl.dsp.send_shortcut({ mods = "CTRL ALT", key = "up", window = "class:^(vesktop)" })
)
hl.bind(
	mainMod .. " + CTRL + SHIFT + down",
	hl.dsp.send_shortcut({ mods = "CTRL SHIFT", key = "down", window = "class:^(vesktop)" })
)
hl.bind(mainMod .. " + ALT + up", hl.dsp.send_shortcut({ mods = "ALT", key = "up", window = "class:^(vesktop)" }))
hl.bind(mainMod .. " + ALT + down", hl.dsp.send_shortcut({ mods = "ALT", key = "down", window = "class:^(vesktop)" }))
hl.bind(
	mainMod .. " + Return",
	hl.dsp.send_shortcut({ mods = "CTRL SHIFT ALT", key = "v", window = "class:^(vesktop)" })
)

hl.bind(
	"Print",
	hl.dsp.exec_cmd(
		'grim -g "$(slurp)" - | wl-copy && wl-paste > ~/Pictures/Screenshots/Screenshot-$(date +%F%T).png | dunstify "Screenshot of the region taken" -t 1000'
	)
)
hl.bind(
	"SHIFT + Print",
	hl.dsp.exec_cmd(
		'grim - | wl-copy && wl-paste > ~/Pictures/Screenshots/Screenshot-$(date +%F%T).png | dunstify "Screenshot of whole screen taken" -t 1000'
	)
)

-- For passthrough keyboard into a VM
-- bind = $mainMod ALT, P, submap, passthru
--submap = passthru
-- to unbind
