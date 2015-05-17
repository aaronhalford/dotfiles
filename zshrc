# set options
setopt append_history               # don't overwrite history
setopt extended_history             # [unset]
setopt share_history                # import new commands from the history file also in other zsh-session
setopt hist_reduce_blanks           # remove blank lines from history
setopt hist_ignore_all_dups         # remove all duplicates from history
setopt hist_find_no_dups            # [unset] ignore dupes in history search
setopt hist_ignore_dups             # this will not put _consecutive_ duplicates in the history
setopt hist_ignore_space            # if any command starts with a whitespace, it will not be saved. it will stil be displayed in the current session, though
setopt hist_verify                  # [unset] when doing history substitution, put the substituted line into the line editor
setopt auto_cd                      # [unset] enables you to omit 'cd' before a path
# setopt    correct_all                  # Try to autocorrect commands & file names
setopt  completeinword               # not just at the end
setopt  nobeep                       # avoid beeping

# Changing/making/removing directory
setopt auto_pushd                   # make cd push the old directory onto the directory stack
setopt pushd_ignore_dups            # do not push multiple copies of the same directory onto the directory stack
setopt pushdminus                   # exchanges the meanings of ‘+’ and ‘-’ when used with a number to specify a directory in the stack

###########################

# load additional zsh config files

# load oh-my-zsh
[[ -f ~/oh-my-zsh.sh ]] && source ~/oh-my-zsh.sh
[[ -f ~/.zshrc.ohmyzsh ]] && source ~/.zshrc.ohmyzsh

# custom settings
[[ -f ~/.zshrc.aliases ]] && source ~/.zshrc.aliases
[[ -f ~/.zshrc.functions ]] && source ~/.zshrc.functions
[[ -f ~/.zshrc.exports ]] && source ~/.zshrc.exports
[[ -f ~/.zshrc.local ]] && source ~/.zshrc.local

# add autojump (joelthelion/autojump)
[[ -s /home/aaron/.autojump/etc/profile.d/autojump.sh ]] && source /home/aaron/.autojump/etc/profile.d/autojump.sh
autoload -U compinit && compinit -u

# add syntax highlighting as oh-my-zsh plugin (zsh-users/zsh-syntax-highlighting)
[[ -f ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]] && source ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

###########################
