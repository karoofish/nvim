return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        rust_analyzer = {
          enabled = false,
          opts = {
            mason = false,
          },
        },
      },
    },
  },
}
