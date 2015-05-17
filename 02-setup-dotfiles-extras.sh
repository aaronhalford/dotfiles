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

### Neobundle for Vim
if [ ! -d "$HOME/.vim/bundle" ]; then
  fancy_echo "Installing neobundle for vim..."
  mkdir -p ~/.vim/bundle
  git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
fi

## Insall of Neobundle plugins will require user input of ENTER key to confirm
fancy_echo "Installing Neobundle plugins ..."
vim +NeoBundleInstall +qall

### Install Oh-My-ZSH
### not required if promptline.vim and tmuxline.vim are used
# wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh

### Enable ZSH Syntax Highlighting (oh-my-zsh version)
if [ ! -d "$HOME/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting" ]; then
  fancy_echo "Installing ZSH Syntax Highlighting..."
  git clone git://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
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
### Remember to switch terminal font to a powerline font!!!
if [ ! -d "$HOME/powerlinefonts" ]; then
  fancy_echo "Installing Powerline Patched Fonts..."
  git clone git://github.com/powerline/fonts ~/powerlinefonts
  cd ~/powerlinefonts
  ./install.sh
  cd ~
  sudo fc-cache -f -v
fi

### Enable changes
source ~/.zshrc

### Fin
fancy_echo "Completed install of Vim Vundle Plugins, ZSH Syntaz Highlighting, ZSH AutoJump, Powerline Patched Fonts, and reloaded ZSH."
