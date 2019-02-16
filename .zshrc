# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000000
SAVEHIST=1000000
setopt appendhistory autocd PROMPT_SUBST
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/yuri/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
#fancy or less fancy prompt
#PROMPT='%B%F{white}[%F{red}%n%F{yellow}@%F{cyan}%m %F{magenta}%~%F{white}]%f%#%b '
PROMPT='%B%~ %# %b'

#all the aliases
alias la='ls -la'
alias ll='ls -l'

alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

alias cl='clear'
alias pi='sudo pacman -S'
alias pu='sudo pacman -Syu'
alias ps='pacman -Ss'
alias pr='sudo pacman -Rs'
alias pll='pacman -Qi'
alias pl='pacman -Si'
