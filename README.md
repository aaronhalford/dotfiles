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

* Tmux
  * sets `a` as command key
  * basic status line colors
* ZSH
  * sets theme and tons of aliases
* Vim
  * vundle + plugin install
* crawlrc
  * adds warnings for boss encounters
