# load pure prompt
# repo: https://github.com/sindersohus/pure
# pure.zsh and async.zsh must reside in .zfunctions dir
# .zfunctions dir must reside in zsh path
fpath=( "$HOME/.zfunctions" $fpath )
autoload -U promptinit && promptinit
prompt pure

# load additional zsh config files
[[ -f ~/.zshrc.exports ]] && source ~/.zshrc.exports
[[ -f ~/.zshrc.options ]] && source ~/.zshrc.options
[[ -f ~/.zshrc.aliases ]] && source ~/.zshrc.aliases
[[ -f ~/.zshrc.functions ]] && source ~/.zshrc.functions
[[ -f ~/.zshrc.local ]] && source ~/.zshrc.local
