return {
  lsp = {
    server = "pyright",
    server_opts = {
      settings = {
        python = {
          analysis = {
            -- Disabled because of type errors with Django
            typeCheckingMode = "off",
          },
        },
      },
    },
  },
  treesitter = "python",
  formatter = {python="black"},
}
