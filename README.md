# rnvim
Custom neovim configuration

## Dependencies
- [Ripgrep](https://github.com/BurntSushi/ripgrep) bynary is required just to use Telescope live_grep

### Mason Dependencies
- LSP: typescript-language-server, lua-language-server, pyright
- Linters: eslint_d
- Formatters: prettierd

### Octo Dependencies
- [Github CLI](https://cli.github.com/) to active the integration with github

### Test it on a Docker container
```console
docker run -w /root -it --rm alpine:edge sh -uelic '
apk add git nodejs neovim ripgrep alpine-sdk --update
git clone https://github.com/mrroiz/rnvim ~/.config/nvim
nvim'
```
