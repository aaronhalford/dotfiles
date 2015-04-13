# Promptline (edkolev/promptline.vim)
[[ -f ~/.shell_prompt.sh ]] && source ~/.shell_prompt.sh

# Up until version 5.0.5, zsh had a hard-coded space at the end of the right
# prompt. To remove the extra space, install zsh 5.0.5 (or later) and set:
ZLE_RPROMPT_INDENT=0

##########################

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
# [[ -f $ZSH/oh-my-zsh.sh ]] && source $ZSH/oh-my-zsh.sh
[[ -f ~/.zshrc.aliases ]] && source ~/.zshrc.aliases
[[ -f ~/.zshrc.functions ]] && source ~/.zshrc.functions
[[ -f ~/.zshrc.exports ]] && source ~/.zshrc.exports
# [[ -f ~/.zshrc.freya ]] && source ~/.zshrc.freya
[[ -f ~/.zshrc.local ]] && source ~/.zshrc.local

# add autojump
[[ -s /home/aaron/.autojump/etc/profile.d/autojump.sh ]] && source /home/aaron/.autojump/etc/profile.d/autojump.sh
autoload -U compinit && compinit -u

# add zsh syntax highlighting (zsh-users/zsh-syntax-highlighting)
[[ -f ~/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]] && source ~/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

###########################
