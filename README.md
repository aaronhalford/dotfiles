# Aaron Halford's Dotfiles

Customized dotfiles for Arch Linux.

Install with your favorite configuration manager.

## TL;DR

### Ruby

* gemrc
  * no documention

### Git

* gitconfig
  * authorize for 1 hour
  * `ll` alias for pretty git log
  * fast forward merges
* gitignore.global
  * avoid committing needless files
* gitmessage
  * good git commit message reminders

### Gvim

* gvimrc
  * clean window and menu style

### Tmux

* tmux.conf
  * sets `a` as prefix key
  * sets `b` as prefix2 key
* tmux.conf.keymaps
  * vim motion
* tmux.conf.theme
  * simple statusline with basic info

### Vim

* vimrc
  * source main config files
* vimrc.keymaps
  * set `space` as command key
  * force `hjkl` movement
* vimrc.plugins
  * vim plugin list managed by vim-plug
  * cltrp + silver searcher supprt
* vimrc.mouse
  * mouse on
* vimrc.theme
  * powerlinefonts set to off (easy switch to on)

### NeoVim (in testing)

* nvimrc
  * use vim config for neovim (nvimrc) file
  * true color support

### ZSH

* zshrc
  * source main config files
* zshrc.aliases
  * arch pacman
  * safety nets for cp mv rm
* zshrc.exports
  * path
  * sets English as language
* zshrc.functions
  * gitpullall
  * auto ls on cd
  * colored man pages with less
* zshrc.options
  * main zsh settings

### Visual Studio Code

* vscoderc
  * font stack
  * use 2 spaces for tab characters
  * original location of settings file: $HOME/.config/Code/User/settings.json

### OTHER

* Supports `.local` files for testing new settings.

## Inspired by

* https://github.com/cowboy/dotfiles
* https://github.com/mathiasbynens/dotfiles
* https://github.com/thoughtbot/dotfiles
