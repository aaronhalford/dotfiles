# Aaron Halford's Dotfiles

Customized dotfiles for Ubuntu systems.

## Install Method - Shell

* `sudo apt-get install -y git`
* `git clone https://github.com/aaronhalford/dotfiles-ahalford $HOME/dotfiles`
* `cd $HOME/dotfiles`
* `chmod+x 01-setup-dotfiles-sym.sh`
* `./01-setup-dotfiles-sym.sh`

If needed use `00-setup-dotfiles-prereq.sh` and `02-setup-dotfiles-extras.sh`.

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

#### Promptline.vim

* shell_prompt.sh
  * generated promptline.vim using vim insert mode colors

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
  * vim plugin list managed by vundle
* vimrc.theme
  * airline.vim settings
  * tmuxline.vim settings

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

* Now supports `.local` files for quick customization.

## ToDo for Version 3.0

* [x] revert to oh-my-zsh
* [x] vundle -> neovundle
* [ ] update aliases
* [ ] update comments spacing and style

Inspired by
-----------

* https://github.com/cowboy/dotfiles
* https://github.com/mathiasbynens/dotfiles
* https://github.com/thoughtbot/dotfiles
* https://github.com/robbyrussell/oh-my-zsh
* https://github.com/bling/vim-airline
* https://github.com/edkolev/promptline.vim
* https://github.com/edkolev/tmuxline.vim
