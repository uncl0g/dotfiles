return {
  'neovim/nvim-lspconfig',
  dependencies = {
    { 'williamboman/mason.nvim', config = true },
    'williamboman/mason-lspconfig.nvim',
    'folke/neodev.nvim',
  },
  config = function()
    require('neodev').setup {}

    local servers = {
      -- Go
      "golangci_lint_ls",
      "gopls",

      -- Lua
      "lua_ls",

      -- Typescript
      "tsserver",

      -- Vue
      "volar@1.8.27",
    }

    local lspconfig = require 'lspconfig'
    require('mason-lspconfig').setup {
      ensure_installed = servers,
      handlers = {
        function(server_name)
          lspconfig[server_name].setup {}
        end,
      }
    }
  end,
}
