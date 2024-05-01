return {
  lsp = {
    server = "lua_ls",
    server_opts = {
      settings = {
        Lua = {
          diagnostics = {
            globals = { "vim" }
          }
        }
      }
    }
  },
  treesitter = "lua",
  formatter = "stylua"
}
