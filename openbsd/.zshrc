# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt extendedglob nomatch notify
unsetopt autocd beep

function zvm_config() {
  ZVM_LINE_INIT_MODE=$ZVM_MODE_NORMAL
  ZVM_CURSOR_STYLE_ENABLED=false
}

source ~/zsh-vi-mode/zsh-vi-mode.plugin.zsh
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/p0l1t1c1an/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

zstyle ':completion:*' menu select
autoload -U colors && colors

alias rm='rm -i' :q='exit' vim='nvim'
alias ls="exa --color=auto" la='ls -a' ll='ls -l' lg='ls -lg' lla='ls -la' lga='ls -lga'

autoload -U history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end

function zvm_after_lazy_keybindings() {
    bindkey -M viins "^[[A" history-beginning-search-backward-end
    bindkey -M viins "^[[B" history-beginning-search-forward-end

    bindkey -M vicmd "k" history-beginning-search-backward-end
    bindkey -M vicmd "j" history-beginning-search-forward-end
}

source ~/powerlevel10k/powerlevel10k.zsh-theme
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern)

export JAVA_HOME=/usr/local/jdk-11
export PATH=$PATH:$JAVA_HOME/bin

export PATH=$PATH:$HOME/.cargo/bin
export RUST_SRC_PATH="$HOME/.cache/rust-src/library"

function prompt_gitstatus() {
    out=$($HOME/.cargo/bin/gitstatus)
    if [ ! -z $out ]; 
        then p10k segment -f 208 -i '' -t "$out"
    fi
}

function pdf_compress ()
{
   gs -q -dNOPAUSE -dBATCH -dSAFER -sDEVICE=pdfwrite -dCompatibilityLevel=1.3 \
       -dPDFSETTINGS=/screen -dEmbedAllFonts=true -dSubsetFonts=true \
       -dColorImageDownsampleType=/Bicubic -dColorImageResolution=144 \
       -dGrayImageDownsampleType=/Bicubic -dGrayImageResolution=144 \
       -dMonoImageDownsampleType=/Bicubic -dMonoImageResolution=144 \
       -sOutputFile=$1.compressed.pdf $1; 
}

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

neofetch --kitty $HOME/.backgrounds/galaxy.png
