-- require("lazy").setup({{
-- return {}
return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      local configs = require("nvim-treesitter.configs")

      configs.setup({
        ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "rust" },
        sync_install = false,
        highlight = { enable = true },
        indent = { enable = true },
      })
    end,
  },
  {
    "rayliwell/tree-sitter-rstml",
    dependencies = { "nvim-treesitter" },
    build = ":TSUpdate",
    config = function()
      require("tree-sitter-rstml").setup()
    end,
  }, -- {
  --   "rayliwell/nvim-treesitter",
  --   build = ":TSUpdate",
  --   --    config = function ()
  --   --        local configs = require("nvim-treesitter.configs")
  --
  --   --       configs.setup({
  --   opts = {
  --     ensure_installed = { "rust", "rstml" },
  --     sync_install = false,
  --     highlight = { enable = true },
  --     indent = { enable = true },
  --   },
  --   -- end
  -- },
  -- Experimental automatic tag closing and renaming (optional)
  -- {
  --   "rayliwell/nvim-ts-autotag",
  --   config = function()
  --     require("rayliwell/nvim-ts-autotag").setup()
  --   end,
  -- },
}
