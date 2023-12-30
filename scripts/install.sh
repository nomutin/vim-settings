#!/bin/bash

set -eu

if [ ! -d ~/.vim ]; then
  git clone https://github.com/nomutin/vim-settings.git .vim
fi

make init
make deploy

git clone https://github.com/github/copilot.vim.git \
  ~/.vim/pack/github/start/copilot.vim
