return {
  "stevearc/conform.nvim",
  event = { "BufWritePre" },
  cmd = { "ConformInfo" },
  keys = {
    {
      -- Customize or remove this keymap to your liking
      "<leader>f",
      function()
        require("conform").format({ async = true, lsp_fallback = true })
      end,
      mode = "",
      desc = "Format buffer",
    },
  },
  -- Everything in opts will be passed to setup()
  opts = {
    -- Define your formatters
    formatters_by_ft = {
      -- lua = { "stylua" },
      -- python = { "isort", "black" },
      javascript = { { "prettierd", "prettier" } },
      rust = { "rustfmt", "leptosfmt" },
    },
    -- Set up format-on-save
    format_on_save = {
      --  timeout_ms = 500,
      lsp_fallback = true,
    },
    -- Customize formatters
    formatters = {
      shfmt = {
        prepend_args = { "-i", "2" },
      },
      leptosfmt = {
        command = "leptosfmt",
        args = { "--stdin" },
        condition = function(ctx)
          -- only run on rust files that import leptos
          return vim.bo.filetype == "rust" and vim.fn.search("use leptos") > 0
        end,
      },
    },
  },
  init = function()
    -- If you want the formatexpr, here is the place to set it
    vim.o.formatexpr = "v:lua.require'conform'.formatexpr()"
  end,
  log_level = vim.log.levels.DEBUG,
}
