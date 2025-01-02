if status is-interactive
    # Commands to run in interactive sessions can go here
end

set fish_greeting

fish_vi_key_bindings
fish_vi_cursor

function fish_prompt
    set -l last_status $status
    set -l stat
    
    set -l git_status (git status -s)

    string join '' -- (set_color green) (prompt_pwd) (set_color normal) $stat (fish_git_prompt) '>'
end

alias ls='eza --color=always --icons=always --classify=always -l -a --group-directories-first --show-symlinks --modified --no-permissions --no-user'
alias tree='eza -T'
