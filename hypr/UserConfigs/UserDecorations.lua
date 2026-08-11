-- /* https://github.com/GomezMig03 */  #
-- Decoration Settings

-- Hyprland Wiki Links
-- Animation - https://wiki.hyprland.org/Configuring/Animations/
-- Decoration - https://wiki.hyprland.org/Configuring/Variables/#decoration

local base   = "#ff1e1e2e"
local mantle = "#ff181825"
local crust  = "#ff11111b"

local text     = "#ffcff6f4"
local subtext0 = "#ffa6adc8"
local subtext1 = "#ffbac2de"

local surface0 = "#ff313244"
local surface1 = "#ff45475a"
local surface2 = "#ff585b70"

local overlay0 = "#ff6c7086"
local overlay1 = "#ff7f849c"
local overlay2 = "#ff9399b2"

local blue      = "#ff89b4fa"
local lavender  = "#ffb4befe"
local sapphire  = "#ff74c7ec"
local sky       = "#ff89decb"
local teal      = "#ff94e2d5"
local green     = "#ffA6e3a1"
local yellow    = "#fff9e2af"
local peach     = "#fffab387"
local maroon    = "#ffeba0ac"
local red       = "#fff38ba8"
local mauve     = "#ffCBA6F7"
local pink      = "#fff5c2e7"
local flamingo  = "#fff2cdcd"
local rosewater = "#fff5e0dc"

-- Sourcing external config files

hl.config({
	general = {
		border_size = 2,
		gaps_in = 2,
		gaps_out = 4,
		col = {
			active_border = peach,
			inactive_border = base,
		},
	},
	decoration = {
		rounding = 10,
		active_opacity = 1.0,
		inactive_opacity = 1.0,
		fullscreen_opacity = 1.0,
		dim_inactive = true,
		dim_strength = 0.1,
		dim_special = 0.8,
		shadow = {
			enabled = true,
			range = 2,
			render_power = 1,
			color = base,
			color_inactive = mantle,
		},
		blur = {
			enabled = true,
			size = 6,
			passes = 2,
			ignore_opacity = true,
			new_optimizations = true,
			special = true,
			popups = true,
		},
	},
	group = {
		col = {
			border_active = peach,
		},
		groupbar = {
			col = {
				active = crust, 
			},
		},
	},
})
