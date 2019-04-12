" turn off compatibility with vi
set nocp

" enable plugins
filetype plugin on

" syntax highlighting
syntax on

" Recursively search path from directory you opened vim in
set path+=**

" autocomplete vim commands
set wildmenu

" turn on line numbers
set nu

" incremental search
set is

" search highlighting
set hlsearch

" tabs to spaces
set tabstop=4 expandtab

" backspace over newlines
set bs=2

" open netrw tabs to the right
let g:netrw_altv=1

" powershell as default shell
set shell=powershell.exe

" close netrw buffers rather than hide
autocmd FileType netrw setl bufhidden=delete

" Setup for vim-plug
" https://github.com/junegunn/vim-plug/tree/autocmd
call plug#begin()
" fugitive, a git wrapper for vim
Plug 'https://github.com/tpope/vim-fugitive.git'
" omnisharp, c# support in vim
Plug 'OmniSharp/omnisharp-vim'
" typescript-vim
Plug 'https://github.com/leafgarland/typescript-vim.git'
call plug#end()

