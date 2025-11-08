# mss.zsh-theme

# Use with a dark background and 256-color terminal!
# Only tested on Mac OS

# Borrowing shamelessly from these oh-my-zsh themes:
#   fino-time
#   robbyrussell
#
# Removes host, ruby from fino-time, adds last command result

function prompt_char {
    git branch >/dev/null 2>/dev/null && echo '⠠⠵>' && return
    echo '○>'
}

function kube_ps1call {
    # if kube-ps1 plugin is installed, then kube_ps1 call should succed
    # and we use it. Otherwise do not return anything
    
    if command -v kube_ps1 >/dev/null 2>&1; then
        echo $(kube_ps1)
    else
        echo
    fi 
}
_lineup=$'\e[1A'
_linedown=$'\e[1B'

PROMPT="%(?:%{$fg_bold[green]%}╭─:%{$fg_bold[red]%}╭─) %{$terminfo[bold]$FG[226]%}%~%{$reset_color%}\$(git_prompt_info)\$(git_commits_ahead) %D - %*
%(?:%{$fg_bold[green]%}╰─:%{$fg_bold[red]%}╰─)\$(prompt_char) %{$reset_color%}%(!.<you have privileges>.)"
RPROMPT="%{${_lineup}%}\$(kube_ps1call)%{${_linedown}%}"

ZSH_THEME_GIT_PROMPT_PREFIX=" %{$FG[239]%}on%{$reset_color%} %{$fg_bold[cyan]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$FG[202]%}✘✘✘"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$FG[040]%}✔"
ZSH_THEME_GIT_COMMITS_AHEAD_PREFIX="%{$FG[202]%} needs push for "
ZSH_THEME_GIT_COMMITS_AHEAD_SUFFIX=" commit(s)%{$reset_color%}"
VI_MODE_RESET_PROMPT_ON_MODE_CHANGE=true
