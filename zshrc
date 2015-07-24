# load additional zsh config files

# load oh-my-zsh
[[ -f ~/.zshrc.ohmyzsh ]] && source ~/.zshrc.ohmyzsh

# load remaining zsh dotfiles
[[ -f ~/.zshrc.exports ]] && source ~/.zshrc.exports
[[ -f ~/.zshrc.options ]] && source ~/.zshrc.options
[[ -f ~/.zshrc.aliases ]] && source ~/.zshrc.aliases
[[ -f ~/.zshrc.functions ]] && source ~/.zshrc.functions
[[ -f ~/.zshrc.local ]] && source ~/.zshrc.local

# load autojump (joelthelion/autojump)
[[ -s ~/.autojump/etc/profile.d/autojump.sh ]] && source ~/.autojump/etc/profile.d/autojump.sh
autoload -U compinit && compinit -u

# load syntax highlighting as oh-my-zsh plugin (zsh-users/zsh-syntax-highlighting)
[[ -f ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]] && source ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# load fzf (junegunn/fzf)
[[ -f ~/.fzf.zsh ]] && source ~/.fzf.zsh

