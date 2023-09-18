call plug#begin()
    Plug 'morhetz/gruvbox'
    Plug 'preservim/nerdtree'
    Plug 'Xuyuanp/nerdtree-git-plugin'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'vim-denops/denops.vim'
    Plug 'Shougo/ddc.vim'
    Plug 'mattn/vim-lsp-settings'
    Plug 'Shougo/pum.vim'                         " ポップアップウィンドウを表示するプラグイン
    Plug 'Shougo/ddc-around'                      " カーソル周辺の既出単語を補完するsource
    Plug 'LumaKernel/ddc-file'                    " ファイル名を補完するsource
    Plug 'Shougo/ddc-matcher_head'                " 入力中の単語を補完の対象にするfilter
    Plug 'Shougo/ddc-sorter_rank'                 " 補完候補を適切にソートするfilter
    Plug 'Shougo/ddc-converter_remove_overlap'    " 補完候補の重複を防ぐためのfilter
    Plug 'prabirshrestha/vim-lsp'
    Plug 'shun/ddc-vim-lsp'
    Plug 'Shougo/ddc-ui-native'
call plug#end()
