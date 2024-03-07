PROMPT="%(?:%{$fg_bold[green]%}[%*] ➜ :%{$fg_bold[red]%}[%*] ➜ )"
PROMPT+='%{$fg[cyan]%}%c%{$reset_color%} $(git_prompt_info)'
RPROMPT='$(virtualenv_prompt_info)'

ZSH_THEME_VIRTUALENV_PREFIX="%{$fg_bold[blue]%}venv:(%{$fg[red]%}"
ZSH_THEME_VIRTUALENV_SUFFIX="%{$fg_bold[blue]%})%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
