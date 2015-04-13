#!/usr/bin/env zsh
## Always run this script from the $HOME/dotfiles directory.

### Exit Trap
trap 'ret=$?; test $ret -ne 0 && printf "failed\n\n" >&2; exit $ret' EXIT
set -e

### fancy_echo()
fancy_echo() {
  printf "\n%b\n" "$1"
}

### Dotfile Installer
fancy_echo "Starting dotfile extras install ..."

### Vundle for Vim
if [ ! -d "$HOME/.vim/bundle/Vundle.vim" ]; then
  fancy_echo "Installing vundle for vim..."
  git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

fancy_echo "Installing Vundle plugins ..."
vim +PluginInstall +qall

### Enable ZSH Syntax Highlighting
if [ ! -d "$HOME/zsh-syntax-highlighting" ]; then
  fancy_echo "Installing ZSH Syntax Highlighting..."
  git clone git://github.com/zsh-users/zsh-syntax-highlighting.git ~/zsh-syntax-highlighting
fi

### Install AutoJump
if [ ! -d "$HOME/autojump" ]; then
  fancy_echo "Installing ZSH AutoJump..."
  git clone git://github.com/joelthelion/autojump.git ~/autojump
  cd ~/autojump
  ./install.py
  cd ~
fi

### Install Powerline Patched Fonts
if [ ! -d "$HOME/powerlinefonts" ]; then
  fancy_echo "Installing Powerline Patched Fonts..."
  git clone git://github.com/powerline/fonts ~/powerlinefonts
  cd ~/powerlinefonts
  ./install.py
  cd ~
fi

### Install Oh-My-ZSH
### not required if promptline.vim and tmuxline.vim are used
# wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh

### Enable changes
source ~/.zshrc

### Fin
fancy_echo "Completed install of Vim Vundle Plugins, ZSH Syntaz Highlighting, ZSH AutoJump, Powerline Patched Fonts, and reloaded ZSH."
