return {
  "NeogitOrg/neogit",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "sindrets/diffview.nvim",
  },
  config = function ()
    local neogit = require("neogit")

    neogit.setup {}
    vim.keymap.set("n", "<leader>ng", neogit.open, {desc = "[N]eo[G]it"})
  end
}
