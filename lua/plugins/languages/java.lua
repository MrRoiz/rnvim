return {
  'mfussenegger/nvim-jdtls',
  opts = function(_, opts)
    -- Disable inlay
    opts.settings.java.inlayHints.parameterNames.enabled = 'none'
  end,
}
