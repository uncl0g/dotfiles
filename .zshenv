export XDG_DATA_HOME=${XDG_DATA_HOME:="$HOME/.local/share"}
export XDG_CACHE_HOME=${XDG_CACHE_HOME:="$HOME/.cache"}
export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:="$HOME/.config"}

export GOPATH="$XDG_DATA_HOME"/go
export ZDOTDIR=$XDG_CONFIG_HOME/zsh

# zsh history
export HISTFILE="$XDG_DATA_HOME/zsh/history"
export HISTSIZE=10000
export SAVEHIST=$HISTSIZE

# No less history file
export LESSHISTFILE=-
export NODE_REPL_HISTORY=""

export EDITOR="nvim"
export VISUAL="nvim"
