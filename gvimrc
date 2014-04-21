set antialias
set guicursor+=a:blinkon0    " disable cursor blink
set guioptions-=r            " kill right scrollbar
set guioptions-=l            " kill left scrollbar
set guioptions-=L            " kill left scrollbar multiple buffers
set guioptions-=T            " kill toolbar

let g:thematic#themes = {
\ 'iawriter'   : { 'colorscheme': 'pencil',
\                  'background': 'light',
\                  'columns': 75,
\                  'font-size': 13,
\                  'fullscreen': 1,
\                  'laststatus': 0,
\                  'linespace': 5,
\                  'typeface': 'Cousine',
\                },
\ }

let g:thematic#theme_name = 'iawriter'
