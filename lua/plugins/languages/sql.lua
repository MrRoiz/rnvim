return {
  {
    'nvim-treesitter/nvim-treesitter',
    opts = function(_, opts)
      if type(opts.ensure_installed) == 'table' then
        vim.list_extend(opts.ensure_installed, { 'sql' })
      end
    end,
  },
  {
    'williamboman/mason.nvim',
    opts = function(_, opts)
      table.insert(opts.ensure_installed, 'sql-formatter')
    end,
  },
  {
    'stevearc/conform.nvim',
    opts = function(_, opts)
      opts.formatters_by_ft = vim.tbl_extend('error', opts.formatters_by_ft, {
        ['sql'] = { 'sql_formatter' },
      })
    end,
  },
}
