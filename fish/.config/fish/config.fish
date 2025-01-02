# Disable greeting
set fish_greeting

# Enable vi mode
fish_vi_key_bindings
fish_vi_cursor

# Customize prompt
function fish_prompt
    set -l last_status $status
    set -l stat

    string join '' -- (set_color blue) (prompt_pwd) (set_color normal) $stat '>'
end

function fish_right_prompt
    set -g __fish_git_prompt_showdirtystate 1
    set -g __fish_git_prompt_showuntrackedfiles 1
    set -g __fish_git_prompt_showupstream informative
    set -g __fish_git_prompt_showcolorhints 1
    set -g __fish_git_prompt_use_informative_chars 1
    string match -qi "*.utf-8" -- $LANG $LC_CTYPE $LC_ALL
    and set -g __fish_git_prompt_char_dirtystate \U1F996
    set -g __fish_git_prompt_char_untrackedfiles \U1F995

    set -l vcs (fish_vcs_prompt '(%s)' 2>/dev/null)

    string join '' -- $vcs
end

# Aliases
alias ls='eza --color=always --icons=always --classify=always -l -a --group-directories-first --show-symlinks --modified --no-permissions --no-user'
alias tree='eza -T'
