-- Navegación entre tmux y Neovim con los mismos atajos
-- <C-h/j/k/l> mueve entre ventanas de Neovim y paneles de tmux de forma transparente
require("tmux-navigator").setup({
	disable_when_zoomed = true, -- no navegar si tmux está en modo zoom
})
