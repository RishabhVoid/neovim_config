-- Remappings
vim.g.mapleader = " "
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.bo.softtabstop = 2
vim.cmd("set clipboard=unnamed")
vim.cmd("set rnu")
vim.opt.termguicolors = true
vim.g.python_host_prog = "F:\\program_fles\\python_312"
vim.g.python3_host_prog = "F:\\program_fles\\python_312"

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins")
require("leap").create_default_mappings()
