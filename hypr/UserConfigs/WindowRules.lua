-- /* https://github.com/GomezMig03 */  #
-- For window rules and layerrules
-- See https://wiki.hyprland.org/Configuring/Window-Rules/ for more

-- windowrule v2 - tags - add apps under appropriate tag to use the same settings
-- browser tags

hl.window_rule({
	name = "windowrule-1",
	match = {
		class = "^([Ff]irefox|org.mozilla.firefox|[Ff]irefox-esr|[Ff]irefox-bin)$",
	},
	tag = "+browser",
})

hl.window_rule({
	name = "windowrule-2",
	match = {
		class = "^([Gg]oogle-chrome(-beta|-dev|-unstable)?)$",
	},
	tag = "+browser",
})

hl.window_rule({
	name = "windowrule-3",
	match = {
		class = "^(chrome-.+-Default)$",
	},
	tag = "+browser",
})

hl.window_rule({
	name = "windowrule-4",
	match = {
		class = "^([Cc]hromium)$",
	},
	tag = "+browser",
})

hl.window_rule({
	name = "windowrule-5",
	match = {
		class = "^([Mm]icrosoft-edge(-stable|-beta|-dev|-unstable))$",
	},
	tag = "+browser",
})

hl.window_rule({
	name = "windowrule-6",
	match = {
		class = "^(Brave-browser(-beta|-dev|-unstable)?)$",
	},
	tag = "+browser",
})

hl.window_rule({
	name = "windowrule-7",
	match = {
		class = "^([Tt]horium-browser|[Cc]achy-browser)$",
	},
	tag = "+browser",
})

hl.window_rule({
	name = "windowrule-8",
	match = {
		class = "^(zen-alpha|zen)$",
	},
	tag = "+browser",
})

hl.window_rule({
	name = "windowrule-9",
	match = {
		class = "^([Gg]odot)$",
	},
	tag = "+engine",
})

hl.window_rule({
	name = "windowrule-10",
	match = {
		class = "^(swaync-control-center|swaync-notification-window|swaync-client|class)$",
	},
	tag = "+notif",
})

hl.window_rule({
	name = "windowrule-11",
	match = {
		title = "^(KooL Quick Cheat Sheet)$",
	},
	tag = "+KooL_Cheat",
})

hl.window_rule({
	name = "windowrule-12",
	match = {
		title = "^(KooL Hyprland Settings)$",
	},
	tag = "+KooL_Settings",
})

hl.window_rule({
	name = "windowrule-13",
	match = {
		class = "^(nwg-displays|nwg-look)$",
	},
	tag = "+KooL-Settings",
	size = "(monitor_w*0.65) (monitor_h*0.50)",
})

hl.window_rule({
	name = "windowrule-14",
	match = {
		title = "^(.*DEBUG.*)$",
	},
	tag = "+debug",
})

hl.window_rule({
	name = "windowrule-15",
	match = {
		title = "^(.*Enhancer for YouTube™.*)$",
	},
	tag = "+popup",
})

hl.window_rule({
	name = "windowrule-16",
	match = {
		class = "^(brave-ponfpcnoihfmfllpaingbgckeeldkhle-Default)$",
	},
	tag = "+popup",
})

hl.window_rule({
	name = "windowrule-17",
	match = {
		class = "^(brave-nngceckbapebfimnlniiiahkandclblb-Default)$",
	},
	tag = "+popup",
})

hl.window_rule({
	name = "bitwarden-extension-ff",
	match = {
		title = "^(.*Bitwarden.*)$",
	},
	tag = "+popup",
})

hl.window_rule({
	name = "windowrule-18",
	match = {
		title = "^(Picture-in-Picture)$",
	},
	tag = "+popup",
	move = "((monitor_w*0.72)) ((monitor_h*0.07))",
	opacity = "0.95 0.75",
	pin = true,
	keep_aspect_ratio = true,
})

hl.window_rule({
	name = "windowrule-19",
	match = {
		title = "^(Runtime)$",
	},
	tag = "+popup",
})

hl.window_rule({
	name = "windowrule-20",
	match = {
		title = "^(btop)$",
	},
	tag = "+popup",
	size = "(monitor_w*0.75) (monitor_h*0.75)",
})

hl.window_rule({
	name = "windowrule-21",
	match = {
		title = "^(overskride)$",
	},
	tag = "+popup",
	size = "(monitor_w*0.75) (monitor_h*0.75)",
})

-- terminal tags
hl.window_rule({
	name = "windowrule-22",
	match = {
		class = "^(Alacritty|kitty|kitty-dropterm)$",
	},
	tag = "+terminal",
})

-- email tags
hl.window_rule({
	name = "windowrule-23",
	match = {
		class = "^([Tt]hunderbird|org.gnome.Evolution)$",
	},
	tag = "+email",
})

hl.window_rule({
	name = "windowrule-24",
	match = {
		class = "^(eu.betterbird.Betterbird)$",
	},
	tag = "+email",
})

-- project tags
hl.window_rule({
	name = "windowrule-25",
	match = {
		class = "^(codium|codium-url-handler|VSCodium)$",
	},
	tag = "+projects",
})

hl.window_rule({
	name = "windowrule-26",
	match = {
		class = "^(VSCode|code-url-handler)$",
	},
	tag = "+projects",
})

hl.window_rule({
	name = "windowrule-27",
	match = {
		class = "^(jetbrains-.+)$",
	},
	tag = "+projects",
})

-- screenshare tags
hl.window_rule({
	name = "windowrule-28",
	match = {
		class = "^(com.obsproject.Studio)$",
	},
	tag = "+screenshare",
})

-- IM tags
hl.window_rule({
	name = "windowrule-29",
	match = {
		class = "^([Dd]iscord|[Ww]ebCord)$",
	},
	tag = "+im",
})

hl.window_rule({
	name = "windowrule-30",
	match = {
		class = "^([Ff]erdium)$",
	},
	tag = "+im",
	float = true,
	size = "(monitor_w*0.6) (monitor_h*0.7)",
})

hl.window_rule({
	name = "windowrule-31",
	match = {
		class = "^([Ww]hatsapp-for-linux)$",
	},
	tag = "+im",
})

hl.window_rule({
	name = "windowrule-32",
	match = {
		class = "^(ZapZap|com.rtosta.zapzap)$",
	},
	tag = "+im",
})

hl.window_rule({
	name = "windowrule-33",
	match = {
		class = "^(org.telegram.desktop|io.github.tdesktop_x64.TDesktop)$",
	},
	tag = "+im",
})

hl.window_rule({
	name = "windowrule-34",
	match = {
		class = "^(teams-for-linux)$",
	},
	tag = "+im",
})

-- game tags
hl.window_rule({
	name = "windowrule-35",
	match = {
		class = "^(gamescope)$",
	},
	tag = "+games",
})

hl.window_rule({
	name = "windowrule-36",
	match = {
		class = "^(steam_app_\\d+)$",
	},
	tag = "+games",
})

hl.window_rule({
	name = "windowrule-37",
	match = {
		title = "^(osu!)$",
	},
	tag = "+games",
})

hl.window_rule({
	name = "windowrule-38",
	match = {
		title = "^(.*[Hh]onkai.*)$",
	},
	tag = "+games",
})

hl.window_rule({
	name = "windowrule-39",
	match = {
		title = "^(.*[Gg]enshin.*)$",
	},
	tag = "+games",
})

hl.window_rule({
	name = "windowrule-40",
	match = {
		title = "^(.*[Mm]inecraft.*)$",
	},
	tag = "+games",
})

hl.window_rule({
	name = "windowrule-41",
	match = {
		class = "^(CarX_Street.x86_64)",
	},
	tag = "+games",
})

hl.window_rule({
	name = "windowrule-42",
	match = {
		title = "^(.*[Pp]ureya.*)$",
	},
	tag = "+games",
})

hl.window_rule({
	name = "windowrule-43",
	match = {
		class = "^(vacuumtube)$",
	},
	tag = "+games",
	float = true,
	fullscreen = true,
})

hl.window_rule({
	name = "windowrule-44",
	match = {
		class = "^(steam)$",
	},
	tag = "-games",
})

hl.window_rule({
	name = "windowrule-45",
	match = {
		tag = "browser*",
	},
	tag = "-games",
	opacity = "0.95 0.9",
})

--VPNs
hl.window_rule({
	name = "windowrule-46",
	match = {
		title = "^(.*[Mm]ullvad.*)$",
	},
	tag = "+vpns",
})

hl.window_rule({
	name = "windowrule-46",
	match = {
		class = "^(protonvpn-app)$",
	},
	tag = "+vpns",
	size = "(monitor_w*0.25) (monitor_h*0.50)",
})

-- gamestore tags
hl.window_rule({
	name = "windowrule-47",
	match = {
		class = "^([Ss]team)$",
	},
	tag = "+gamestore",
})

hl.window_rule({
	name = "windowrule-48",
	match = {
		title = "^([Ll]utris)$",
	},
	tag = "+gamestore",
})

hl.window_rule({
	name = "windowrule-49",
	match = {
		class = "^(com.heroicgameslauncher.hgl)$",
	},
	tag = "+gamestore",
})

hl.window_rule({
	name = "windowrule-50",
	match = {
		title = "^(.*[Hh]onkers.*)$",
	},
	tag = "+gamestore",
})

hl.window_rule({
	name = "windowrule-51",
	match = {
		title = "^(.*[Hh]oyoplay.*)$",
	},
	tag = "+gamestore",
})

-- Steam input keyboard
hl.window_rule({
	name = "windowrule-52",
	match = {
		title = "^(.*Teclado en pantalla de Steam Input.*)$",
	},
	tag = "-gamestore",
})

hl.window_rule({
	name = "windowrule-53",
	match = {
		title = "^(.*Steam Input On-screen Keyboard.*)$",
	},
	tag = "-gamestore",
})

hl.window_rule({
	name = "windowrule-54",
	match = {
		title = "^(.*Steam入力オンスクリーンキーボード.*)$",
	},
	tag = "-gamestore",
})

-- Big Picture
hl.window_rule({
	name = "windowrule-55",
	match = {
		title = "^(.*Big Picture .* Steam.*)$",
	},
	tag = "+games",
})

hl.window_rule({
	name = "windowrule-56",
	match = {
		title = "^(.*Steam Big Picture.*)$",
	},
	tag = "+games",
	size = "(monitor_w*1) (monitor_h*1)",
})

-- file-manager tags
hl.window_rule({
	name = "windowrule-57",
	match = {
		class = "^([Tt]hunar|org.gnome.Nautilus|[Pp]cmanfm-qt)$",
	},
	tag = "+file-manager",
})

hl.window_rule({
	name = "windowrule-58",
	match = {
		class = "^(app.drey.Warp)$",
	},
	tag = "+file-manager",
})

-- wallpaper tags
hl.window_rule({
	name = "windowrule-59",
	match = {
		title = "^([Ww]aytrogen)$",
	},
	tag = "+wallpaper",
})

hl.window_rule({
	name = "windowrule-60",
	match = {
		class = "^([Ww]aytrogen)$",
	},
	tag = "+wallpaper",
})

-- multimedia tags
hl.window_rule({
	name = "windowrule-61",
	match = {
		class = "^([Aa]udacious)$",
	},
	tag = "+multimedia",
})

-- settings tags
hl.window_rule({
	name = "windowrule-62",
	match = {
		title = "^(ROG Control)$",
	},
	tag = "+settings",
	center = true,
})

hl.window_rule({
	name = "windowrule-63",
	match = {
		class = "^(wihotspot(-gui)?)$",
	},
	tag = "+settings",
})

hl.window_rule({
	name = "windowrule-64",
	match = {
		class = "^([Bb]aobab|org.gnome.[Bb]aobab)$",
	},
	tag = "+settings",
})

hl.window_rule({
	name = "windowrule-65",
	match = {
		class = "^(gnome-disks|wihotspot(-gui)?)$",
	},
	tag = "+settings",
})

hl.window_rule({
	name = "windowrule-66",
	match = {
		title = "(Kvantum Manager)",
	},
	tag = "+settings",
})

hl.window_rule({
	name = "windowrule-67",
	match = {
		class = "^(file-roller|org.gnome.FileRoller)$",
	},
	tag = "+settings",
})

hl.window_rule({
	name = "windowrule-68",
	match = {
		class = "^(nm-applet|nm-connection-editor|blueman-manager)$",
	},
	tag = "+settings",
})

hl.window_rule({
	name = "windowrule-69",
	match = {
		class = "^(pavucontrol|org.pulseaudio.pavucontrol|com.saivert.pwvucontrol)$",
	},
	tag = "+settings",
	center = true,
})

hl.window_rule({
	name = "windowrule-70",
	match = {
		class = "^(qt5ct|qt6ct|[Yy]ad)$",
	},
	tag = "+settings",
})

hl.window_rule({
	name = "windowrule-71",
	match = {
		class = "(xdg-desktop-portal-gtk)",
	},
	tag = "+settings",
})

hl.window_rule({
	name = "windowrule-72",
	match = {
		class = "^(org.kde.polkit-kde-authentication-agent-1)$",
	},
	tag = "+settings",
})

hl.window_rule({
	name = "windowrule-73",
	match = {
		class = "^([Rr]ofi)$",
	},
	tag = "+settings",
})

-- viewer tags
hl.window_rule({
	name = "windowrule-74",
	match = {
		class = "^(gnome-system-monitor|org.gnome.SystemMonitor|io.missioncenter.MissionCenter)$",
	},
	tag = "+viewer",
})

hl.window_rule({
	name = "windowrule-75",
	match = {
		class = "^(evince)$",
	},
	tag = "+viewer",
})

hl.window_rule({
	name = "windowrule-76",
	match = {
		class = "^(eog|org.gnome.Loupe)$",
	},
	tag = "+viewer",
})

-- POSITION
-- windowrulev2 = center,floating:1 # warning, it cause even the menu to float and center.
hl.window_rule({
	name = "windowrule-77",
	match = {
		tag = "KooL_Cheat*",
	},
	center = true,
	float = true,
	size = "(monitor_w*0.65) (monitor_h*0.9)",
})

hl.window_rule({
	name = "windowrule-78",
	match = {
		class = "([Tt]hunar)",
		title = "negative:(.*[Tt]hunar.*)",
	},
	center = true,
	float = true,
})

hl.window_rule({
	name = "windowrule-79",
	match = {
		tag = "KooL-Settings*",
	},
	center = true,
	float = true,
})

hl.window_rule({
	name = "windowrule-80",
	match = {
		title = "^(Keybindings)$",
	},
	center = true,
})

hl.window_rule({
	name = "windowrule-81",
	match = {
		class = "^([Ww]hatsapp-for-linux|ZapZap|com.rtosta.zapzap)$",
	},
	center = true,
	size = "(monitor_w*0.6) (monitor_h*0.7)",
})

hl.window_rule({
	name = "windowrule-82",
	match = {
		class = "^([Ff]erdium)",
	},
	center = true,
})

hl.window_rule({
	name = "windowrule-83",
	match = {
		class = "^(Lista de amigos)$",
	},
	center = true,
})

--windowrulev2 = move 72% 7%,title:^(Firefox)$

-- windowrule v2 to avoid idle for fullscreen apps
--windowrulev2 = idleinhibit fullscreen, class:^(*)$
--windowrulev2 = idleinhibit fullscreen, title:^(*)$
hl.window_rule({
	name = "windowrule-84",
	match = {
		fullscreen = 1,
	},
	idle_inhibit = "fullscreen",
})

-- windowrule v2 move to workspace
hl.window_rule({
	name = "windowrule-85",
	match = {
		tag = "email*",
	},
	workspace = "1",
})

--windowrulev2 = workspace 1, tag:browser*
hl.window_rule({
	name = "windowrule-86",
	match = {
		class = "^([Vv]esktop)$",
	},
	workspace = "2",
})

--windowrulev2 = workspace 3, class:^([Tt]hunar)$
--windowrulev2 = workspace 3, tag:projects*
hl.window_rule({
	name = "windowrule-87",
	match = {
		tag = "gamestore*",
	},
	workspace = "5",
	no_initial_focus = true,
})

hl.window_rule({
	name = "windowrule-88",
	match = {
		tag = "im*",
	},
	workspace = "7",
	opacity = "0.94 0.86",
})

hl.window_rule({
	name = "windowrule-89",
	match = {
		tag = "engine*",
	},
	workspace = "6",
})

hl.window_rule({
	name = "windowrule-90",
	match = {
		tag = "games*",
	},
	workspace = "8",
	no_blur = true,
	fullscreen = true,
})

-- windowrule v2 move to workspace (silent)
hl.window_rule({
	name = "windowrule-91",
	match = {
		tag = "screenshare*",
	},
	workspace = "4 silent",
})

hl.window_rule({
	name = "windowrule-92",
	match = {
		class = "^(virt-manager)$",
	},
	workspace = "6 silent",
})

hl.window_rule({
	name = "windowrule-93",
	match = {
		class = "^(.virt-manager-wrapped)$",
	},
	workspace = "6 silent",
})

hl.window_rule({
	name = "windowrule-94",
	match = {
		tag = "multimedia*",
	},
	workspace = "9 silent",
	opacity = "0.94 0.86",
})

hl.window_rule({
	name = "windowrule-95",
	match = {
		workspace = "(7)",
		tag = "negative:games*",
	},
	workspace = "1 silent",
})

-- FLOAT
hl.window_rule({
	name = "windowrule-96",
	match = {
		tag = "wallpaper*",
	},
	float = true,
	opacity = "0.95 0.7",
	size = "(monitor_w*0.7) (monitor_h*0.7)",
})

hl.window_rule({
	name = "windowrule-yomitan",
	match = {
		title = "^(.*Yomitan Search.*)",
	},
	float = true,
	size = "(monitor_w*0.7) (monitor_h*0.7)",
})

hl.window_rule({
	name = "windowrule-97",
	match = {
		tag = "settings*",
	},
	float = true,
	opacity = "0.85 0.7",
	size = "(monitor_w*0.7) (monitor_h*0.7)",
})

hl.window_rule({
	name = "windowrule-98",
	match = {
		tag = "viewer*",
	},
	float = true,
	opacity = "0.82 0.75",
	size = "(monitor_w*0.75) (monitor_h*0.75)",
})

hl.window_rule({
	name = "windowrule-op",
	match = {
		tag = "browser*",
	},
	opacity = "0.99 1",
})

hl.window_rule({
	name = "windowrule-99",
	match = {
		tag = "vpns*",
	},
	float = true,
})

hl.window_rule({
	name = "windowrule-100",
	match = {
		tag = "enhancer*",
	},
	float = true,
})

hl.window_rule({
	name = "windowrule-101",
	match = {
		class = "([Zz]oom|onedriver|onedriver-launcher)$",
	},
	float = true,
})

hl.window_rule({
	name = "windowrule-102",
	match = {
		class = "(org.gnome.Calculator)",
		title = "(Calculator)",
	},
	float = true,
})

hl.window_rule({
	name = "windowrule-103",
	match = {
		class = "^(mpv|com.github.rafostar.Clapper)$",
	},
	float = true,
})

hl.window_rule({
	name = "windowrule-104",
	match = {
		class = "^([Qq]alculate-gtk)$",
	},
	float = true,
})

--windowrulev2 = float, class:^([Ww]hatsapp-for-linux|ZapZap|com.rtosta.zapzap)$
hl.window_rule({
	name = "windowrule-105",
	match = {
		tag = "popup*",
	},
	float = true,
	pin = true,
	opacity = "1 1",
})

hl.window_rule({
	name = "windowrule-106",
	match = {
		tag = "debug*",
	},
	float = true,
})

--windowrule v2 - float popups and dialogue
hl.window_rule({
	name = "windowrule-107",
	match = {
		title = "^(Authentication Required)$",
	},
	float = true,
	center = true,
})

hl.window_rule({
	name = "windowrule-108",
	match = {
		class = "(codium|codium-url-handler|VSCodium)",
		title = "negative:(.*codium.*|.*VSCodium.*)",
	},
	float = true,
})

hl.window_rule({
	name = "windowrule-109",
	match = {
		class = "^(com.heroicgameslauncher.hgl)$",
		title = "negative:(Heroic Games Launcher)",
	},
	float = true,
})

hl.window_rule({
	name = "windowrule-110",
	match = {
		class = "^([Ss]team)$",
		title = "negative:^([Ss]team)$",
	},
	float = true,
})

--windowrulev2 = float, class:(electron), title:(Add Folder to Workspace)
hl.window_rule({
	name = "windowrule-111",
	match = {
		title = "^(Add Folder to Workspace)$",
	},
	float = true,
	center = true,
	size = "(monitor_w*0.7) (monitor_h*0.6)",
})

hl.window_rule({
	name = "windowrule-112",
	match = {
		initial_title = "(Open Files)",
	},
	float = true,
	size = "(monitor_w*0.7) (monitor_h*0.6)",
})

hl.window_rule({
	name = "windowrule-113",
	match = {
		title = "^(SDDM Background)$",
	},
	float = true,
	center = true,
	size = "(monitor_w*0.16) (monitor_h*0.12)",
})

-- OPACITY
hl.window_rule({
	name = "windowrule-114",
	match = {
		tag = "projects*",
	},
	opacity = "0.95 0.8",
})

hl.window_rule({
	name = "windowrule-115",
	match = {
		tag = "file-manager*",
	},
	opacity = "0.95 0.85",
})

hl.window_rule({
	name = "windowrule-116",
	match = {
		tag = "terminal*",
	},
	opacity = "0.8 0.7",
})

hl.window_rule({
	name = "windowrule-117",
	match = {
		class = "^(gedit|org.gnome.TextEditor|mousepad)$",
	},
	opacity = "0.8 0.7",
})

hl.window_rule({
	name = "windowrule-118",
	match = {
		class = "^(deluge)$",
	},
	opacity = "0.9 0.8",
})

hl.window_rule({
	name = "windowrule-119",
	match = {
		class = "^(im.riot.Riot)$",
	},
	opacity = "0.95 0.9",
})

hl.window_rule({
	name = "windowrule-120",
	match = {
		class = "^(seahorse)$",
	},
	opacity = "0.9 0.8",
})

hl.window_rule({
	name = "windowrule-121",
	match = {
		class = "^(vesktop)$",
	},
	opacity = "0.96 0.93",
	no_initial_focus = true,
})

-- SIZE
--windowrulev2 = size 25% 25%, title:^(Picture-in-Picture)$
--windowrulev2 = size 25% 25%, title:^(Firefox)$

-- PINNING
--windowrulev2 = pin,title:^(Firefox)$

-- windowrule v2 - extras
hl.window_rule({
	name = "windowrule-122",
	match = {
		title = "^(Crear Nuevo Node)$",
	},
	stay_focused = true,
})

-- BLUR & FULLSCREEN
hl.window_rule({
	name = "windowrule-123",
	match = {
		class = "^(com.stremio.stremio)$",
	},
	fullscreen = true,
})

--windowrulev2 = bordercolor rgb(EE4B55) rgb(880808), fullscreen:1
hl.window_rule({
	name = "windowrule-124",
	match = {
		float = 1,
	},
	border_size = 1,
})

-- LAYER RULES
hl.layer_rule({
	name = "layerrule-1",
	match = {
		namespace = "rofi",
	},
	blur = true,
})

hl.layer_rule({
	name = "layerrule-2",
	match = {
		namespace = "notifications",
	},
	blur = true,
})
