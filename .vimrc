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
Plugin 'crusoexia/vim-monokai'
Plugin 'vim-airline/vim-airline'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'Yggdroot/indentLine'
" Plugin 'ludovicchabant/vim-gutentags'
" Plugin 'christoomey/vim-tmux-navigator'
Plugin 'majutsushi/tagbar'
Plugin 'vim-python/python-syntax'
Plugin 'cohama/lexima.vim'
Plugin 'elzr/vim-json'
" Plugin 'davidhalter/jedi-vim'
" Plugin 'ncm2/ncm2'
" Plugin 'roxma/nvim-yarp'
" Plugin 'vim-scripts/indentpython.vim'
Plugin 'Valloric/YouCompleteMe'
"

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
syntax on

" Syntax highlighting
let g:python_highlight_all = 1

" For vim-monokai
set background=dark
set t_Co=256
colorscheme monokai
let g:monokai_term_italic = 1
let g:monokai_gui_italic = 1

" Toogle TagBar
nmap <F8> :TagbarToggle<CR>

" Enable highlighting in vim-better-whitespace
let g:better_whitespace_enabled=1

" To see the docstring of folded code
let g:SimpylFold_docstring_preview=1

" Line numbering
set nu

let mapleader=','
set cursorline
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

"YAPF automatically encodes PEP8 if leader-y is pressed
" autocmd BufWritePre *.py 0,$!yapf
autocmd FileType python nnoremap <leader>y :0,$!yapf<Cr><C-o>
au BufNewFile *.py 0r ~/.vim/skeleton.py

"Folding based on indentation:
" autocmd FileType python set foldmethod=indent
"use space to open folds

nnoremap <space> za

" nnoremap <C-J> <C-W><C-J>
" nnoremap <C-K> <C-W><C-K>
" nnoremap <C-L> <C-W><C-L>
" nnoremap <C-H> <C-W><C-H>


" Vertical lines

let g:indentLine_char = '|'

" Highlight 'self'
augroup python
	autocmd!
        autocmd FileType python
			\   syn keyword pythonSelf self
                        \ | highlight def link pythonSelf Special
augroup end

