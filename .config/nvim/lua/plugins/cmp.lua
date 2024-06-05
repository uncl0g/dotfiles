return {
  'hrsh7th/nvim-cmp',
  dependencies = {
    -- Engine
    'L3MON4D3/LuaSnip',

    -- Sources
    'hrsh7th/cmp-nvim-lsp',
    'saadparwaiz1/cmp_luasnip',

    -- Snippets
    'rafamadriz/friendly-snippets',
  },
  config = function()
    -- vs-code style snippets
    require('luasnip.loaders.from_vscode').lazy_load()

    local luasnip = require 'luasnip'
    luasnip.config.setup {}

    local cmp = require 'cmp'
    cmp.setup {
      sources = {
        { name = 'nvim_lsp' },
        { name = 'luasnip' },
      },
      mapping = cmp.mapping.preset.insert {
        ['<CR>'] = cmp.mapping.confirm { select = true },
      },
      snippet = {
        expand = function(args)
          luasnip.lsp_expand(args.body)
        end,
      },
    }
  end
}
