set nocompatible

" UI Config
syntax on          " Turn on syntax highlighting
set number         " show line numbers
set relativenumber " show relative numbering
set laststatus=2   " show the status line at the bottom
set splitbelow     " Open new vertical split bottom
set splitright     " Open new horizontal split right
set shortmess+=I   " Disable the default Vim startup message
set noerrorbells visualbell t_vb= " Disable audible bell because it's annoying.
set mouse+=a       " Enable mouse support

" The backspace key has slightly unintuitive behavior by default. For example,
" by default, you can't backspace before the insertion point set with 'i'.
" This configuration makes backspace behave more reasonably, in that you can
" backspace over anything.
set backspace=indent,eol,start

" Allow hidden buffers with unsaved changes.
set hidden 

" This setting makes search case-insensitive when all characters in the string
" being searched are lowercase. However, the search becomes case-sensitive if
" it contains any capital letters.
set ignorecase
set smartcase

" Enable searching as you type, rather than waiting till you press enter.
set incsearch

" Unbind some useless/annoying default key bindings.
nmap Q <Nop> " 'Q' in normal mode enters Ex mode. You almost never want this.
map <C-a> <Nop> " Unbind for TMUX 

" Load all plugins now.
" Plugins need to be added to runtimepath before helptags can be generated.
packloadall
" Load all of the helptags now, after plugins have been loaded.
" All messages and errors will be ignored.
silent! helptags ALL

" Startup NERDTree when vim starts
autocmd vimenter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Spaces & Tabs
set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set expandtab       " tabs are spaces, mainly because of pythoni


