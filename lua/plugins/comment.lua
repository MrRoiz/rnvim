return {
  {
    'JoosepAlviste/nvim-ts-context-commentstring',
    lazy = true,
  },
  {
    'numToStr/Comment.nvim',
    dependencies = { 'JoosepAlviste/nvim-ts-context-commentstring' },
    lazy = false,
    config = function(plugin, opts)
      opts['pre_hook'] = require('ts_context_commentstring.integrations.comment_nvim').create_pre_hook()
      require('Comment').setup(opts)
    end,
  },
}
