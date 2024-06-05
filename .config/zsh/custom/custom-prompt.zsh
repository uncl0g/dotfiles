source $ZDOTDIR/plugins/git-prompt.sh

setopt PROMPT_SUBST

# https://zsh.sourceforge.io/Doc/Release/Prompt-Expansion.html
PROMPT='$(vim_indicator) %F{yellow}%3d%f ➜ '
RPROMPT='${_return_status}$(__git_ps1) %*'

local _return_status="%(?.%F{green}✓.%F{red}%B%?% %b)%f "

function vim_indicator() {
  case $ZVM_MODE in
    $ZVM_MODE_NORMAL)
      echo "%B%F{red}[N]%f%B"
    ;;
    $ZVM_MODE_INSERT)
      echo "%B%F{green}[I]%f%B"
    ;;
    $ZVM_MODE_VISUAL)
      echo "%B%F{cyan}[V]%f%B"
    ;;
    $ZVM_MODE_VISUAL_LINE)
      echo "%B%F{cyan}[V]%f%B"
    ;;
    $ZVM_MODE_REPLACE)
      echo "%B%F{blue}[R]%f%B"
    ;;
  esac
}
