return {
  "NeogitOrg/neogit",
  dependencies = {
    "nvim-lua/plenary.nvim",         -- required

    -- Only one of these is needed.
    "nvim-telescope/telescope.nvim", -- optional
  },
  config = function()
    vim.keymap.set("n", "<C-g>", "<cmd>Neogit<cr>", {desc = "Launch Neogit" })
  end,
}
