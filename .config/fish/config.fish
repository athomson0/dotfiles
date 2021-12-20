set -U fish_prompt_pwd_dir_length 0
set fish_greeting

set -x PATH $PATH /home/aidan/winterwell/code/script

set -x WINTERWELL_HOME /home/aidan/winterwell
set -x JAVA_HOME /usr/lib/jvm/java-11-openjdk-amd64

alias ccat="highlight -O ansi --force"
alias python="python3"
alias alacritty="gtk-launch Alacritty"

#set fish_function_path $fish_function_path "/usr/share/powerline/bindings/fish"
#source /usr/share/powerline/bindings/fish/powerline-setup.fish
#powerline-setup
