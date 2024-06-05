return {
  'lewis6991/gitsigns.nvim',
  opts = {
    on_attach = function(bufnr)
      local gs = require 'gitsigns'

      -- Navigation
      vim.keymap.set('n', ']c', gs.prev_hunk, { desc = 'Go to Previous Hunk', buffer = bufnr })
      vim.keymap.set('n', '[c', gs.next_hunk, { desc ='Go to Next Hunk', buffer = bufnr })
      vim.keymap.set('n', '<leader>hp', gs.preview_hunk, { desc ='[P]review [H]unk', buffer = bufnr })

      -- Actions
      vim.keymap.set('n', '<leader>hs', gs.stage_hunk, { desc ='[S]tage [H]unk', buffer = bufnr })
      vim.keymap.set('v', '<leader>hs', function() gs.stage_hunk { vim.fn.line('.'), vim.fn.line('v') } end, { desc = '[S]tage [H]unk', buffer = bufnr })

      vim.keymap.set('n', '<leader>hr', gs.reset_hunk, { desc ='[R]eset [H]unk', buffer = bufnr })
      vim.keymap.set('v', '<leader>hr', function() gs.reset_hunk { vim.fn.line('.'), vim.fn.line('v') } end,{ desc ='[R]eset [H]unk', buffer = bufnr })

      vim.keymap.set('n', '<leader>hd', gs.diffthis,{ desc ='[H]unk diff', buffer = bufnr })
      vim.keymap.set('n', '<leader>hD', function() gs.diffthis('~') end)

      -- Remove sign column highlight
      vim.api.nvim_set_hl(0, 'SignColumn', { link = 'NONE' })
    end
  },
}
