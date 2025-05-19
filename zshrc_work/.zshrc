export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="agnoster"

plugins=(
	git
	vi-mode
)

source $ZSH/oh-my-zsh.sh

HISTFILE=~/.zsh_history
SAVEHIST=1000  # Save most-recent 1000 lines

# TV aliases
alias pr="cd ~/Documents/projects"
alias tv="cd ~/Documents/projects/tradingview"
alias terminal-build="npm run build-terminal -- -v"
alias terminal-serve="npx serve ./cl-build"

# Aliases
alias ls="lsd -la"
alias insecure-chrome='open -a "Google Chrome" --args --disable-web-security --user-data-dir="/var/tmp/Chrome dev session"'
alias corsing="pr && cd corsing && npm start"
alias lazy="lazygit"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# pnpm
export PNPM_HOME="/Users/agulakhszyan/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
. "/Users/agulakhszyan/.deno/env"
