return {
  lsp = {
    {
      server = "tsserver",
      server_opts = {
        settings = {
          diagnostics = {
            ignoredCodes = {
              -- https://github.com/microsoft/TypeScript/blob/main/src/compiler/diagnosticMessages.json
              -- TODO: Find a way to separate this option to apply it only for Javascript
              7016, -- ts7016: No declaration file
            },
          },
        },
      },
    },
    {
      -- TODO: Find a way to attach this lsp only when the project has tailwind
      server = "tailwindcss",
    },
    {
      server = "eslint"
    }
  },
  treesitter = { "tsx", "javascript", "typescript", "jsdoc", "prisma" },
  formatter = "prettierd",
}
