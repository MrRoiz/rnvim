# rnvim
Custom neovim configuration \
![image](https://user-images.githubusercontent.com/49358353/232499713-bf277724-477e-4a44-9523-50032e642bc2.png)

![image](https://user-images.githubusercontent.com/49358353/206805596-98755426-8e1a-4c0a-bde3-63a87e8af2e0.png)

![image](https://user-images.githubusercontent.com/49358353/206805696-4409f81d-dfa2-4b79-ac68-4a7503d6a12f.png)

![image](https://user-images.githubusercontent.com/49358353/206805883-ceff2862-4e0c-4c98-a9ae-c1e16e9af5af.png)

## Fast Startup
Using Lazy as package manager \
![image](https://user-images.githubusercontent.com/49358353/232500636-074cab3f-676a-4b25-b377-29faf8d10ba1.png)


## Dependencies
- Neovim > v0.7
- [Ripgrep](https://github.com/BurntSushi/ripgrep) bynary is required just to use Telescope live_grep
- A C compiler is required for Tresitter (tested with g++) [Check this out if you're a Windows user](https://github.com/nvim-treesitter/nvim-treesitter/wiki/Windows-support)
- A [Nerd Font](https://www.nerdfonts.com/) is required on your preferred terminal emulator to handle icons
- [Node with NPM](https://nodejs.org/es) is required to install some lsp's

### Mason Dependencies
- LSP: Auto installed with [mason-lspconfig](https://github.com/williamboman/mason-lspconfig.nvim)
- Linters: eslint_d
- Formatters: prettier, slq-formatter, stylua, black

### Octo Dependencies
- [Github CLI](https://cli.github.com/) to active the integration with github

### Test it on a Docker container
```console
docker run -w /root -it --rm alpine:edge sh -uelic '
apk add git npm neovim ripgrep alpine-sdk --update
git clone https://github.com/mrroiz/rnvim ~/.config/nvim
nvim'
```
