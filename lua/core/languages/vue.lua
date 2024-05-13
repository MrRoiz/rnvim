local tsdk = require('config.languages').vue.tsdk

return {
  lsp = {
    server = 'volar',
    server_opts = {
      init_options = {
        typescript = {
          tsdk = tsdk,
        },
      },
    },
  },
  treesitter = 'vue',
  formatter = {
    vue = { 'prettier' },
  },
}
