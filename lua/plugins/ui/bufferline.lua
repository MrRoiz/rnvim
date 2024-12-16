return {
  'akinsho/bufferline.nvim',
  opts = function(_, opts)
    -- opts.options.always_show_bufferline = true

    opts.options.offsets = {
      {
        filetype = 'neo-tree',
        text = 'File Explorer',
        highlight = 'Directory',
        text_align = 'center',
        separator = true,
      },
      {
        filetype = 'DiffviewFiles',
        text = 'Source Control',
        text_align = 'center',
        separator = true,
      },
    }
  end,
}
