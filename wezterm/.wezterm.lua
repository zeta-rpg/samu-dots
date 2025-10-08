-- Import the wezterm API
local wezterm = require("wezterm")

-- Initialize an empty configuration table
local config = {}

-- Background image options
-- config.background = {
-- 	{
-- 		source = {
-- 			File = "C:/Users/Abel/Desktop/IMG/kanagawa2.jpg", -- Path to the background image file
-- 		},
-- 		width = "100%", -- Set the background image width to 100% of the terminal window
-- 		height = "100%", -- Set the background image height to gg100% of the terminal window
-- 		opacity = 1, -- Set the opacity of the background image (0.0 - 1.0)
-- 		hsb = {
-- 			brightness = 0.008, -- Set the brightness of the background image (low value to darken the image)
-- 			saturation = 0.4, -- Set the saturation of the background image
-- 		},
-- 	},
-- }
--
config.color_scheme = "Kanagawa (Gogh)"
-- This is where you actually apply your config choices
config.window_padding = {
	top = 0,
	right = 0,
	left = 0,
}
local wezterm = require 'wezterm'
config.default_prog = { "wsl" }

launch_menu = {
    { label = "PowerShell 7",         args = { "pwsh.exe" } },
    { label = "Git Bash",             args = { "C:\\Program Files\\Git\\bin\\bash.exe", "-l" } },
    { label = "Windows PowerShell",   args = { "powershell.exe" } },
    { label = "CMD",                  args = { "cmd.exe" } },
}


-- Set the terminal font
config.font = wezterm.font("IosevkaTerm NF")

-- Hide the tab bar if only one tab is open
config.hide_tab_bar_if_only_one_tab = true
config.max_fps = 240 -- hack for smoothness
config.enable_kitty_graphics = true

-- Background with Transparency
-- config.window_decorations = | RESIZE"
config.window_background_opacity = 0.45 -- Adjust this value as needed
config.macos_window_background_blur = 20 -- Adjust this value as needed
config.win32_system_backdrop = "Acrylic" -- Only Works in Windows
-- config.window_frame = {
-- 	-- Grosor del borde (para poder agarrar y mover)
-- 	border_left_width = 5,
-- 	border_right_width = 5,
-- 	border_top_height = 10, -- importante: altura del borde superior
-- 	border_bottom_height = 5,
-- 	-- Color del borde (opcional)
-- 	active_titlebar_bg = "#1b1b1b",
-- 	inactive_titlebar_bg = "#1c1c1c",
-- }
--
-- Font Size
config.font_size = 16.0

-- Smooth hack
config.max_fps = 240

-- Enable Kitty Graphics
config.enable_kitty_graphics = true

-- Disable Scroll Bar
config.enable_scroll_bar = false

-- activate ONLY if windows --

-- config.default_domain = 'WSL:Ubuntu'
-- config.front_end = "OpenGL"
-- local gpus = wezterm.gui.enumerate_gpus()
-- if #gpus > 0 then
--   config.webgpu_preferred_adapter = gpus[1] -- only set if there's at least one GPU
-- else
--   -- fallback to default behavior or log a message
--   wezterm.log_info("No GPUs found, using default settings")
-- end

-- and finally, return the configuration to wezterm

return config
