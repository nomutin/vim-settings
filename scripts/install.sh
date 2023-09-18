#!/bin/bash

set -eu

if [ ! -d vim-settings ]; then
  git clone https://github.com/nomutin/vim-settings.git
fi

cd vim-settings
make init
make deploy

git clone https://github.com/github/copilot.vim.git \
  ~/.vim/pack/github/start/copilot.vim
