function fish_mode_prompt
    switch $fish_bind_mode
        case default
            set_color --bold 807251
            echo '[N] '
        case insert
            set_color --bold 807251
            echo '[I] '
        case replace_one
            set_color --bold 807251
            echo '[R] '
        case visual
            set_color --bold 807251
            echo '[V] '
        case '*'
            set_color --bold 807251
            echo '[?] '
    end
    set_color normal
end
