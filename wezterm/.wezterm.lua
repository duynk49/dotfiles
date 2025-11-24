local wezterm = require("wezterm")
return {
	-- color_scheme = 'termnial.sexy',
	color_scheme = "Catppuccin Mocha",

	-- Disable tab bar
	enable_tab_bar = false,

	-- Font setting
	font_size = 15.0,
	font = wezterm.font("JetBrains Mono"),

	-- Background
	window_background_opacity = 0.8,
	macos_window_background_blur = 30,

	-- Window settings
	window_decorations = "TITLE | RESIZE",
	window_padding = {
		left = 0,
		right = 0,
		top = 0,
		bottom = 0,
	},

	-- Shortcut key
	keys = {},
	mouse_bindings = {
		-- Ctrl-click will open the link under the mouse cursor
		{
			event = { Up = { streak = 1, button = "Left" } },
			mods = "CTRL",
			action = wezterm.action.OpenLinkAtMouseCursor,
		},
	},
}
