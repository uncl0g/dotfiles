-- LSP
vim.keymap.set('n', '<leader>fr', vim.lsp.buf.format, { desc = '[F]ormat' })
vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, { desc = '[R]e[n]ame' })

vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { desc = '[G]oto [D]efinition' })
vim.keymap.set('n', 'gI', vim.lsp.buf.implementation, { desc = '[G]oto [I]mplementation' })
vim.keymap.set('n', '<leader>D', vim.lsp.buf.type_definition, { desc = 'Type [D]efinition' })

vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, { desc = 'Signature Documentation' })

-- Diagnostic
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })

-- Center on page up/down
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- custom esc
vim.keymap.set("i", "jj", "<Esc>")

-- move lines
vim.keymap.set("n", "<A-j>", ":m .+1<CR>")
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv")

vim.keymap.set("n", "<A-k>", ":m .-2<CR>")
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv")
