# ZSH config
[ -f $HOME/.config/zsh/exports.zsh ] && source $HOME/.config/zsh/exports.zsh
[ -f $HOME/.config/zsh/prompt.zsh ] && source $HOME/.config/zsh/prompt.zsh
[ -f $HOME/.config/zsh/aliases.zsh ] && source $HOME/.config/zsh/aliases.zsh
[ -f $HOME/.config/zsh/functions.zsh ] && source $HOME/.config/zsh/functions.zsh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh



export PATH=/home/chris/.local/fnm:$PATH

codi() {
  local syntax="${1:-python}"
  shift
  nvim -c \
    "let g:startify_disable_at_vimenter = 1 |\
    set bt=nofile ls=0 noru nonu nornu |\
    hi ColorColumn ctermbg=NONE |\
    hi VertSplit ctermbg=NONE |\
    hi NonText ctermfg=0 |\
    Codi $syntax" "$@"
}
autoload -U compinit && compinit
