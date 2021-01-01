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
set wildignore+=*.bmp,*.gif,*.ico,*.jpg,*.png
set wildignore+=*.pdf,*.psd
set wildignore+=*.dll
set wildignore+=node_modules/**,bin/**,obj/**,coverage/**,.git/**,_dist/**

" incremental search
set is

" search highlighting
" set hlsearch

" tabs to spaces
set tabstop=4 expandtab
set shiftwidth=4

" show matching parentheses
set showmatch

" open netrw tabs to the right
" let g:netrw_altv=1

" powershell as default shell
" set shell=powershell.exe

" backspace over newlines and tabs
set bs=2

" indents match the line above
set autoindent

" reduce update delay for gitgutter
set updatetime=100

set ruler


" allow jumping to matching html tags with %
" runtime macros/matchit.vim

" close netrw buffers rather than hide
" autocmd FileType netrw setl bufhidden=delete

" open NERDTree on start, but not when invoked by git
let g:NERDTreeWinSize = 30 
autocmd VimEnter * if &filetype !=# 'gitcommit' | NERDTree | endif
" If current file is a directory open NERDTree
" autocmd VimEnter if isdirectory(@%) | NERDTree | endif

" autocmd VimEnter * NERDTree

autocmd BufRead,BufNewFile *.targets set syntax=xml

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" PLUGINS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" enable pathogen
execute pathogen#infect()

" enable plugins
" filetype plugin on

" ctrl+P
" let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist|_dist|coverage)|(\.(swp|ico|git|svn))$'

" setup ack.vim to use ag for searching instead
" let g:ackprg = 'ag --nogroup --nocolor --column'

" syntastic
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0
"
" let g:syntastic_javascript_checkers = []
" let g:tsuquyomi_disable_quickfix = 1
" let g:syntastic_typescript_checkers = ["tsuquyomi"]
" let g:syntastic_json_checkers = ["jsonlint"]

" omnisharp-vim
" filetype indent plugin on
" let g:OmniSharp_server_stdio = 1
" let g:OmniSharp_server_path = 'D:\Vim\Omnisharp-Roslyn\omnisharp-win-x64\OmniSharp.exe'
" let g:OmniSharp_selector_ui = 'ctrlp'  
" 
" Navigate up and down by method/property/field
" autocmd FileType cs nnoremap <buffer> <C-k> :OmniSharpNavigateUp<CR>
" autocmd FileType cs nnoremap <buffer> <C-j> :OmniSharpNavigateDown<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MAPPINGS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader = "-"

" ctrl+u to UPPERCASE word while in insert mode
inoremap <c-u> <esc>hvawUea 

" editing and sourcing .vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" capital H and L to start and end of lines
nnoremap H ^
nnoremap L $
nnoremap <Home> <nop>
nnoremap <End> <nop>
vnoremap H ^
vnoremap L $

" fd while in insert, visual, command mode to return to normal mode
inoremap fd <esc>
inoremap <esc> <nop>
vnoremap fd <esc>
vnoremap <esc> <nop>
cnoremap fd <C-c>
cnoremap <esc> <nop>

" no more arrow keys in normal and insert mode
" inoremap <Up> <nop>
" inoremap <Down> <nop>
" inoremap <Left> <nop>
" inoremap <Right> <nop>
nnoremap <Up> <nop>
nnoremap <Down> <nop>
nnoremap <Left> <nop>
nnoremap <Right> <nop>

" wrap word in ' or "
nnoremap <leader>' ciw''<esc>P
nnoremap <leader>" ciw""<esc>P

" Ctrl+l clears the screen and also search highlighting
nnoremap <C-l> :noh<CR><C-l>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ZETTELKASTEN
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" ignore case on searches (/, ts)
set ignorecase

" generate ctags silently
nnoremap <leader>tt :silent !ctags -R . <CR>:redraw!<CR>

" search tags using CtrlP
nnoremap <leader>st :CtrlPTag<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" SPELLCHECK & ABBREVIATIONS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
iabbrev adn and
iabbrev taht that
iabbrev waht what
iabbrev pacakge package
iabbrev Pacakge Package
iabbrev @@ contact@gregwood.io
iabbrev fucntion function
