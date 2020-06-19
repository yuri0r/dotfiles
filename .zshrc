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

#get links autobraketed
autoload -Uz bracketed-paste-magic
zle -N bracketed-paste bracketed-paste-magic
autoload -Uz url-quote-magic
zle -N self-insert url-quote-magic

CASE_SENSITIVE="false"

#fancy or less fancy prompt
#PROMPT='%B%F{white}[%F{red}%n%F{yellow}@%F{cyan}%m %F{magenta}%~%F{white}]%f%#%b '
PROMPT='%B%~ %# %b'

#all the aliases
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

alias lss='ls -shw1 --group-directories-first'
alias ll='ls -l --group-directories-first'
alias la='ls -la --group-directories-first'
alias l='ls -CF --group-directories-first'

alias x="exit"
alias cl='clear'

alias pi='sudo pacman -S'
alias pu='sudo pacman -Syu'
alias ps='pacman -Ss'
alias pls='pacman -Qs'
alias pr='sudo pacman -Rs'
alias pll='pacman -Qi'
alias pl='pacman -Si'

alias n="nnn"
alias wl="mpv 'https://www.youtube.com/playlist?list=WL'"

alias dpl="drive pull"
alias dps="drive push"

eval $(thefuck --alias)
