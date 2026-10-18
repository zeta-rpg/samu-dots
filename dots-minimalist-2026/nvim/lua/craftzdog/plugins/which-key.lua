-- Muestra qué comandos se ejecutan al pulsar <leader> (espacio) + letras
local wk = require("which-key")

wk.setup({
	preset = "modern",
	win = {
		border = "rounded",
		padding = { 1, 1, 1, 1 },
	},
	layout = {
		height = { min = 4, max = 25 },
		width = { min = 20, max = 50 },
		spacing = 3,
		align = "center",
	},
})

-- Grupos que which-key mostrará tras pulsar <leader> (espacio)
-- Formato nuevo de which-key spec
wk.add({
	{ "<leader>f", group = "Buscar archivos" },
	{ "<leader>l", group = "Lazygit" },
	{ "<leader>n", group = "Notificaciones" },
	{ "<leader>o", group = "Obsidian" },
	{ "<leader>r", group = "Buscar texto (ripgrep)" },
	{ "<leader>x", group = "Diagnósticos / TODOs" },
})


