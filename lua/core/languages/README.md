## How to add/modify languages
You just need to create a new dedicated file for the language you need and require it in the `init.lua` file
in this directory (like a barrel export)

### Content of each dedicated language file
In each file you'd need to return a table with any of these fields `lsp`, `treesitter`, `formatter` or `linter`

- `lsp`: it can be an object or an array of objects where it can has two keys, where there are two
different type of objects 
    - 1. `lsp_config` type
        - `server` <b>[required]</b> is the lsp that will be automatically installed and configured via `lsp_config`
        - `server_opts` <b>[optional]</b> is all the payload that will be appended in these
        `lsp_config.{language}.setup(payload)` method

    - 2. `Lazy` plugin abstraction
        - `plugin` <b>[required]</b> is an object similar to a plugin declaration in `Lazy`, which will be automatically installed in your config
        - `server` <b>[optional]</b> is the lsp that will be automatically installed but it WON'T be configured in `lsp_config`

- `treesitter`: This field can be directly an string or an array of strings of the treesitter parser that will be
automatically installed

- `formatter`: This field can be directly an string or an array of strings of the formatters that will be
automatically installed

- `linter`: This field can be directly an string or an array of strings of the linters that will be
automatically installed
