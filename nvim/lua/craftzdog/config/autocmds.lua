-- Basic autocommands
local augroup = vim.api.nvim_create_augroup("UserConfig", {})

-- Turn off paste mode when leaving insert
vim.api.nvim_create_autocmd("InsertLeave", {
	group = augroup,
	pattern = "*",
	command = "set nopaste",
})

-- Highlight the current line on only the active buffer
local cursorline_group = vim.api.nvim_create_augroup("CursorLine", { clear = true })
vim.api.nvim_create_autocmd({ "VimEnter", "WinEnter", "BufWinEnter" }, {
	group = cursorline_group,
	pattern = "*",
	command = "setlocal cursorline",
})
vim.api.nvim_create_autocmd("WinLeave", {
	group = cursorline_group,
	pattern = "*",
	command = "setlocal nocursorline",
})

-- Highlight yanked text
vim.api.nvim_create_autocmd("TextYankPost", {
	group = augroup,
	callback = function()
		vim.highlight.on_yank()
	end,
})

-- Wrap solo para prosa (markdown, notas, texto, commits, latex...)
-- El codigo queda sin wrap (vim.opt.wrap = false en options.lua)
vim.api.nvim_create_autocmd("FileType", {
	group = augroup,
	pattern = { "markdown", "text", "gitcommit", "tex", "rst", "asciidoc" },
	callback = function()
		vim.opt_local.wrap = true -- Partir lineas largas visualmente
		vim.opt_local.linebreak = true -- Partir en palabras, no a mitad de palabra
		vim.opt_local.textwidth = 100 -- Ancho de referencia (100 columnas)
		vim.opt_local.colorcolumn = "100" -- Guia visual en la columna 100
	end,
})

-- Custom filetypes
vim.filetype.add({
	extension = {
		mjml = "html",
	},
})
