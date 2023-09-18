#!/bin/bash

set -eu

# vim-plugをインストール
VIM_PLUG_PATH=~/.vim/autoload/plug.vim
if [ ! -f $VIM_PLUG_PATH ]; then
  curl -fLo $VIM_PLUG_PATH --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

# ddc.vimのためにdenoをインストール
if ! command -v deno &>/dev/null; then
  curl -fsSL https://deno.land/x/install/install.sh | sh
fi
