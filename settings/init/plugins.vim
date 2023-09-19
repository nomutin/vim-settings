call plug#begin()
    " 全体系
    Plug 'preservim/nerdtree'                         " ファイルツリー
    Plug 'nathanaelkane/vim-indent-guides'            " インデントを可視化
    Plug 'tpope/vim-commentary'                       " コメントアウトを楽に
    Plug 'ctrlpvim/ctrlp.vim'                         " ctrl+p検索
    Plug 'higashi000/dps-kakkonan'                    " 対応する括弧を表示
    Plug 'yuttie/comfortable-motion.vim'              " スクロールを滑らかに
    Plug 'simeji/winresizer'                          " ウィンドウサイズを変更

    " 見た目系
    Plug 'ryanoasis/vim-devicons'                     " nerdtreeのアイコン
    Plug 'morhetz/gruvbox'                            " 良い感じのカラーマップ
    Plug 'vim-airline/vim-airline'                    " ステータスバーをかっこよくする
    Plug 'vim-airline/vim-airline-themes'             " vim-airlineの色を変更

    " git系
    Plug 'Xuyuanp/nerdtree-git-plugin'                " nerdtreeにgitのstatusを表示
    Plug 'airblade/vim-gitgutter'                     " ファイルにgit差分を表示
    Plug 'tpope/vim-fugitive'                         " vim上でgit操作

    " 言語系
    Plug 'kannokanno/previm'                          " markdownのプレビュー

    " 自動補完系
    Plug 'vim-denops/denops.vim'                      " denoのvimエコシステム
    Plug 'Shougo/ddc.vim'                             " 自動補完
    Plug 'mattn/vim-lsp-settings'                     " LSPのインストール・検索を楽に
    Plug 'Shougo/pum.vim'
    Plug 'Shougo/ddc-around'
    Plug 'LumaKernel/ddc-file'
    Plug 'Shougo/ddc-matcher_head'
    Plug 'Shougo/ddc-sorter_rank'
    Plug 'Shougo/ddc-converter_remove_overlap'
    Plug 'prabirshrestha/vim-lsp'
    Plug 'shun/ddc-vim-lsp'
    Plug 'Shougo/ddc-ui-native'

call plug#end()
