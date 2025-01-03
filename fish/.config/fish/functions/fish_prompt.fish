function fish_prompt
    set -l last_status $status
    set -l stat

    string join '' -- (set_color blue) (prompt_pwd) (set_color normal) $stat '>'
end

