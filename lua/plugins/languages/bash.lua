return {
  'nvim-treesitter/nvim-treesitter',
  opts = function(_, opts)
    if type(opts.ensure_installed) == 'table' then
      vim.list_extend(opts.ensure_installed, { 'bash' })
    end

    vim.filetype.add({
      pattern = {
        ['.*/waybar/config'] = 'jsonc',
        ['.*/mako/config'] = 'dosini',
        ['.*/kitty/.+%.conf'] = 'bash',
        ['.*/hypr/.+%.conf'] = 'hyprlang',
        ['%.env%.[%w_.-]+'] = 'sh',
      },
    })
  end,
}
