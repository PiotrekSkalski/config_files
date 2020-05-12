set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'kalekundert/vim-coiled-snake'
Plugin 'Konfekt/FastFold'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'Yggdroot/indentLine'
" Plugin 'ludovicchabant/vim-gutentags'
" Plugin 'christoomey/vim-tmux-navigator'
"Plugin 'majutsushi/tagbar'
Plugin 'vim-python/python-syntax'
Plugin 'cohama/lexima.vim'
Plugin 'elzr/vim-json'
" Plugin 'ncm2/ncm2'
" Plugin 'roxma/nvim-yarp'
" Plugin 'vim-scripts/indentpython.vim'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'davidhalter/jedi-vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
syntax on

" Use mouse
set mouse=a
map <ScrollWheelUp> <C-Y>
map <ScrollWheelDown> <C-E>

" Copy to system clipboard
set clipboard=unnamedplus
" when using with wsl, either setup clip.exe or
" setup an X server that takes care of clipboard
" sharing between WSL and Windows

" Prevent x from overriding what's in the clipboard
noremap x "_x
noremap X "_X

" Syntax highlighting
let g:python_highlight_all = 1
let g:python_highlight_space_errors = 0

" Toogle TagBar
"nmap <F8> :TagbarToggle<CR>

" Enable highlighting in vim-better-whitespace
let g:better_whitespace_enabled=1

" Line numbering
set nu

let mapleader=','
"set cursorline
set hlsearch
set incsearch

"------------Start Python PEP 8 stuff----------------
" Number of spaces that a pre-existing tab is equal to.
au BufRead,BufNewFile *py,*pyw,*.c,*.h set tabstop=4

"spaces for indents
au BufRead,BufNewFile *.py,*pyw set shiftwidth=4
au BufRead,BufNewFile *.py,*.pyw set expandtab
au BufRead,BufNewFile *.py set softtabstop=4

" Use UNIX (\n) line endings.
au BufNewFile *.py,*.pyw,*.c,*.h set fileformat=unix

" Set the default file encoding to UTF-8:
set encoding=utf-8

" Keep indentation level from previous line:
autocmd FileType python set autoindent
autocmd FileType python set smartindent

" make backspaces more powerfull
set backspace=indent,eol,start

set splitbelow
set splitright

"Folding based on indentation:
"autocmd FileType python set foldmethod=indent

"use space to open folds
nnoremap <space> za

" To see the docstring of folded code
let g:SimpylFold_docstring_preview=1

" Open all folds at start
au BufRead * normal zR

" Vertical lines
let g:indentLine_char = '|'

" Highlight 'self'
augroup python
	autocmd!
        autocmd FileType python
			\   syn keyword pythonSelf self
                        \ | highlight def link pythonSelf Special
augroup end

