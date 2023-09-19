nnoremap <leader>n :NERDTreeFocus<CR>
let g:NERDTreeShowHidden=1
autocmd VimEnter * if !argc() | NERDTree | endif " open NERDTree if no files are specified
