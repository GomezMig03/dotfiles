-- /* https://github.com/GomezMig03 */  #
-- always refer to Hyprland wiki
-- https://wiki.hyprland.org/

-- Initial boot script enable to apply initial wallpapers, theming, new settings etc.
-- suggest not to change this or delete this including deleting referrence file in ~/.config/hypr/.initial_startup_done
-- as long as the referrence file is present, this initial-boot.sh will not execute

HOME = "~"

-- Sourcing external config files
local configs = HOME .. "/.config/hypr/configs" -- Default Configs directory path

require("configs.Keybinds")

-- ## This is where you want to start tinkering
local UserConfigs = HOME .. "/.config/hypr/UserConfigs" -- User Configs directory path

require("UserConfigs.Startup_Apps")

require("UserConfigs.ENVariables")

require("UserConfigs.Laptops")

require("UserConfigs.WindowRules")

require("UserConfigs.UserDecorations")

require("UserConfigs.UserAnimations")

require("UserConfigs.UserKeybinds")

require("UserConfigs.UserSettings")

require("UserConfigs.01-UserDefaults")

-- nwg-displays
require("monitors")
require("workspaces")

hl.on("hyprland.start", function()
	hl.exec_cmd("$HOME/.config/hypr/initial-boot.sh")
	hl.exec_cmd("dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP")
end)
