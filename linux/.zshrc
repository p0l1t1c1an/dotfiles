# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=2000
SAVEHIST=2000
setopt nomatch
unsetopt autocd beep extendedglob notify
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/p0l1t1c1an/.zshrc'

export FPATH="$FPATH:$HOME/.zsh_complete"

autoload -Uz compinit
compinit
# End of lines added by compinstall

zstyle ':completion:*' menu select
autoload -U colors && colors
alias rm='rm -i' ls='exa --color=auto' :q='exit' vim='nvim'

autoload -U history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^[[A" history-beginning-search-backward-end
bindkey "^[[B" history-beginning-search-forward-end

source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern)

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

neofetch
