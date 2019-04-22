""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" BASIC SETTINGS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" turn off compatibility with vi
set nocp

" syntax highlighting
syntax on

" turn on line numbers
set nu

" Recursively search path from directory you opened vim in
set path+=**

" autocomplete vim commands
set wildmenu

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

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" PLUGINS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" enable plugins
filetype plugin on

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

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MAPPINGS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader = "-"

" move line up or down
noremap <leader>- ddp
noremap <leader>_ ddkP

" ctrl+u to UPPERCASE word while in insert mode
inoremap <c-u> <esc>hvawUea 

" editing and sourcing .vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" capital H and L to start and end of lines
nnoremap H ^
nnoremap L $
vnoremap
nnoremap <Home> <nop>
nnoremap <End> <nop>

" jk while in insert mode to return to normal mode
inoremap jk <esc>
inoremap <esc> <nop>
vnoremap jk <esc>
vnoremap <esc> <nop>

" no more arrow keys in normal and insert mode
inoremap <Up> <nop>
inoremap <Down> <nop>
inoremap <Left> <nop>
inoremap <Right> <nop>
nnoremap <Up> <nop>
nnoremap <Down> <nop>
nnoremap <Left> <nop>
nnoremap <Right> <nop>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" SPELLCHECK & ABBREVIATIONS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
iabbrev adn and
iabbrev taht that
iabbrev waht what
iabbrev pacakge package
iabbrev @@ contact@gregwood.io
