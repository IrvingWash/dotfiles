# Disable greeting
set fish_greeting

# Start X at login
if status --is-login
  if test -z "$DISPLAY" -a $XDG_VTNR = 1
    exec startx -- -keeptty
  end
end

# PATH
fish_add_path /home/irving_wash/jai/bin

# Enable vi mode
fish_vi_key_bindings
fish_vi_cursor

# Aliases
alias ls='eza --color=always --icons=always --classify=always -l -a --group-directories-first --show-symlinks --modified'
alias tree='eza -T'
alias ppg='cd ~/Documents/ppg'
alias dot='cd ~/dotfiles'
alias lazy='lazygit'
alias vpn='jai /home/irving_wash/local_apps/outline.jai'

function repo
    gh repo view $argv -w
end

starship init fish | source
