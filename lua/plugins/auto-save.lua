return {
  {
    "okuuva/auto-save.nvim",
    cmd = "ASToggle", -- optional for lazy loading on command
    event = { "InsertLeave", "TextChanged" }, -- optional for lazy loading on trigger events
    opts = {
      condition = function(buf)
        local fn = vim.fn
        local utils = require("auto-save.utils.data")
        if utils.not_in(fn.getbufvar(buf, "&filetype"), { "rust" }) then
          return false
        end
        return true
      end,
    },
  },
  {
    "folke/noice.nvim",
    opts = {
      routes = {
        {
          filter = {
            event = "msg_show",
            any = {
              { find = "AutoSave:" },
            },
          },
          opts = { skip = true },
        },
      },
    },
  },
}
