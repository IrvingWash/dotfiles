function fish_prompt
    set -l last_status $status
    set -l normal
    set -l prompt_status ""
    set -g __fish_git_prompt_showdirtystate true
    set -g __fish_git_prompt_showupstream auto
    set -g __fish_git_prompt_char_dirtystate '*'
    set -g __fish_git_prompt_char_stagedstate '+'
    set -g __fish_git_prompt_char_untrackedfiles '?'
    set -g __fish_git_prompt_show_informative_status false
    set -g __fish_git_prompt_showuntrackedfiles true
    set -g __fish_git_prompt_showstashstate false

    set -q fish_prompt_pwd_dir_length
    set -lx fish_prompt_pwd_dir_length 0

    set -l suffix '❯'
    if test $last_status -ne 0
        set status_color (set_color $fish_color_error)
        set prompt_status $status_color "["X"] " $normal
    end

    if test $fish_is_root_user
        set root_indicator '#'
    end

    set time (date +%H:%M) ' '

    set light_color (set_color 807251)

    echo -s $light_color $time (prompt_pwd) (fish_git_prompt) ' ' $prompt_status
    echo -n -s $root_indicator ' ' $suffix ' ' $normal
end
