# load pure prompt as user-specific installation
# repo: https://github.com/sindersohus/pure
# manual install for now...
# pure.zsh and async.zsh must be symlinked or moved to the
# .zfunctions directory to be contained in zsh's fpath
fpath=( "$HOME/.zfunctions" $fpath )
autoload -U promptinit && promptinit
prompt pure

# load additional zsh config files
[[ -f ~/.zshrc.exports ]] && source ~/.zshrc.exports
[[ -f ~/.zshrc.options ]] && source ~/.zshrc.options
[[ -f ~/.zshrc.aliases ]] && source ~/.zshrc.aliases
[[ -f ~/.zshrc.functions ]] && source ~/.zshrc.functions
[[ -f ~/.zshrc.local ]] && source ~/.zshrc.local
