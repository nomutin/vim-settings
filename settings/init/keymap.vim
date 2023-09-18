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
