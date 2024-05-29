return {
  'nvim-treesitter/nvim-treesitter',
  opts = function(_, opts)
    if type(opts.ensure_installed) == 'table' then
      vim.list_extend(opts.ensure_installed, { 'json', 'json5', 'jsonc' })
    end

    vim.filetype.add({
      filename = {
        ['.commitlintrc'] = 'json',
        ['.czrc'] = 'json',
        ['.syncpackrc'] = 'json',
        ['.releaserc'] = 'json',
      },
    })
  end,
}
