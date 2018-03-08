#!/usr/bin/env zsh
local ret_status="%(?:%{$fg_bold[green]%}ᐅ :%{$fg_bold[red]%}ᐅ )"
local RARROW="%(?:%{$fg_bold[green]%}<:%{$fg_bold[red]%}<)"

PROMPT='${ret_status}%{$reset_color%}'
RPROMPT='%(?..%{$fg[red]%}%?) $(git_prompt_info)${RARROW} %{$fg[cyan]%}$(shrink_path -f)%{$reset_color%} ${RARROW} %{$fg[yellow]%}%D{%X}%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="${RARROW} %{$fg_bold[blue]%}(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg_bold[blue]%})%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}%{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%}"

