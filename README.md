Aaron Halford's Dotfiles
========================

Install
-------

### 1. Clone this github project into $HOME/dotfiles:

* `sudo apt-get install -y git`

* `git clone https://github.com/aaronhalford/dotfiles-ahalford $HOME/dotfiles`

### 2. Run the dotfile install script to create symbolic links for $HOME/dotfiles in $HOME:

* `./01-setup-dotfiles.sh`

### 3. Update your name and email in the gitconfig!
* `vim gitconfig`

Details
-------

* tmux.conf
  * sets `a` as prefix key
  * basic status line
    * left - window and pane numbers
    * right - user and ip info
* zshrc
  * agnoster theme
  * aliases in zshrc-aliases
    * vimzen alias for vim's Goyo mode
  * exports in zshrc-exports
    * sets English as lanaguage
* vimrc
  * vundle + plugin install
  * set `,` as command key
  * Goyo mode
  * seoul256 colors
* crawlrc
  * warnings for boss encounters
  * auto pickup
  * manual skill training
* gemrc
  * no documention
* gitignore-global
  * avoid commiting needless files
* gitconfig
  * default user name and email (remember to change this!)
  * auth 1 hour
  * pretty git log
