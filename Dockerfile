FROM alpine

ENV HOME=/root
WORKDIR $HOME/.config/nvim
COPY . .

RUN apk add bash curl python3 npm neovim ripgrep alpine-sdk sed g++ --update
