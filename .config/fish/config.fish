set -U fish_prompt_pwd_dir_length 0
set fish_greeting

set -x PATH $PATH /home/aidan/winterwell/code/script
set -x PATH $PATH /usr/local/go/bin
set -x PATH $PATH /home/aidan/dotfiles/.local/bin

set -x WINTERWELL_HOME /home/aidan/winterwell
set -x JAVA_HOME /usr/lib/jvm/java-11-openjdk-amd64

set -g __fish_git_prompt_show_informative_status 1
set -g __fish_git_prompt_hide_untrackedfiles 1

set -g __fish_git_prompt_color_branch magenta
set -g __fish_git_prompt_showupstream "informative"
set -g __fish_git_prompt_char_upstream_ahead "↑ "
set -g __fish_git_prompt_char_upstream_behind "↓ "
set -g __fish_git_prompt_char_upstream_prefix ""

set -g __fish_git_prompt_char_stagedstate "● "
set -g __fish_git_prompt_char_dirtystate "✚ "
set -g __fish_git_prompt_char_untrackedfiles "… "
set -g __fish_git_prompt_char_conflictedstate "✖ "
set -g __fish_git_prompt_char_cleanstate "✔ "

set -g __fish_git_prompt_color_dirtystate blue
set -g __fish_git_prompt_color_stagedstate yellow
set -g __fish_git_prompt_color_invalidstate red
set -g __fish_git_prompt_color_untrackedfiles $fish_color_normal
set -g __fish_git_prompt_color_cleanstate green

alias ccat="highlight -O ansi --force"
alias python="python3"
alias alacritty="gtk-launch Alacritty"

# git stuff
alias gs="git status"
alias gco="git checkout"
alias gb="git checkout -b "
alias gaa="git add -A"
alias gc="git commit -m "
alias popcorn="ssh -D 4144 -q -C -fN vultrdev && /usr/bin/popcorn-time --proxy-server="socks5://127.0.0.1:4144""


# Replace cat with bat (https://github.com/sharkdp/bat)
alias cat="bat"


#set fish_function_path $fish_function_path "/usr/share/powerline/bindings/fish"
#source /usr/share/powerline/bindings/fish/powerline-setup.fish
#powerline-setup
