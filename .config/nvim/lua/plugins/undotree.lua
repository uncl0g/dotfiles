return {
  'mbbill/undotree',
  config = function()
    vim.keymap.set('n', '<leader>u', '<cmd>UndotreeToggle<cr>', { desc = "Toggle the [U]ndotree" })
  end,
}
