Aaron Halford's Dotfiles
========================

Install
-------

### 1. Clone this github project into $HOME/dotfiles:

```sudo apt-get install -y git```
```git clone https://github.com/aaronhalford/dotfiles-ahalford $HOME/dotfiles```

### 2. Run the dotfile install script to create symbolic links for $HOME/dotfiles in $HOME:

* ```./01-setup-dotfiles.sh```

Details
-------

* tmux.conf
  * sets `a` as prefix key
  * basic status line
* zshrc
  * theme
  * aliases in zshrc-aliases
  * exports in zshrc-exports
* vimrc
  * vundle + plugin install
  * set `,` as command key
* crawlrc
  * warnings for boss encounters
  * auto pickup
  * manual skill training
* gemrc
  * no documention
* gitignore-global
  * avoid commiting needless files
