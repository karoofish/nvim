return {
  -- add gruvbox
  {
    --    "ellisonleao/gruvbox.nvim",
    "maxmx03/dracula.nvim",
    priority = 1000,
    config = true,
    -- opts = {
    --   overrides = {
    --     ["@lsp.mod.mutable.rust"] = {
    --       underline = true,
    --       bold = true,
    --       priority = 1000,
    --     },
    --   },
    -- },
  },

  -- Configure LazyVim to load gruvbox
  -- {
  --   "LazyVim/LazyVim",
  --   opts = {
  --     missing = true,
  --     colorscheme = "dracula",
  --   },
  -- },
}
