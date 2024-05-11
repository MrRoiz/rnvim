local language_utils = require("core.utils.language")

return {
  "stevearc/conform.nvim",
  dependencies = {
    "williamboman/mason.nvim",
    "zapling/mason-conform.nvim"
  },
  opts = {
    formatters_by_ft = language_utils.parse_formatters_conform(),
  },
  config = function (_, opts)
    vim.api.nvim_create_user_command("Format", function(args)
      local range = nil
      if args.count ~= -1 then
        local end_line = vim.api.nvim_buf_get_lines(0, args.line2 - 1, args.line2, true)[1]
        range = {
          start = { args.line1, 0 },
          ["end"] = { args.line2, end_line:len() },
        }
      end
      require("conform").format({ async = true, lsp_fallback = true, range = range })
    end, { range = true })

    require('conform').setup(opts)
    require("mason-conform").setup()
  end,
}
