-- ============================================================
--  Portapapeles en WSL: usar win32yank.exe (clipboard de Windows)
--  Este archivo vive en after/ -> no lo sobrescribe el stow
-- ============================================================
if vim.fn.has("wsl") == 1 then
	local function yank_exe()
		-- buscar win32yank.exe en sitios habituales
		local candidates = {
			vim.fn.expand("~/.local/bin/win32yank.exe"),
			"/mnt/c/Users/" .. (vim.env.USER or "") .. "/bin/win32yank.exe",
		}
		for _, p in ipairs(candidates) do
			if vim.fn.executable(p) == 1 then
				return p
			end
		end
		return nil
	end

	local exe = yank_exe()
	if exe then
		vim.g.clipboard = {
			name = "win32yank-wsl",
			copy = {
				["+"] = { exe, "-i", "--crlf" },
				["*"] = { exe, "-i", "--crlf" },
			},
			paste = {
				["+"] = { exe, "-o", "--lf" },
				["*"] = { exe, "-o", "--lf" },
			},
			cache_enabled = 1,
		}
		-- Asegurar que nvim use el proveedor
		vim.opt.clipboard = "unnamedplus"
	end
end
