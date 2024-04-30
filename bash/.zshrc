zstyle ':vcs_info:*' enable git svn
# This line obtains information from the vcs.
zstyle ':vcs_info:git*' formats "(%b)"
precmd() {
    vcs_info
}

# Enable substitution in the prompt.
setopt prompt_subst

#load colors
autoload colors && colors
for COLOR in RED GREEN YELLOW BLUE MAGENTA CYAN BLACK WHITE; do
    eval $COLOR='%{$fg_no_bold[${(L)COLOR}]%}'  #wrap colours between %{ %} to avoid weird gaps in autocomplete
    eval BOLD_$COLOR='%{$fg_bold[${(L)COLOR}]%}'
done
eval RESET='%{$reset_color%}'

NEWLINE=$'\n'
# Config for the prompt. PS1 synonym.
prompt='${MAGENTA}%n${WHITE}:%~/ ${CYAN}[%?] ${GREEN}${vcs_info_msg_0_}${WHITE}$NEWLINE$'

export GPG_TTY=$(tty)

alias please='sudo $(history -p !!)'
alias update='git checkout master && git pull'
alias updatem='git checkout main && git pull'
alias branches='git branch --sort=-committerdate | head'
alias glog='git log --oneline --graph -n 10'
