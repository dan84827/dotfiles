#    	               __  
#    	   ____  _____/ /_ 
#    	  /_  / / ___/ __ \
#    	   / /_(__  ) / / /
#    	  /___/____/_/ /_/ 


# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH=/home/dan/.oh-my-zsh

# set browser variable -- broken
#export BROWSER=firefox

ZSH_THEME="robbyrussell"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"


# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)
plugins=(zsh-autosuggestions)
plugins=(zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"


#   				M Y  S T U F F

#aliases
alias octave="octave --no-gui -q"
alias clcs="calcurse"
alias rg="ranger"
alias ta="tmux attach || tmux new"
alias matlab="matlab -nosplash -nodisplay"

# APT aliases
alias acs="apt-cache search"
alias sagi="sudo apt-get install"
alias sagud="sudo apt-get update"
alias sagug="sudo apt-get upgrade"
alias sagar="sudo apt-get autoremove"
alias sagr="sudo apt-get remove"


#setting correct TERM variable for solarized theme
#export TERM=screen-256color-bce

#tmux configurations
DISABLE_AUTO_TITLE=true


#enable vim mode on commmand line
bindkey -v

#automatically ls when you cd
function chpwd() {
    emulate -L zsh
    ls -a
}

# no delay entering normal mode
# https://coderwall.com/p/h63etq
# https://github.com/pda/dotzsh/blob/master/keyboard.zsh#L10
# 10ms for key sequences
KEYTIMEOUT=1

# show vim status
# http://zshwiki.org/home/examples/zlewidgets
function zle-line-init zle-keymap-select {
    RPS1="${${KEYMAP/vicmd/-- NORMAL --}/(main|viins)/-- INSERT --}"
        RPS2=$RPS1
            zle reset-prompt
            }
            zle -N zle-line-init
            zle -N zle-keymap-select

            # add missing vim hotkeys
            # http://zshwiki.org/home/zle/vi-mode
            bindkey -a u undo
            bindkey -a '^T' redo
            bindkey '^?' backward-delete-char  #backspace

            # history search in vim mode
            # http://zshwiki.org./home/zle/bindkeys#why_isn_t_control-r_working_anymore
            # ctrl+r to search history
           bindkey -M viins '^r' history-incremental-search-backward
            bindkey -M vicmd '^r' history-incremental-search-backward

