# rnvim
Custom neovim configuration
![image](https://user-images.githubusercontent.com/49358353/206805596-98755426-8e1a-4c0a-bde3-63a87e8af2e0.png)

![image](https://user-images.githubusercontent.com/49358353/206805696-4409f81d-dfa2-4b79-ac68-4a7503d6a12f.png)

![image](https://user-images.githubusercontent.com/49358353/206805883-ceff2862-4e0c-4c98-a9ae-c1e16e9af5af.png)


## Dependencies
- [Ripgrep](https://github.com/BurntSushi/ripgrep) bynary is required just to use Telescope live_grep

### Mason Dependencies
- LSP: typescript-language-server, lua-language-server, pyright, vscode-json-language-server, vue-language-server
- Linters: eslint_d
- Formatters: prettier, slq-formatter, stylua, black

### Octo Dependencies
- [Github CLI](https://cli.github.com/) to active the integration with github

### Test it on a Docker container
```console
docker run -w /root -it --rm alpine:edge sh -uelic '
apk add git nodejs neovim ripgrep alpine-sdk --update
git clone https://github.com/mrroiz/rnvim ~/.config/nvim
nvim'
```
