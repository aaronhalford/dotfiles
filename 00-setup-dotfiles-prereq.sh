#!/bin/sh
## Always run this script from the $HOME/dotfiles directory.

### Exit Trap
trap 'ret=$?; test $ret -ne 0 && printf "failed\n\n" >&2; exit $ret' EXIT
set -e

### fancy_echo()
fancy_echo() {
  printf "\n%b\n" "$1"
}

### Prerequisites
sudo apt-get update
sudo apt-get install -y build-essential
sudo apt-get install -y python-software-properties
sudo apt-get install -y software-properties-common
sudo apt-get install -y curl
sudo apt-get install -y wget
sudo apt-get install -y git
sudo apt-get install -y zsh

### Bash is ok, ZSH is better.
fancy_echo "Changing your shell to ZSH"
chsh -s `which zsh`

### Goodbye
fancy_echo "Your shell will now restart to apply changes."
exec `which zsh` -l
