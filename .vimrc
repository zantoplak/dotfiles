set nocompatible              " be iMproved, required
filetype off                  " required
set encoding=UTF-8

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

Plugin 'arcticicestudio/nord-vim'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'mhinz/vim-startify'
Plugin 'scrooloose/nerdtree'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
"Plugin 'vim-pandoc/vim-pandoc'
"Plugin 'vim-pandoc/vim-pandoc-syntax'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'ryanoasis/vim-devicons'

"
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"let g:pandoc#syntax#conceal#use = 0
"let g:pandoc#folding#fdc = 0
"let g:pandoc#folding#level = 999
"let g:pandoc#modules#disabled = ["formatting"]
"let g:pandoc#modules#disabled = ["folding"]
"let g:pandoc#biblio#use_bibtool = 1
"let g:pandoc#completion#bib#mode = 'citeproc'
"let g:pandoc#biblio#bibs = ["~/Desktop/Pandoc_test/Zotero_WholeLib_updating.bib"]

" Vim_markdown folding titles disabled
let g:vim_markdown_folding_disabled = 1

set number relativenumber
syntax on
set path+=**
set wildmenu
set mouse=a
set hlsearch
set laststatus=2
set incsearch
set splitbelow splitright
set clipboard+=unnamedplus
set splitbelow
set splitright

hi StatusLine ctermbg=254 ctermfg=24
hi StatusLineNC ctermbg=24 ctermfg=254

"hi StatusLineTerm ctermbg=24 ctermfg=254 guibg=#004f87 guifg=#e4e4e4
"hi StatusLineTermNC ctermbg=252 ctermfg=238 guibg=#d0d0d0 guifg=#444444

hi htmlH1 ctermfg=1
hi htmlH2 ctermfg=172
hi htmlH3 ctermfg=11
hi htmlH4 ctermfg=10
hi htmlH5 ctermfg=5

" Remaps

" Leader key to space
nnoremap <SPACE> <Nop>
let mapleader=" "

" Remap NerdTree plugin
nnoremap <leader>n :NERDTreeFocus<CR>

" Remap window moving
nnoremap <C-h> <C-w><C-h>
nnoremap <C-j> <C-w><C-j> 
nnoremap <C-k> <C-w><C-k>
nnoremap <C-l> <C-w><C-l>

" Split size adjusting easier
noremap <silent> <C-Left> :vertical resize -3<CR>
noremap <silent> <C-Right> :vertical resize +3<CR>
noremap <silent> <C-Up> :resize -3<CR>
noremap <silent> <C-Down> :resize +3<CR>

" FZF Files search
nnoremap <leader>f :Files<CR>

