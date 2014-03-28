set nocompatible           " Not required if .vimrc is located and loaded by vim.  

" the basics
set t_Co=256               " Sets terminal colors to 256
set mouse=a                " Set mouse on. Enables mouse strolling.
set encoding=utf-8         " Utf-8
syntax on                  " enable syntax highlighting
set background=dark        " Use dark background

" Seperate file for vundle activation and bundle list
if filereadable(expand("~/.vimrc-bundles"))
  source ~/.vimrc-bundles
endif

filetype plugin indent on  " Req. Must be placed after all vundle settings and plugins

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

nmap <leader>a :ag<space>
nmap <leader>b :CtrlPBuffer<CR>
nmap <leader>d :NERDTreeToggle<CR>
nmap <leader>f :NERDTreeFind<CR>
nmap <leader>t :CtrlP<CR>
nmap <leader>T :CtrlPClearCache<CR>:CtrlP<CR>
nmap <leader>g :GitGutterToggle<CR>
nmap <leader>G :IndentGuidesToggle<CR>
map <silent> <leader>V :source ~/.vimrc<CR>:filetype detect<CR>:exe ":echo 'vimrc reloaded'"<CR>

" in case you forgot to sudo
cmap w!! %!sudo tee > /dev/null %

" code folding
set foldmethod=indent
set foldlevel=99

" nerdTree - show hidden files in nerdTree
let NERDTreeShowHidden=1

" nerdTree - enable closing vim if nerdTree is the only open window
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" get powerline patched fonts in airline
let g:airline_powerline_fonts = 1

" thematic defaults
let g:thematic#defaults = {
      \ 'laststatus': 2,
      \ 'ruler': 1,
      \ 'airline-theme': 'badwolf',
      \ }

let g:thematic#themes = {
      \ 'pencil_dark' :{ 'colorscheme': 'pencil',
      \                  'background': 'dark',
      \                },
      \ 'pencil_lite' :{ 'colorscheme': 'pencil',
      \                  'background': 'light',
      \                },
      \ 'korea_dark'  :{ 'colorscheme': 'seoul256',
      \                  'background': 'dark',
      \                },
      \ 'korea_lite'  :{ 'colorscheme': 'seoul256-light',
      \                  'background': 'light',
      \                },
      \ }

" pencil theme contrast
let g:pencil_higher_contrast_ui = 0 

" vim startup theme
let g:thematic#theme_name = 'pencil_dark'

" pencil file types
let g:pencil#wrapModeDefault = 'soft'
augroup pencil
  autocmd!
  autocmd FileType markdown call pencil#init()
augroup END

" filetypes for litecorrect
augroup litecorrect
    autocmd!
    autocmd FileType markdown call litecorrect#init()
augroup END

" if Goyo plugin is active, use seoul256-light colors and hide statuslines
function! s:goyo_before()
  set background=light
  set noshowmode
  set noshowcmd
  set wrap
  set linebreak
endfunction

function! s:goyo_after()
  set background=dark
  set showmode
  set showcmd
  set wrap
  set nolinebreak
endfunction

let g:goyo_callbacks = [function('s:goyo_before'), function('s:goyo_after')]
