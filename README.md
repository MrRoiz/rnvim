<h1 align="center">rnvim</h1>

### A plug and play neovim config based in LazyVim ⚡️

![2024-08-15_10-22](https://github.com/user-attachments/assets/1c9fc08d-b7fa-4c35-a1e7-1e50c6e1978b)

![2024-08-15_10-21](https://github.com/user-attachments/assets/aa5bc521-409d-4b04-b15f-963cd086880c)

![2024-08-15_10-22_1](https://github.com/user-attachments/assets/c83a804f-4165-421e-a8b2-13601b9e54e7)

## Dependencies 🧩

- [Neovim](https://github.com/neovim/neovim) v0.11.0 tested
- [Ripgrep](https://github.com/BurntSushi/ripgrep) bynary is required to use [grug-far](https://github.com/MagicDuck/grug-far.nvim)
- A C compiler is required for Tresitter (tested with [g++](https://gcc.gnu.org/)) - [Check this out if you're a Windows user](https://github.com/nvim-treesitter/nvim-treesitter/wiki/Windows-support)
- A [Nerd Font](https://www.nerdfonts.com/) is required on your preferred terminal emulator to handle icons
- [Node with NPM](https://nodejs.org/es) is required to install some LSP's
- If you're using linux a [Clipboard tool](https://neovim.io/doc/user/provider.html#provider-clipboard) is required, tested with [Xsel](https://github.com/kfish/xsel)
  - If you're using hyprland use [wl-clipboard](https://github.com/bugaevc/wl-clipboard)
- [fzf](https://github.com/junegunn/fzf) binary is required to use [fzf-lua](https://github.com/ibhagwan/fzf-lua)
- If you're going to use [Blink](https://github.com/Saghen/blink.cmp) on its main branch, you'll need [Rust](https://www.rust-lang.org/learn/get-started) toolchain to build the plugin
