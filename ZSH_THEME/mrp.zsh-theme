PROMPT="%(?:%F{#46b5d1} :%F{#d16246} )"
PROMPT+=' %{%F{#46b5d1}%c%{$reset_color%} $(git_prompt_info) %F{#58C456}'

ZSH_THEME_GIT_PROMPT_PREFIX="%F{#89C9D9}\ue727 -> (%F{#89C9D9}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%F{#89C9D9}) %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%F{#89C9D9})"