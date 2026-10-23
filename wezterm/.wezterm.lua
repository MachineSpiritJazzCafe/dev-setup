local wezterm = require 'wezterm'
local act = wezterm.action
local config = wezterm.config_builder()


-- General
config.font_size = 19
config.line_height = 1.2
config.font = wezterm.font("BlexMono Nerd Font Mono")
config.default_prog = { 'powershell.exe', '-NoLogo' }
config.color_scheme = 'tokyonight_night'

config.colors = {
	cursor_bg = "7aa2f7",
	cursor_border = "7aa2f7"
}

config.window_decorations = 'RESIZE'
config.enable_tab_bar = false

-- Mouse bindings
config.mouse_bindings = {
	{
		event = { Drag = { streak = 1, button = 'Left' } },
		mods = 'ALT',
		action = act.StartWindowDrag,
	},
}

-- Key bindings
config.keys = {
  { key = 'h', mods = 'ALT|SHIFT', action = act.SplitHorizontal { domain = 'CurrentPaneDomain' } },
  { key = 'v', mods = 'ALT|SHIFT', action = act.SplitVertical { domain = 'CurrentPaneDomain' } },	
  { key = 'LeftArrow', mods = 'ALT', action = act.ActivatePaneDirection 'Left' },
  { key = 'RightArrow', mods = 'ALT', action = act.ActivatePaneDirection 'Right' },
  { key = 'UpArrow', mods = 'ALT', action = act.ActivatePaneDirection 'Up' },
  { key = 'DownArrow', mods = 'ALT', action = act.ActivatePaneDirection 'Down' },
}

return config
