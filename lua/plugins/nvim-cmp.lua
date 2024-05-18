return {
  {
    "hrsh7th/nvim-cmp",
    dependencies = { "hrsh7th/cmp-emoji" },
    ---@param opts cmp.ConfigSchema
    opts = function(_, opts)
      table.insert(opts.sources, { name = "emoji" })
      opts.window = {
        completion = {
          --border = { "┌", "─", "┐", "│", "┘", "─", "└", "│" },
          border = { "╭", " ", "╮", "│", "╯", " ", "╰", "│" },
          --border = { "┌", " ", "┐", "│", "┘", " ", "└", "│" },
          --winhighlight = "FloatBorder:FloatBorder,CursorLine:CursorLine",
        },
        documentation = {
          max_width = 50,
          --border = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" },
          border = { "┌", " ", "┐", "│", "┘", " ", "└", "│" },
          --winhighlight = "Normal:CmpPmenu,FloatBorder:FloatBorder,CursorLine:PmenuSel,Search:None",
        },
      }
    end,
  },
}
