# Disable greeting
set fish_greeting

# Enable vi mode
fish_vi_key_bindings
fish_vi_cursor

# Aliases
alias ls='eza --color=always --icons=always --classify=always -l -a --group-directories-first --show-symlinks --modified --no-permissions --no-user'
alias tree='eza -T'
alias ppg='cd ~/Documents/ppg'
alias dot='cd ~/dotfiles'

starship init fish | source
