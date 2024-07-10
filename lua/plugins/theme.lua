-- return {
--   "askfiy/visual_studio_code",
--   priority = 100,
--   config = function()
--     vim.cmd([[colorscheme visual_studio_code]])
--   end,
-- }

return {
  "catppuccin/nvim",
  priority = 1000,
  config = function()
    vim.cmd([[colorscheme catppuccin]])
  end,
}
