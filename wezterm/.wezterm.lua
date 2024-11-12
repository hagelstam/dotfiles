local wezterm = require 'wezterm'
local config = wezterm.config_builder()

-- Windows only - runs WSL on startup
-- config.default_domain = 'WSL:Ubuntu-24.04'

config.color_scheme = 'Aura (Gogh)'

config.font = wezterm.font 'JetBrainsMono Nerd Font'
config.font_size = 14.0

config.window_decorations = "RESIZE" -- TITLE on windows
config.enable_tab_bar = false

config.window_background_opacity = 0.8
config.macos_window_background_blur = 20

return config