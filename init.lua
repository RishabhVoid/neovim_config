-- Settings

-- Disable indentLine plugin
vim.g.indentLine_enabled = 0

-- Disable indent-blankline.nvim plugin
vim.g.indent_blankline_enabled = false

-- Optionally, disable listchars for indentation guides
vim.opt.list = false

vim.g.mapleader = " "
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.bo.softtabstop = 2
vim.opt.clipboard = "unnamedplus"
vim.opt.scrolloff = 0
vim.opt.sidescrolloff = 0
vim.opt.conceallevel = 1
vim.opt.number = true
vim.opt.relativenumber = true

-- Lazy.nvim setup
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins");

-- Global shortcuts
vim.keymap.set("n", "<C-Left>", ":bprev<CR>", {})
vim.keymap.set("n", "<C-Right>", ":bnext<CR>", {})
