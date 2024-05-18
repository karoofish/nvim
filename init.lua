require("config.lazy")
local theme = require("last-color").recall()
vim.cmd(("colorscheme %s"):format(theme))

-- local lush = require "lush"
-- local base = require "zenbones"
-- local palette = require "zenbones.palette"
--
-- -- Create some specs
-- local specs = lush.parse(function(injected_functions)
-- 	local sym = injected_functions.sym
-- 	return {
-- 		sym "@lsp.type.keyword" { base["@constant"], bg = palette.light.water },
-- 	}
-- end)
-- -- Apply specs using lush tool-chain
-- lush.apply(lush.compile(specs))

vim.api.nvim_set_hl(0, "@lsp.mod.mutable.rust", { underdouble = true }) --underline = true })
