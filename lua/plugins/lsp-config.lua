return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          -- List all LSPs you want to install
          "clangd",
          "pyright",
          "tsserver",
          "lua_ls",
          "rust_analyzer",
          "emmet_ls",
        }
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      -- Helper function to set up each LSP server
      local function setup_lsp(server_name, custom_config)
        lspconfig[server_name].setup(vim.tbl_extend("force", {
          capabilities = capabilities,
          on_attach = function(_, bufnr)
            -- Set up buffer-local keymaps and settings
            local opts = { buffer = bufnr }
            vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
            vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
            vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts)
          end,
        }, custom_config or {}))
      end

      -- Setup individual LSPs
      setup_lsp("lua_ls", { settings = { Lua = { diagnostics = { globals = { "vim" } } } } })
      setup_lsp("tsserver")
      setup_lsp("pyright")
      setup_lsp("emmet_ls")
      setup_lsp("rust_analyzer")
      setup_lsp("clangd")

      -- Automatically set up any other LSPs you add to `mason-lspconfig`
      local servers = require("mason-lspconfig").get_installed_servers()
      for _, server in pairs(servers) do
        if not lspconfig[server] then
          setup_lsp(server)
        end
      end
    end,
  },
}
