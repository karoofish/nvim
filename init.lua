require("config.lazy") -- kanagawa as a backup, `recall()` can return `nil`.
local theme = require("last-color").recall() or "desert"
vim.cmd(("colorscheme %s"):format(theme))
vim.api.nvim_set_hl(0, "@lsp.mod.mutable.rust", { underline = true })
