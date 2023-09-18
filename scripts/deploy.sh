#!/bin/bash

set -eu

ln -sf "$HOME"/vim-settings/settings/.vimrc "$HOME"/.vimrc

VIM_DIR=~/".vim"
if [ ! -d $VIM_DIR ]; then
  mkdir $VIM_DIR
fi
ln -sf "$HOME"/vim-settings/settings/init "$HOME"/.vim/init
ln -sf "$HOME"/vim-settings/settings/pluginconfig "$HOME"/.vim/pluginconfig
