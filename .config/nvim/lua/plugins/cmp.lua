return {
  'hrsh7th/nvim-cmp',
  dependencies = {
    -- Snippet Engine
    'L3MON4D3/LuaSnip',

    -- Sources
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-cmdline',
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
      experimental = {
        ghost_text = true,
      },
    }

    cmp.setup.cmdline({ '/', '?' }, {
      mapping = cmp.mapping.preset.cmdline(),
      sources = {
        { name = 'buffer' }
      }
    })

    cmp.setup.cmdline(':', {
      mapping = cmp.mapping.preset.cmdline(),
      sources = cmp.config.sources({
        { name = 'cmdline' }
      }),
    })
  end
}
