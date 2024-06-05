return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  config = function()
    require('nvim-treesitter.configs').setup {
      ensure_installed = {
        "bash",
        "go",
        "html",
        "javascript",
        "lua",
        "rust",
        "typescript",
        "vue",
      },
      auto_install = true,
      highlight = {
        enable = true,
      },
    }
  end,
}
