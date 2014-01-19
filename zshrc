# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"

# default user (removes username and host if agnoster theme is used)
DEFAULT_USER="aaron"

# Comment this out to disable bi-weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable command autocorrection
DISABLE_CORRECTION="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
plugins=(per-directory-history)

##########################

# History
HISTFILE=~/.zsh_history
SAVEHIST=32768
HISTSIZE=32768

###########################

# set options
setopt    append_history               # don't overwrite history
setopt    extended_history             # [unset] 
setopt    share_history                # import new commands from the history file also in other zsh-session
setopt    hist_reduce_blanks           # remove blank lines from history
setopt    hist_ignore_all_dups         # remove all duplicates from history
setopt    hist_find_no_dups            # [unset] ignore dupes in history search
setopt    hist_ignore_dups             # this will not put _consecutive_ duplicates in the history
setopt    hist_ignore_space            # if any command starts with a whitespace, it will not be saved. it will stil be displayed in the current session, though
setopt    hist_verify                  # [unset] when doing history substitution, put the substituted line into the line editor
setopt    auto_cd                      # [unset] enables you to omit 'cd' before a path
setopt    correct_all                  # Try to autocorrect commands & file names
setopt    completeinword               # not just at the end
setopt    nobeep                       # avoid beeping

###########################

# PATH
export PATH=$PATH:/usr/local/bin:/usr/bin:/bin:/usr/local/games:/usr/games:

# Source oh-my-zsh
if [ -f $ZSH/oh-my-zsh.sh ]; then
  source $ZSH/oh-my-zsh.sh
fi

# Source exports
if [ -f ~/.zshrc-exports ]; then
  source ~/.zshrc-exports
fi

# Source aliases
if [ -f ~/.zshrc-aliases ]; then
  source ~/.zshrc-aliases
fi

# Source zshrc-private
if [ -f ~/.zshrc-private ]; then
  source ~/.zshrc-private
fi

# Source private
if [ -f ~/.private ]; then
  source ~/.private
fi

# Add RVM to PATH
PATH=$PATH:$HOME/.rvm/bin
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

# Add Node to PATH
export PATH=$PATH:/opt/node/bin

# ssh wrapper that rename current tmux window to the hostname of the remote host.
ssh() {
    # Do nothing if we are not inside tmux or ssh is called without arguments
    if [[ $# == 0 || -z $TMUX ]]; then
        command ssh $@
        return
    fi
    # The hostname is the last parameter (i.e. ${(P)#})
    local remote=${${(P)#}%.*}
    local old_name="$(tmux display-message -p '#W')"
    local renamed=0
    # Save the current name
    if [[ $remote != -* ]]; then
        renamed=1
        tmux rename-window $remote
    fi
    command ssh $@
    if [[ $renamed == 1 ]]; then
        tmux rename-window "$old_name"
    fi
}
