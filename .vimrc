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

" show matching parentheses
set showmatch

" open netrw tabs to the right
let g:netrw_altv=1

" powershell as default shell
set shell=powershell.exe

" backspace over newlines and tabs
set bs=2

" indents match the line above
set autoindent

" close netrw buffers rather than hide
autocmd FileType netrw setl bufhidden=delete

"" Setup for vim-plug
"" https://github.com/junegunn/vim-plug/tree/autocmd
"call plug#begin()
"" fugitive, a git wrapper for vim
"Plug 'https://github.com/tpope/vim-fugitive.git'
"" omnisharp, c# support in vim
"Plug 'OmniSharp/omnisharp-vim'
"" typescript-vim
"Plug 'https://github.com/leafgarland/typescript-vim.git'
"call plug#end()

" ctrl+P
set runtimepath^=~/.vim/bundle/ctrlp.vim

" set leader
let mapleader = "-"

" mapping for move line up or down
noremap <leader>- ddp
noremap <leader>_ ddkP

" mapping for ctrl+u to UPPERCASE word while in insert mode
inoremap <c-u> <esc>hvawUea 
