alias ls='exa'
alias lst='exa --tree'

alias ll='exa --long --header'
alias llt='exa --long --tree'

alias v='nvim'
alias vf='v $(find -type f -print 2>/dev/null | fzf)'
alias cdf='cd $(find -type d -print 2>/dev/null | fzf)'

alias dotfiles='git --git-dir=$HOME/dotfiles --work-tree=$HOME'

alias lg='lazygit'
