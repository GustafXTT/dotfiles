let mapleader = " "
syntax on
syntax enable

set nocompatible
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on
set mouse=a
set ruler
set encoding=utf-8
let &t_ut=''
set laststatus=2
set backspace=indent,eol,start
set autochdir
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
set number
set relativenumber
set cursorline
set showcmd
set t_Co=256
set autoindent
set scrolloff=5
set wildmenu
set hlsearch
set incsearch
set ignorecase
set smartcase
set ai!

noremap <LEADER><CR> :nohlsearch<CR>

if has('nvim')
	lua require('plugins')
	lua require('leap').add_default_mappings()
endif

if exists('g:vscode')
	nnoremap gd <Cmd>call VSCodeNotify('editor.action.revealDefinition')<CR>
	nnoremap gD <Cmd>call VSCodeNotify('editor.action.peekDefinition')<CR>
	nnoremap gi <Cmd>call VSCodeNotify('editor.action.goToImplementation')<CR>
	nnoremap gI <Cmd>call VSCodeNotify('editor.action.peekImplementation')<CR>
	nnoremap gr <Cmd>call VSCodeNotify('editor.action.goToReferences')<CR>
	nnoremap <LEADER>w <Cmd>call VSCodeNotify('workbench.action.files.save')<CR>
	nnoremap <LEADER>q <Cmd>call VSCodeNotify('workbench.action.closeActiveEditor')<CR>
	nnoremap <LEADER>r <Cmd>call VSCodeNotify('editor.action.rename')<CR>
else
	noremap <LEADER>w :w<CR>
	noremap <LEADER>q :q<CR>
endif

