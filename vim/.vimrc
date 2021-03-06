set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Bundle 'tpope/vim-afterimage'
" Bundle 'rstacruz/sparkup'
" Bundle 'rodjek/vim-puppet'
" Bundle 'kchmck/vim-coffee-script'
" Bundle 'bbommarito/vim-slim'
" Bundle 'tpope/vim-haml'

Bundle 'gmarik/vundle'
Bundle 'szw/vim-tags'
Bundle 'kien/ctrlp.vim'
Bundle 'git://github.com/groenewege/vim-less.git'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-markdown'
Bundle 'tpope/vim-cucumber'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-speeddating'
Bundle 'tpope/vim-commentary'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'tsaleh/vim-align'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'altercation/vim-colors-solarized'
Bundle 'ervandew/supertab'
Bundle 'git://github.com/scrooloose/nerdtree.git'
Bundle 'git://github.com/Lokaltog/vim-powerline.git'
Bundle 'jpo/vim-railscasts-theme'
Bundle 'elixir-lang/vim-elixir'

filetype plugin indent on

map <C-t> :CommandT<CR>
map <S-t> :CommandTBuffer<CR>

if has("gui_running")
  set background=dark
  set guifont=Inconsolata\ 14
endif

if has("gui_macvim")
  "macmenu &File.New\ Tab key=<nop>
  "macmenu &File.Open\ Tab\.\.\. key=<nop>
  "map <D-t> :CommandT<CR>
  "map <D-T> :CommandTBuffer<CR>
  set guifont=Menlo:h15
endif

nnoremap <silent> <D-t> :CommandT<CR>
nnoremap <silent> <D-T> :CommandTBuffer<CR>

"nnoremap <leader>1 yypVr=
"nnoremap <leader>2 yypVr-

syntax enable
set background=dark

" colorscheme solarized
colorscheme railscasts

" set smartcaseset hlsearch
" set completeopt=menu,preview
" set relativenumber

set hidden
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set autoindent
set smarttab
set ruler
set number
set nowrap
set encoding=utf8
set fileencoding=utf8
set cursorline
set laststatus=2
set showcmd
set showmode
set noerrorbells
set nowrap
set novisualbell
set backspace=indent,eol,start
set autowriteall
set completeopt=longest,menuone,preview
set autoread
set autowrite
set backup
set backupdir=~/.tmp/
set dir=~/.tmp/
set showfulltag
set smarttab
set shiftround
set guioptions-=T
set undofile
set undodir=~/.tmp/
set gdefault
set incsearch
set showmatch
set hlsearch
set wildignore+=*.o,*.obj,.git,tmp/**,build/**,coverage/**

" Fix regexes in search
" nnoremap / /\v
" vnoremap / /\v

" Delete trailing white space when saving
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc

" au BufRead,BufNew *.coffee set ft=coffee
" au BufRead,BufNew *.html.erb set ft=eruby.html
" au BufRead,BufNew *.rb set ft=ruby
" au BufRead,BufNew Vagrantfile set ft=ruby
" au BufRead,BufNew Gemfile set ft=ruby
" au BufRead,BufNew Guardfile set ft=ruby
" au BufRead,BufNew Procfile set ft=ruby

au FocusLost * :wa
" au FocusLost * :CommandTFlush
au BufWrite * :call DeleteTrailingWS()
let g:vim_tags_auto_generate = 1

iab xpry require 'pry'; binding.pry;
iab epry require IEx; IEx.pry;
