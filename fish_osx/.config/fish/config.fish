set fish_greeting
set -gx EDITOR nvim

# PATH
fish_add_path /opt/homebrew/bin
fish_add_path /Users/irvingwash/jai/bin
fish_add_path /Users/irvingwash/apps

# Vim
fish_vi_key_bindings
fish_vi_cursor

# Aliases
alias ls='eza --color=always --icons=always --classify=always -l -a --group-directories-first --show-symlinks --modified'
alias tree='eza -T'
alias ppg='cd ~/Documents/ppg'
alias lazy='lazygit'

# Functions
function repo
    gh repo view $argv -w
end
