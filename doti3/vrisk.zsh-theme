#vrisk zsh theme
local ret_status_prompt="%(?:%{$fg_bold[lime]%}>:%{$fg_bold[red]%}>>)"
local ret_status_separator="%(?:%{$fg_bold[lime]%}------------------------------------:%{$fg_bold[red]%}------------------------------------)"
#local ret_status_separator="---------------------------------------------------------"

PROMPT=$'%{$fg_bold[blue]%}%3~%{$reset_color%} $(git_prompt_info)$(bzr_prompt_info)%{$fg[white]%}[%n@%m]%{$reset_color%}%{$fg[white]%}[%T]%{$reset_color%}
${ret_status_prompt}%{$reset_color%}'

RPROMPT='${ret_status_separator}%{$reset_color%}'

GIT_CB="git::"
ZSH_THEME_SCM_PROMPT_PREFIX="%{$fg[green]%}["
ZSH_THEME_GIT_PROMPT_PREFIX=$ZSH_THEME_SCM_PROMPT_PREFIX$GIT_CB
ZSH_THEME_GIT_PROMPT_SUFFIX="]%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}*%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""

