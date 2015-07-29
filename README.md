# Aaron Halford's Dotfiles

Customized dotfiles for Ubuntu systems.

## Notable Details

#### Ruby

* gemrc
  * no documention

#### Git

* gitconfig
  * authorize for 1 hour
  * `gtd` alias for pretty git log
  * fast forward merges

* gitignore.global
  * avoid committing needless files

* gitmessage
  * git commit message reminders

#### Gvim

* gvimrc
  * clean window and menu style

#### Tmux

* tmux.conf
  * sets `a` as prefix key
  * sets `b` as prefix2 key
* tmux.conf.keymaps
  * vim motion
* tmux.conf.theme
  * backup statusline if tmuxline.vim is not loaded
* tmux.conf.tmuxline
  * primary statusline if tmuxline is loaded

#### Vim

* vimrc
  * mouse on
* vimrc.keymaps
  * set `space` as command key
  * force `hjkl` movement
* vimrc.plugins
  * vim plugin list managed by vim-plug
  * cltrp + silver searcher supprt
  * fzf support
* vimrc.theme
  * airline.vim
    * papercolor theme
  * tmuxline.vim
    * papercolor theme

### NeoVim

  * use vim config for neovim (nvimrc) file

#### ZSH

* zshrc
  * source main config files
* zshrc.aliases
  * easy zshreload
* zshrc.exports
  * path
  * optional load gcutil, node, rbenv, android dev tools
  * sets English as language
* zshrc.functions
  * ssh
* zshrc.ohmyzsh
  * set zsh user
  * set zshtheme as pure

#### OTHER

* Supports `.local` files for testing new settings.
* Base16 Ocean is the recommendended GNOME Terminal color scheme, but Solarized Dark works too.

## Inspired by

* https://github.com/cowboy/dotfiles
* https://github.com/mathiasbynens/dotfiles
* https://github.com/thoughtbot/dotfiles
* https://github.com/robbyrussell/oh-my-zsh
* https://github.com/bling/vim-airline
* https://github.com/edkolev/tmuxline.vim
* https://github.com/junegunn/vim-plug
* https://github.com/base16-gnome-terminal
