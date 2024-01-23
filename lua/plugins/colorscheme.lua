vim.opt.background = "light" --"dark"
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
  --
  -- Lua

  {
    "olivercederborg/poimandres.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("poimandres").setup({
        -- leave this setup function empty for default config
        -- or refer to the configuration section
        -- for configuration options
      })
    end,

    -- optionally set the colorscheme within lazy config
    init = function()
      vim.cmd("colorscheme poimandres")
    end,
  },
  {
    "nyoom-engineering/oxocarbon.nvim",
    -- Add in any other configuration;
    --   event = foo,
    --   config = bar
    --   end,
  },
  { "yorickpeterse/vim-paper" },
}
