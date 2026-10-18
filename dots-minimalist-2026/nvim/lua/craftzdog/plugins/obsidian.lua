-- CONFIGURACIÓN IMPORTANTE: cambia `dir` por la ruta de tu vault de Obsidian.
local vault_dir = vim.fn.expand("~/work/notes") -- ruta del vault de Obsidian

require("obsidian").setup({
	dir = vault_dir,
	workspaces = {
		{
			name = "personal",
			path = vault_dir,
		},
	},
	notes_subdir = "Entradas",
	new_notes_location = "notes_subdir",
	frontmatter = {
		enabled = true,
	},
	templates = {
		subdir = "Plantillas",
		date_format = "%Y-%m-%d",
		time_format = "%H:%M",
		substitutions = {},
	},
	ui = {
		enable = true,
		update_debounce = 200,
	},
	legacy_commands = false,
})

-- Obsidian recomienda conceal level 2 para ocultar la sintaxis de markdown
vim.opt.conceallevel = 2

local keymap = vim.keymap.set
local opts = function(desc)
	return { desc = desc, silent = true }
end

keymap("n", "<leader>oo", "<cmd>Obsidian open<cr>", opts("Obsidian: abrir nota en la app"))
keymap("n", "<leader>on", "<cmd>Obsidian new<cr>", opts("Obsidian: nueva nota"))
keymap("n", "<leader>os", "<cmd>Obsidian search<cr>", opts("Obsidian: buscar notas"))
keymap("n", "<leader>oq", "<cmd>Obsidian quick switch<cr>", opts("Obsidian: cambiar nota rápida"))
keymap("n", "<leader>ot", "<cmd>Obsidian template<cr>", opts("Obsidian: insertar plantilla"))
keymap("n", "<leader>ol", "<cmd>Obsidian follow link<cr>", opts("Obsidian: seguir enlace"))
keymap("n", "<leader>ob", "<cmd>Obsidian backlinks<cr>", opts("Obsidian: backlinks"))
keymap("n", "<leader>od", "<cmd>Obsidian today<cr>", opts("Obsidian: nota de hoy"))
keymap("n", "<leader>oi", "<cmd>Obsidian img paste<cr>", opts("Obsidian: pegar imagen"), { mode = { "n" } })
