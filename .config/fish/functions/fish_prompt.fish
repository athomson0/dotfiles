function fish_prompt --description 'Write out the prompt'
    set -l last_pipestatus $pipestatus
    set -l normal (set_color normal)
    set -l color_cwd $fish_color_cwd
    set -l prefix
    set -l suffix ' $'

    if contains -- $USER root toor
        if set -q fish_color_cwd_root
            set color_cwd $fish_color_cwd_root
        end
        set suffix ' #'
    end

    set -l color_host $fish_color_host

    if set -q SSH_TTY
        set color_host $fish_color_host_remote
    end

    set -l prompt_status (__fish_print_pipestatus " [" "]" "|" (set_color $fish_color_status) (set_color --bold $fish_color_status) $last_pipestatus)

    echo -n -s (set_color $fish_color_user) "$USER" $normal @ (set_color $color_host) (prompt_hostname) $normal ' ' (set_color $color_cwd) (prompt_pwd) $normal (fish_git_prompt) $normal $prompt_status $suffix " "
end
