""" add the following to ~/.config/nvim/init.vim

" use vim config
if filereadable(expand("~/.vimrc"))
  source ~/.vimrc
endif

" install vim-plug for nvim if not present
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

" start vim-plug for neovim
call plug#begin('~/.config/nvim/plugged')
