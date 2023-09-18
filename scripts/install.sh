#!/bin/bash

set -eu

if [ ! -d vim-settings ]; then
  git clone https://github.com/nomutin/vim-settings.git
fi

cd vim-settings
make install
make deploy
