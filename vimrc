set nocompatible          " Req for everything to work! (assumed if .vimrc exists at $HOME)

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

" show buffer numbers in statusline. works with airline
Bundle 'bling/vim-bufferline'

" a Git wrapper
Bundle 'tpope/vim-fugitive'

" A Vim plugin which shows a git diff in the gutter (sign column) and stages/reverts hunks.
Bundle 'airblade/vim-gitgutter'

" A Filetype plugin for csv files
Bundle 'chrisbra/csv.vim'

" css/less/sass/html color preview for vim
Bundle 'gorodinskiy/vim-coloresque'

" Add-on to Tim Pope's markdown.vim to highlight using Github Flavored Markdown.  
Bundle 'jtratner/vim-flavored-markdown'

" Vastly improved Javascript indentation and syntax support in Vim. 
Bundle 'pangloss/vim-javascript'

" Vim Markdown runtime files
Bundle 'tpope/vim-markdown'

" Ruby on Rails power tools
Bundle 'tpope/vim-rails.git'

" Fuzzy file, buffer, mru, tag, etc finder.
Bundle 'kien/ctrlp.vim'

" A Vim plugin for visually displaying indent levels in code
Bundle 'nathanaelkane/vim-indent-guides'

" quoting/parenthesizing made simple
Bundle 'tpope/vim-surround'

" Vim plugin for commenting
Bundle 'scrooloose/nerdcommenter'

" A tree explorer plugin for vim
Bundle 'scrooloose/nerdtree'

" easily search for, substitute, and abbreviate multiple variants of a word
Bundle 'tpope/vim-abolish'

" Vim plugin for the Perl module / CLI script 'ack' 
Bundle 'mileszs/ack.vim'

" Distraction-free writing in Vim
Bundle 'junegunn/goyo.vim'

filetype plugin indent on  " Req! Must be placed after all vundle settings and plugins!

" memory management
set history=1001           " History max at 1001
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
let mapleader=","          " Change the mapleader from \ to , (comma)
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

" code folding
set foldmethod=indent
set foldlevel=99

" use Ag with ack.vim
let g:ackprg = 'ag --nogroup --nocolor --column'

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
