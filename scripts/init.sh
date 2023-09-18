#!/bin/bash

set -eu

# vim-plugをインストール
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# ddc.vimのためにdenoをインストール
curl -fsSL https://deno.land/x/install/install.sh | sh
