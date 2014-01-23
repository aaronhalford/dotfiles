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
fancy_echo "Starting dotfile setup ..."

for name in *; do
  target="$HOME/.$name"
  if [ -e "$target" ]; then
    if [ ! -L "$target" ]; then
      echo "WARNING: $target exists but is not a symlink. Creating backup of $target"
      mv $target ${target}.bak
      if [ "$name" != '01-setup-dotfiles.sh' ] && [ "$name" != 'LICENSE' ] && [ "$name" != 'README.md' ]; then
        echo "Creating $target"
        ln -s "$PWD/$name" "$target"
      fi
    fi
    else
    if [ "$name" != '01-setup-dotfiles.sh' ] && [ "$name" != 'LICENSE' ] && [ "$name" != 'README.md' ]; then
      echo "Creating $target"
      ln -s "$PWD/$name" "$target"
    fi
  fi
done

### Vundle for Vim
if [ ! -d "$HOME/.vim/bundle/vundle" ]; then
  fancy_echo "Installing vundle for vim..."
  git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
fi

fancy_echo "Installing vundle bundles ..."
vim +BundleInstall +qall

