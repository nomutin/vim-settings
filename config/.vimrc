"=====Vim-Plug====="
call plug#begin()
    Plug 'preservim/nerdtree'
    Plug 'Xuyuanp/nerdtree-git-plugin'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'morhetz/gruvbox'
call plug#end()

"=====NERDTree設定====="
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-e> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
let g:NERDTreeShowHidden=1

"=====vim-airline設定====="
let g:airline#extensions#tabline#enabled = 1
nmap <C-,> <Plug>AirlineSelectPrevTab
nmap <C-.> <Plug>AirlineSelectNextTab
let g:airline_theme="gruvbox"

"===== 表示設定 ====="
set number "行番号の表示"
set title "編集中ファイル名の表示"
set showmatch "括弧入力時に対応する括弧を示す"
set list "タブ、空白、改行を可視化"
set ruler "カーソル位置を表示"
set relativenumber

"全角スペースのハイライト表示"
"ref: http://code-life.net/?p=2704"
function! ZenkakuSpace()
    highlight ZenkakuSpace cterm=reverse ctermfg=DarkMagenta gui=reverse guifg=DarkMagenta
endfunction
if has('syntax')
    augroup ZenkakuSpace
        autocmd!
        autocmd ColorScheme       * call ZenkakuSpace()
        autocmd VimEnter,WinEnter * match ZenkakuSpace /　/
    augroup END
call ZenkakuSpace()
endif

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

"===== 検索設定 ====="
set ignorecase "大文字、小文字の区別をしない"
set smartcase "大文字が含まれている場合は区別する"
set wrapscan "検索時に最後まで行ったら最初に戻る"
set hlsearch "検索した文字を強調"
set incsearch "インクリメンタルサーチを有効にする"

"===== マウス設定 ====="
set mouse=a  "全モードでマウスを有効化"
set ttymouse=xterm2

"===== キー入力 ====="
inoremap <C-j> <Down> "入力モード時のカーソル移動"
inoremap <C-k> <Up>
inoremap <C-h> <Left>
inoremap <C-l> <Right>

inoremap <silent> jj <Esc> "jjキーでノーマルモード"
inoremap <silent> っj <Esc>
inoremap <C-x> <C-h>
noremap <S-h> ^
noremap <S-l> $
nnoremap <CR> A<CR><ESC>
nnoremap == gg=G''
nnoremap <C-c><C-c> : <C-u>nohlsearch<cr><Esc>
set backspace=indent,eol,start
set wildmenu        "コマンドラインモードでTABキーによる補完を有効化"
set wildchar=<tab>  "コマンド補完を開始するキー"

"=====ファイル出力無効化====="
set noswapfile
set nobackup
set noundofile

"=====色関係====="
syntax enable "ハイライトを有効化"
syntax on     "ハイライトを有効化"
colorscheme gruvbox
set t_Co=256
