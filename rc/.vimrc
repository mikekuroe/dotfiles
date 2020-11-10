"" Note: Skip initialization for vim-tiny or vim-small1
if 0 | endif

if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!

" statusline
NeoBundle 'itchyny/lightline.vim'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'airblade/vim-gitgutter'
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head'
      \ },
      \ }
highlight SignColumn ctermbg=None
highlight GitGutterAdd ctermbg=None
highlight GitGutter ctermbg=None

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck


" my config
set incsearch

nnoremap <C-k> :n<CR>
nnoremap <C-j> :prev<CR>

" need 4 custom
set laststatus=2 

" 分割
nnoremap <silent> <C-x>1 :only<CR>
nnoremap <silent> <C-x>2 :sp<CR>
nnoremap <silent> <C-x>3 :vsp<CR>
" 分割移動
nnoremap <C-w>h sh
nnoremap <C-w>j sj
nnoremap <C-w>k sk
nnoremap <C-w>l sl

" save cursor
augroup vimrcEx
  au BufRead * if line("'\"") > 0 && line("'\"") <= line("$") |
  \ exe "normal g`\"" | endif
augroup END

set cursorline

" use mouse option
set mouse=v

" syntax
syntax enable

" tips config
" :v/N/d 抽出
" :g/N/d 除外
" :se enc?
" :e enc++=utf-8
