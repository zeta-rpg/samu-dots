return {
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" }, -- íconos opcionales
    config = function()
      require("lualine").setup {
        options = {
          theme = "auto",         -- usa el tema de tu colorscheme actual
          section_separators = "", -- separadores de sección
          component_separators = "|",
          globalstatus = true,    -- línea de status global (Neovim >=0.7)
        },
        sections = {
          lualine_a = { 'mode' },
          lualine_b = { 'branch', 'diff', 'diagnostics' },
          lualine_c = { 'filename' },
          lualine_x = { 'encoding', 'fileformat', 'filetype' },
          lualine_y = { 'progress' },
          lualine_z = { 'location' }
        },
      }
    end
  }
}
