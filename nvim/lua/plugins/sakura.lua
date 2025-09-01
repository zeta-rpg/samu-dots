-- ~/.config/nvim/lua/plugins/sakura.lua
-- return {
--   {
--     "anAcc22/sakura.nvim",
--     dependencies = "rktjmp/lush.nvim",
--     config = function()
--       vim.opt.background = "dark" -- o "light"
--       vim.cmd('colorscheme sakura')
--     end
--   }
-- }

return {
  {
    "anAcc22/sakura.nvim",
    dependencies = "rktjmp/lush.nvim",
    config = function()
      vim.opt.background = "dark"
      vim.cmd("colorscheme sakura")

      -- ⚡ Esto deja el fondo transparente
      vim.cmd([[hi Normal guibg=NONE ctermbg=NONE]])
      vim.cmd([[hi NormalNC guibg=NONE ctermbg=NONE]]) -- si usás splits
    end,
  },
}
