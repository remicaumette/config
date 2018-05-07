set -g __fish_git_prompt_color_dirtystate blue
set -g __fish_git_prompt_color_stagedstate yellow
set -g __fish_git_prompt_color_invalidstate red
set -g __fish_git_prompt_color_untrackedfiles white
set -g __fish_git_prompt_color_cleanstate green

function fish_greeting
    source ~/.profile
end

function fish_prompt
    set_color white
    printf "λ "
    set_color blue
    printf (pwd)
    set_color white
    printf "%s " (__fish_git_prompt)
end
