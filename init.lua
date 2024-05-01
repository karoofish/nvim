require("config.lazy")
local theme = require("last-color").recall()
vim.cmd(("colorscheme %s"):format(theme))
vim.api.nvim_set_hl(0, "@lsp.mod.mutable.rust", { underline = true })
