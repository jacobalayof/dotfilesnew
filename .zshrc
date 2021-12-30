PS1="%1~ %# "
alias q='QHOME=~/q rlwrap -r ~/q/m64/q'
path+=('/usr/local/bin')
export PATH
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
setopt share_history
#PROMPT=$'%B%n@%m %~ \n%b%# '
#PROMPT=$'\n(%n@%m)-[%B%~%b] \n%# '
PROMPT=$'%F{%(#.blue.green)}┌──(%B%F{%(#.red.blue)}%n@%m%b%F{%(#.blue.green)})-[%B%F{reset}%(6~.%-1~/…/%4~.%5~)%b%F{%(#.blue.green)}]\n└─%B%(#.%F{red}#.%F{blue}%#)%b%F{reset} '
#source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
#source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
if [[ -n "$PS1" ]] && [[ -z "$TMUX" ]] && [[ -n "$SSH_CONNECTION" ]]; then
  tmux attach-session -t ssh_tmux || tmux new-session -s ssh_tmux
fi