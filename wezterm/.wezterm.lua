local wezterm = require 'wezterm'
local config = wezterm.config_builder()

config.color_scheme = 'Aura (Gogh)'
config.font = wezterm.font 'JetBrainsMono Nerd Font'
config.window_decorations = "RESIZE"
config.font_size = 14.0
config.window_background_opacity = 0.8
config.macos_window_background_blur = 20

return config