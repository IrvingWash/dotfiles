set fish_greeting
set -gx EDITOR nvim

if uwsm check may-start
    exec uwsm start hyprland-uwsm.desktop
end

# PATH
fish_add_path /home/irving_wash/jai/bin

# Enable vi mode
fish_vi_key_bindings
fish_vi_cursor

# Aliases
alias ls='eza --color=always --icons=always --classify=always -l -a --group-directories-first --show-symlinks --modified'
alias tree='eza -T'
alias ppg='cd ~/ppg'
alias dot='cd ~/dotfiles'
alias lazy='lazygit'
alias vpn='sudo vpn connect netherlands'

function repo
    gh repo view $argv -w
end

# starship init fish | source
