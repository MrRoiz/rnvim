return {
  'folke/noice.nvim',
  opts = {
    lsp = {
      hover = {
        -- When working with multiple lsp it shows bad
        silent = true,
      },
      signature = {
        -- Cool feature but disabled since when working with slow lsp's it gets kinda annoying
        auto_open = {
          enabled = false,
        },
      },
    },
    presets = {
      bottom_search = false,
      command_palette = true,
      long_message_to_split = true,
      inc_rename = true,
      lsp_doc_border = true,
    },
  },
}
