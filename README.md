# Aaron Halford's Dotfiles

Customized dotfiles for Ubuntu systems.

## Install Method - Shell

* `git clone https://github.com/aaronhalford/dotfiles-ahalford $HOME/dotfiles`
* `cd $HOME/dotfiles`
* `chmod+x *.sh`
* `./00-setup-dotfiles-prereq.sh`
* `./01-setup-dotfiles-sym.sh`
* `./02-setup-dotfiles-extras.sh`
* `vim zshrc` and change `DEFAULT_USER` variable to your user name
* `git config user.name` and `git config user.email`

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
* tmux.conf.keymaps
  * vim motion
* tmux.conf.theme
  * statusline if tmuxline.vim is not loaded
* tmux.conf.tmuxline
  * statusline if tmuxline is loaded

#### Vim

* vimrc
  * mouse on
* vimrc.keymaps
  * set `space` as command key
  * force `hjkl` movement
* vimrc.plugins
  * vim plugin list managed by neobundle
* vimrc.theme
  * airline.vim settings
  * tmuxline.vim settings

### NeoVim

  * use vim config for neovim (nvimrc) file

#### ZSH

* zshrc
  * source main config files
* zshrc.aliases
  * easy zshreload
* zshrc.exports
  * path
  * autoload gcutil, node, rbenv
  * sets English as language
* zshrc.functions
  * ssh

#### OTHER

* Supports `.local` files for testing new settings.
* Solarized Dark is the recommendended GNOME Terminal color scheme.

Inspired by
-----------

* https://github.com/cowboy/dotfiles
* https://github.com/mathiasbynens/dotfiles
* https://github.com/thoughtbot/dotfiles
* https://github.com/robbyrussell/oh-my-zsh
* https://github.com/bling/vim-airline
* https://github.com/edkolev/tmuxline.vim
