set nocompatible          " Req for everything to work! VI compatibility is worthless to us!

" the basics
set t_Co=256              " Sets terminal colors to 256!
set mouse=a               " Set mouse on. Enables mouse strolling.
set encoding=utf-8        " Utf-8
syntax enable             " enable syntax highlighting
set background=dark       " Use dark background
let base16colorspace=256  " Access colors present in 256 colorspace
filetype on               " Needs to be set on before turning off to avoid zero exit status errors. Blame the plugins.
filetype off              " Req for vundle to work!

" Vundle - Activate our favorite vim plugin manager, Vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Vundle - Vundle must be able to manage itself! 
Bundle 'gmarik/vundle'

" airline statusline
Bundle 'bling/vim-airline'
Bundle 'bling/vim-bufferline'

" general git plugins
Bundle 'tpope/vim-fugitive'
Bundle 'airblade/vim-gitgutter'

" general language plugins
Bundle 'chrisbra/csv.vim'
Bundle 'csexton/jekyll.vim'
Bundle 'gorodinskiy/vim-coloresque'
Bundle 'jtratner/vim-flavored-markdown'
Bundle 'pangloss/vim-javascript'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'scrooloose/syntastic'
Bundle 'tpope/vim-markdown'
Bundle 'tpope/vim-rails.git'

" general editing plugins
Bundle 'kien/ctrlp.vim'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'tpope/vim-surround'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/nerdtree'

" search and replace
Bundle 'tpope/vim-abolish'

filetype plugin indent on  " Req! Must be placed after all vundle settings and plugins!

" memory management
set history=1000           " History max at 1000
set tabpagemax=50          " Tabs max at 50

" backups and swap filess
set nobackup               " Turn off automatic backups (~filename.ext)
set noswapfile             " Turn off swapfiles (filename.swp)

" login message
set shortmess=atI          " Don't show the intro message when starting Vimi

" cursor movement
set nostartofline          " Don't reset cursor to start of line when moving around

" spacing
set autoindent             " Turn on autoindentation
set copyindent             " Copy previus indentation on autoindenting
set expandtab              " Insert spaces instead of tabs
set softtabstop=2          " Spaces per insert mode tab and backspace
set shiftround             " Keep standard indents
set shiftwidth=2           " Spaces per autoindent
set smarttab               " Insert tabs on start of line based on shiftwidth, not tabstop
set tabstop=8	           " Spaces per real tab

" visual feedback
set cursorline             " Highlight current line
set display+=lastline      " Last line of a window will be displayed instead of @
set hidden                 " Hide buffers instead of closing
set laststatus=2           " Show status line
set nowrap                 " Do Not Wrap Lines
set number                 " Turn on line numbering
set ruler                  " Show ruler
set scrolloff=3            " Show at least 3 lines above and below current line
set showcmd                " Show commmand line
set sidescrolloff=5        " Scrolloff for horizontal
set showmatch              " Show matching parenthesis
set wildmenu               " Tab command line completion

" keep vim honest
set autoread               " Listen for file edits outside of vim

" numbers
set nrformats-=octal       " Numbers with leading zeros should not be considered octal

" searches
set complete-=i            " Don't search every file for completions!
set hlsearch               " Highlight search terms
set incsearch              " Show search matches as typed
set ignorecase             " Ignore case during searches
set smartcase              " Ignore case if search pattern is all lowercase

" key edits
set backspace=indent,eol,start  " Allow backspacing over everything in insert mode
set ttimeout               " Speed up keycodes
set ttimeoutlen=50         " Speed up keycodes

" keyboard shortcuts
let mapleader=","          " Change the mapleader from \ to ,
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
nmap <leader>b :CtrlPBuffer<CR>
nmap <leader>t :CtrlP<CR>
nmap <leader>T :CtrlPClearCache<CR>:CtrlP<CR>
nmap <leader>g :GitGutterToggle<CR>
nmap <leader>G :IndentGuidesToggle<CR>
nmap <leader>n :NERDTreeToggle<CR>
nmap <leader>f :NERDTreeFind<CR>

" Save a file as root (,W)
noremap <leader>W :w !sudo tee % > /dev/null<CR>

" nerdTree - show hidden files in nerdTree
let NERDTreeShowHidden=1

" nerdTree - enable closing vim if nerdTree is the only open window
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" nerdTree - always open nerdTree if no file specified 
autocmd vimenter * if !argc() | NERDTree | endif

" get powerline patched fonts in airline
let g:airline_powerline_fonts = 1
