set -U fish_prompt_pwd_dir_length 0
set fish_greeting

set -x PATH $PATH /home/aidan/winterwell/code/script
set -x PATH $PATH /usr/local/go/bin

set -x WINTERWELL_HOME /home/aidan/winterwell
set -x JAVA_HOME /usr/lib/jvm/java-11-openjdk-amd64

alias ccat="highlight -O ansi --force"
alias python="python3"
alias alacritty="gtk-launch Alacritty"

# git stuff
alias gs="git status"
alias gco="git checkout"
alias gb="git checkout -b "
alias gaa="git add -A"
alias gc="git commit -m "

#set fish_function_path $fish_function_path "/usr/share/powerline/bindings/fish"
#source /usr/share/powerline/bindings/fish/powerline-setup.fish
#powerline-setup
