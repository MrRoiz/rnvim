return {
  {
    'NoahTheDuke/vim-just',
    ft = { 'just' },
  },
  {
    'nvim-treesitter/nvim-treesitter',
    opts = function(_, opts)
      if type(opts.highlight) == 'table' then
        if type(opts.highlight.disable) == 'table' then
          vim.list_extend(opts.highlight.disable, { 'just' })
        end
      end
    end,
  },
}
