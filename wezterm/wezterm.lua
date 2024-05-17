-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This table will hold the configuration.
local config = wezterm.config_builder()

config.color_scheme = "Tokyo Night"
config.initial_rows = 120
config.initial_cols = 280
config.font_size = 11

config.inactive_pane_hsb = {
	brightness = 0.8,
}
config.enable_scroll_bar = true
-- config.colors = {
-- scrollbar_thumb = "#333333",
-- }

config.background = {
	{
		source = {
			File = "/home/mbah/NeovimShadowed.png",
		},
		horizontal_align = "Center",
		-- repeat_x = "NoRepeat",
		opacity = 1,
		hsb = { brightness = 0.06 },
	},
}

config.use_fancy_tab_bar = false
config.tab_bar_at_bottom = true
config.hide_tab_bar_if_only_one_tab = true
config.window_frame = {
	font_size = 10,
}

-- keymap ------------------------------------------------
config.keys = require("keybindings").keys

return config
