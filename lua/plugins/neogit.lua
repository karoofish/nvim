return {
  "NeogitOrg/neogit",
  dependencies = {
    "nvim-lua/plenary.nvim", -- required
    "nvim-telescope/telescope.nvim", -- optional
    "sindrets/diffview.nvim", -- optional
    "ibhagwan/fzf-lua", -- optional
  },
  config = true,
  cmd = "NeoGit",
  opts = {},
  keys = {
    {
      "<leader>gn",
      function()
        require("neogit").open({ kind = "auto" })
      end,
      desc = "NeoGit",
    },
  },
}
