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
  echo "export DENO_INSTALL=\"$HOME/.deno\"" >>~/.bashrc
  echo "export PATH=\"$DENO_INSTALL/bin:$PATH\"" >>~/.bashrc
  # shellcheck disable=SC1090
  source ~/.bashrc
fi
