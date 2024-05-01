<h1 align="center">rnvim</h1>

### A plug and play neovim config ⚡️
![image](https://user-images.githubusercontent.com/49358353/236326296-3be55b89-c101-4352-81cc-b40b4fd10d19.png)

![image](https://user-images.githubusercontent.com/49358353/236327291-83c4225f-723d-4514-a4b7-8ccf11965da6.png)

![image](https://user-images.githubusercontent.com/49358353/236326939-e81937f8-53f7-4f2b-84d5-56d3ac9f427b.png)

![image](https://user-images.githubusercontent.com/49358353/236326512-3b18e812-af0c-4ed2-a0ba-207ca798f335.png)


## Fast Startup ⚡️
Using Lazy as package manager \
![image](https://user-images.githubusercontent.com/49358353/232500636-074cab3f-676a-4b25-b377-29faf8d10ba1.png)


## Dependencies 🧩
- [Neovim](https://github.com/neovim/neovim) v0.9.1 tested
- [Ripgrep](https://github.com/BurntSushi/ripgrep) bynary is required just to use [Telescope](https://github.com/nvim-pack/nvim-spectre) live_grep and [nvim-spectre](https://github.com/nvim-pack/nvim-spectre)
- [Sed](https://www.gnu.org/software/sed/) binary is required to use [nvim-spectre](https://github.com/nvim-pack/nvim-spectre)
- A C compiler is required for Tresitter (tested with [g++](https://gcc.gnu.org/)) - [Check this out if you're a Windows user](https://github.com/nvim-treesitter/nvim-treesitter/wiki/Windows-support)
- A [Nerd Font](https://www.nerdfonts.com/) is required on your preferred terminal emulator to handle icons
- [Node with NPM](https://nodejs.org/es) is required to install some lsp's
- If you're using linux a [Clipboard tool](https://neovim.io/doc/user/provider.html#provider-clipboard) is required, tested with [Xsel](https://github.com/kfish/xsel)

### Octo Dependencies 🧩
- [Github CLI](https://cli.github.com/) to active the integration with github

## Configuration 🔧

###### Adding a language (formatter, lsp, treesitter)
In `lua/core/languages/init.lua` you can add any language you need, and that's it rnvim will automatically install everything for you the next time you open your editor.

###### Custom config directory
In `lua/config/` you'll have free access to some basic config for your editor (WIP improvements are comming)

###### Vue development issues?
If you have some issues using [Volar](https://github.com/vuejs/language-tools) you may want to add a tsdk path for vue in `lua/config/languages.lua` (see [volar lspconfig](https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#volar))

## Try it out on a Docker container 🐋
```console
docker run -w /root -it --rm alpine:edge sh -uelic '
apk add bash curl python3 npm neovim ripgrep alpine-sdk sed g++ --update
git clone https://github.com/mrroiz/rnvim ~/.config/nvim
nvim'
```
