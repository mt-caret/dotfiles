#general
export EDITOR=vim

bindkey -v

setopt auto_cd
setopt correct
setopt magic_equal_subst
setopt prompt_subst

#completion
autoload -U compinit; compinit
setopt auto_list
setopt auto_menu
setopt list_packed
setopt list_types

#history
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt bang_hist

autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end

autoload -U colors; colors
PROMPT='%{$fg[red]%}%B%n%b%{$reset_color%}:%{$fg[blue]%}%B%c/%b%{$reset_color%}%# '

ls --color > /dev/null 2>&1 && alias ls='ls --color=auto'
alias grep="grep --color=auto"
