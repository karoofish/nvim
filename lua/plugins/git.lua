return {

  -- git blame
  {
    "f-person/git-blame.nvim",
    event = "BufReadPre",
  },

  -- git conflict
  {
    "akinsho/git-conflict.nvim",
    event = "BufReadPre",
    opts = {},
  },

  -- git diff view
  {
    "sindrets/diffview.nvim",
    cmd = "DiffviewOpen",
  },
}
