FROM alpine:edge

ENV HOME=/root
WORKDIR $HOME/.config/nvim
COPY . .

RUN apk add npm neovim ripgrep alpine-sdk sed g++ --update


