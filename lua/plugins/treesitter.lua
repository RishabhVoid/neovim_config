return {
  "nvim-treesitter/nvim-treesitter",
  config = function()
    require("nvim-treesitter.install").compilers = { "clang" }
    require("nvim-treesitter.install").prefer_git = true
    require("nvim-treesitter.configs").setup {
      ensure_installed = { "c", "vim", "vimdoc", "query" },
      sync_install = false,
      auto_install = true,
      ignore_install = { "lua" },
      highlight = {
        enable = true,
        disable = function(lang, buf)
          local max_filesize = 100 * 1024
          local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
          if ok and stats and stats.size > max_filesize then
            return true
          end
        end,
        additional_vim_regex_highlighting = false,
      },
    }
  end,
}
