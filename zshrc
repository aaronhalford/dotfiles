# load pure prompt
# repo: https://github.com/sindresohus/pure
# pure.zsh and async.zsh must reside in .zfunctions dir
# .zfunctions dir must reside in zsh path
fpath=( "$HOME/.zfunctions" $fpath )
autoload -U promptinit; promptinit
prompt pure

# load additional zsh config files
[[ -f ~/.zshrc.exports ]] && source ~/.zshrc.exports
[[ -f ~/.zshrc.options ]] && source ~/.zshrc.options
[[ -f ~/.zshrc.aliases ]] && source ~/.zshrc.aliases
[[ -f ~/.zshrc.functions ]] && source ~/.zshrc.functions
[[ -f ~/.zshrc.local ]] && source ~/.zshrc.local

# fix VTE terminal issue in Tilix
# https://github.com/gnunn1/terminix/wiki/VTE-Configuration-Issue
[[ -f /etc/profile.d/vte.sh ]] && source /etc/profile.d/vte.sh

# asdf version manager support
[[ -d ~/.asdf ]] && source ~/.asdf/asdf.sh