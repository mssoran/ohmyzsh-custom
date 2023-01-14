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

PROMPT="%(?:%{$fg_bold[green]%}╭─:%{$fg_bold[red]%}╭─) %{$terminfo[bold]$FG[226]%}%~%{$reset_color%}\$(git_prompt_info)\$(git_commits_ahead) %D - %*
%(?:%{$fg_bold[green]%}╰─:%{$fg_bold[red]%}╰─)\$(prompt_char) %{$reset_color%}%(!.<you have privileges>.)"

ZSH_THEME_GIT_PROMPT_PREFIX=" %{$FG[239]%}on%{$reset_color%} %{$fg_bold[cyan]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$FG[202]%}✘✘✘"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$FG[040]%}✔"
ZSH_THEME_GIT_COMMITS_AHEAD_PREFIX="%{$FG[202]%} needs push for "
ZSH_THEME_GIT_COMMITS_AHEAD_SUFFIX=" commit(s)%{$reset_color%}"
