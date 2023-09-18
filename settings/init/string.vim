"===== 文字、カーソル設定 ====="
set encoding=utf-8
set virtualedit=onemore "カーソルを行末の一つ先まで移動可能にする"
set autoindent "自動インデント"
set expandtab "タブキーを空白に変換"
set smartindent "オートインデント"
set tabstop=4 "インデントをスペース4つ分に設定"
set shiftwidth=4 "自動的に入力されたインデントの空白を4つ分に設定"
set listchars=tab:▸\ ,eol:↲,extends:❯,precedes:❮ "不可視文字の指定"
set whichwrap=b,s,h,l,<,>,[,],~ "行頭、行末で行のカーソル移動を可能にする"
let &t_ti.="\e[5 q" "カーソルの形状を変更"

set cursorline
hi clear CursorLine
hi CursorLineNr term=bold  cterm=NONE ctermfg=228 ctermbg=NONE "カーソルのある行番号をハイライト"
