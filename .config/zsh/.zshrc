# plugins
source $ZDOTDIR/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source $ZDOTDIR/plugins/zsh-vi-mode/zsh-vi-mode.plugin.zsh

# custom
source $ZDOTDIR/custom/custom-prompt.zsh
source $ZDOTDIR/custom/aliases.zsh
source $ZDOTDIR/custom/git.zsh

[ -s "$NVM_DIR/nvm.sh" ] && source $ZDOTDIR/custom/work.zsh

# enable history across terminals
setopt SHARE_HISTORY

# Expand alias
zstyle ':completion:*' completer _expand_alias _complete _ignored

# zsh-autosuggest
bindkey '^e' autosuggest-accept

# pnpm
export PNPM_HOME="$HOME/.local/share/pnpm"
export PATH=$PATH:$PNPM_HOME

# NVM
export NVM_DIR="$HOME/.config/nvm"
export NODE_DIR="$NVM_DIR/versions/node/v20.12.2/bin"
[ -s "$NVM_DIR/nvm.sh" ] && source "$NVM_DIR/nvm.sh" --no-use # no-use flag makes it fast, however it autoloads a particular version of node
 
# Go
export GOROOT=/usr/local/go
export GOPATH=$HOME/go

# neovim
export PATH="$PATH:/opt/nvim-linux64/bin"

export PATH=$HOME/.local/bin:/usr/local/go/bin:$HOME/go/bin:$HOME/.cargo/bin:$HOME/.rd/bin:$NODE_DIR:$PATH

eval "$(zoxide init zsh)"

# Plugin: Syntax Highlight. Must be last
source $ZDOTDIR/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
