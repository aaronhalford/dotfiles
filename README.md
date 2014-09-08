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
* `chmod+x 01-setup-dotfiles.sh`
* `./01-setup-dotfiles.sh`


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
* gvimrc
  * iawriter theme
* tmux.conf
  * sets `a` as prefix key
  * tmux.conf.movement
    * vim motion
  * tmux.conf.theme
      * left statusbar - window and pane numbers
      * right statusbar - user name and ip address
* vimrc
  * vimrc.bundles
    * vundle + plugin install
  * vimrc.keymaps
    * set `space` as command key
    * mouse on
  * vimrc.theme
    * Goyo mode
    * Thematic settings for seoul256 and pencil colorschemes
* zshrc
  * oh-my-zsh
  * zshrc.aliases
    * vimzen
    * easy zshreload
  * zshrc.exports
    * path
    * autoload gcutil, node, rbenv
    * sets English as language
  * zshrc.functions
    * ssh
* Now supports `.local` files for quick customization.

Inspired by
-----------

* https://github.com/cowboy/dotfiles
* https://github.com/mathiasbynens/dotfiles
* https://github.com/thoughtbot/dotfiles
