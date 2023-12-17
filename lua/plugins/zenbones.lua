return {
  -- {
  --   "LazyVim/LazyVim",
  --   opts = {
  --     colorscheme = "zenbones",
  --     background = "light",
  --   },
  -- },
  {
    "rktjmp/lush.nvim",
  },
  {
    "mcchrish/zenbones.nvim",
    dependencies = {
      "rktjmp/lush.nvim",
      "karoofish/last-color.nvim",
    },
  },
  -- {
  --   "karoofish/last-color.nvim",
  --   config = function()
  --     require("last-color").setup()
  --     -- kanagawa as a backup, `recall()` can return `nil`.
  --     local storedvalue = require("last-color").recall() or "kanagawa-dark"
  --     --print(vim.inspect(storedvalue))
  --     local theme, background = storedvalue:match("(%w+)-(%w+)")
  --     --print(vim.inspect({ theme, background }))
  --     vim.cmd(("colorscheme %s"):format(theme))
  --     vim.cmd(("set background=%s"):format(background))
  --   end,
  -- },
}
