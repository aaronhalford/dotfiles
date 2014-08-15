set nocompatible           " Not required if .vimrc is located and loaded by vim.

" the basics
set t_Co=256               " Sets terminal colors to 256
syntax on                  " enable syntax highlighting
set background=dark        " Use dark background
set encoding=utf-8         " Utf-8
set mouse=a                " Set mouse on. Enables mouse strolling.

" Seperate file for vundle activation and bundle list
if filereadable(expand("~/.vimrc-plugins"))
  source ~/.vimrc-plugins
endif

" memory management
set history=50             " History max
set tabpagemax=50          " Tabs max

" backups and swap filess
set nobackup               " Turn off automatic backups (~filename.ext)
set nowritebackup
set noswapfile             " Turn off swapfiles (filename.swp)

" login message
set shortmess=atI          " Don't show the intro message when starting Vimi

" cursor movement
set nostartofline          " Don't reset cursor to start of line when moving around

" spacing for softtabs, 2 spaces
set autoindent             " Turn on autoindentation
set copyindent             " Copy previus indentation on autoindenting
set expandtab              " Insert spaces instead of tabs
set softtabstop=2          " Spaces per insert mode tab and backspace
set shiftround             " Keep standard indents
set shiftwidth=2           " Spaces per autoindent
set smarttab               " Insert tabs on start of line based on shiftwidth, not tabstop
set tabstop=4	            " Spaces per real tab

" visual feedback
set display+=lastline      " Last line of a window will be displayed instead of @
set hidden                 " Hide buffers instead of closing
set laststatus=2           " Show status line
set nowrap                 " Do Not Wrap Lines
set number                 " Turn on line numbering
set numberwidth=5          " Pad the number gutter
set ruler                  " Show ruler
set scrolloff=3            " Show at least 3 lines above and below current line
set showcmd                " Show commmand line
set sidescrolloff=5        " Scrolloff for horizontal
set showmatch              " Show matching parenthesis
set wildmenu               " Tab command line completion

" Display extra whitespace
set list listchars=tab:»·,trail:·

" Keep vim in sync with filesystem
set autoread               " Listen for file edits outside of vim

" searches
set complete-=i            " Don't search every file for completions!
set hlsearch               " Highlight search terms
set incsearch              " Show search matches as typed
set ignorecase             " Ignore case during searches
set smartcase              " Ignore case if search pattern is all lowercase

" key edits
set backspace=2            " Backspace deletes like most programs in insert mode
set ttimeout               " Speed up keycodes
set ttimeoutlen=50         " Speed up keycodes

" code folding
set foldmethod=indent
set foldlevel=99

" Open new split panes to right and bottom
set splitbelow
set splitright

" Separate file for keymaps
if filereadable(expand("~/.vimrc-keymaps"))
  source ~/.vimrc-keymaps
endif

" Separate file for theme
if filereadable(expand("~/.vimrc-theme"))
  source ~/.vimrc-theme
endif

" Local config
if filereadable($HOME . "/.vimrc.local")
  source ~/.vimrc.local
endif
