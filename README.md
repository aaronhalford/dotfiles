Aaron Halford's Dotfiles
========================

Install Method - Configuration Management (Recommended)
------------------------------------------------------

* Use Puppet or Chef to automate the git clone and symbolic link of these dotfiles.


Install Method - Shell Script
-----------------------------

### 1. Install git

* `sudo apt-get install -y git`

### 2. Clone this github project into $HOME/dotfiles:

* `git clone https://github.com/aaronhalford/dotfiles-ahalford $HOME/dotfiles`

### 3. Run the dotfile install script to create symbolic links for $HOME/dotfiles in $HOME:

* `cd $HOME/dotfiles`
* `chmod+x 01-setup-dotfiles-sym.sh`
* `./01-setup-dotfiles.sh`

NOTE: `00-setup-dotfiles-prereq.sh` and `02-setup-dotfiles-extras.sh` are useful if needed.


Notable Details
---------------

* gemrc
  * no documention
* gitconfig
  * authorize for 1 hour
  * `gtd` alias for pretty git log
  * fast forward merges
* gitignore.global
  * avoid committing needless files
* tmux.conf
  * sets `a` as prefix key
  * tmux.conf.movement
    * vim motion
* vimrc
  * vimrc.bundles
    * vundle + plugin install
  * vimrc.keymaps
    * set `space` as command key
    * mouse on
* zshrc
  * zshrc.aliases
    * easy zshreload
  * zshrc.exports
    * path
    * autoload gcutil, node, rbenv
    * sets English as language
  * zshrc.functions
    * ssh
* Now supports `.local` files for quick customization.

ToDo for Version 3.0
--------------------

* [x] Remove oh-my-zsh
* [x] Multistep script install
* [ ] vundle -> neovundle
* [ ] update aliases
* [ ] update comments spacing and style
* [ ] rewrite README.md

Inspired by
-----------

* https://github.com/cowboy/dotfiles
* https://github.com/mathiasbynens/dotfiles
* https://github.com/thoughtbot/dotfiles
* https://github.com/robbyrussell/oh-my-zsh
* https://github.com/bling/vim-airline
* https://github.com/edkolev/promptline.vim
* https://github.com/edkolev/tmuxline.vim
