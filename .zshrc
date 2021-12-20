PS1="%1~ %# "
alias q='QHOME=~/q rlwrap -r ~/q/m64/q'
path+=('/usr/local/bin')
export PATH
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
setopt share_history
PROMPT=$'%b%n@%m %~ \n%b%# '
