export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="agnoster"

plugins=(
	git
	vi-mode
)

source $ZSH/oh-my-zsh.sh
source /home/irvingwash/zsh-plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Aliases
alias vpn="sudo openvpn --config ~/Documents/TradingView/client.ovpn"
alias ppg="cd ~/Documents/PPG"
alias sctls="sudo systemctl start"
alias ls="exa --icons -la"

function createApp() {
	mkdir $1;
	cd $1;
	npx degit https://github.com/IrvingWash/izanami && rm -r README.md;
	npm i && $2 .;
}

# TV aliases
alias tv="cd ~/Documents/TradingView/tradingview"
alias tv-clean="make clean_fast ; make npm_init ; make rollup"
alias tv-django="./manage.py runserver 0.0.0.0:6285 --verbosity=2 --settings=settings.local"
alias tv-webpack="npm run webpack-watch"

function hl() {
	npm --prefix ~/Documents/PPG/hookles run start $1 $2
}

# Misc
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
