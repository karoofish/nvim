return {
  "mrcjkb/rustaceanvim",
  opts = {
    server = {
      default_settings = {
        cargo = {
          allFeatures = true,
          loadOutDirsFromCheck = true,
          runBuildScripts = true,
          autoreload = true,
        },
        checkOnSave = {
          allFeatures = true,
          command = "clippy", --"check",
          extraArgs = { "--no-deps" },
        },
        -- rustfmt = {
        --   overrideCommand = { "leptosfmt", "--stdin", "--rustfmt" },
        -- },
        procMacro = {
          enable = true,
          ignored = {
            -- ["leptos_macro"] = { "component" },
            ["leptos_macro"] = { "server" },
            ["async-trait"] = { "async_trait" },
            ["napi-derive"] = { "napi" },
            ["async-recursion"] = { "async_recursion" },
          },
        },
        -- rust-analyzer.callInfo.full = true,
        -- rust-analyzer.lens.enable = true,
        -- -- Enable inlay hints
        -- rust-analyzer.inlayHints.enable = true,
        -- rust-analyzer.inlayHints.typeHints = true,
        -- rust-analyzer.inlayHints.parameterHints = true,
        -- -- Enable CodeLens and its various sub things
        -- rust-analyzer.lens.references = true,
        -- rust-analyzer.lens.implementations = true,
        -- rust-analyzer.lens.enumVariantReferences = true,
        -- rust-analyzer.lens.methodReferences = true,
        -- -- Reload rust-analyzer if the Cargo.toml/Cargo.lock file changes
        -- rust-analyzer.cargo.autoreload = true,
        -- -- Hover Actions!
        -- rust-analyzer.hoverActions.enable = true
      },
    },
  },
}
