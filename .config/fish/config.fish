function fish_greeting
end

alias ll="exa -l --icons --group-directories-first"
alias la="exa -la --icons --group-directories-first"
alias g="git"
alias gs="git status"
alias gl="git pull"
alias gp="git push"
alias gc="git commit"
alias gaa="git add ."
alias v="nvim"

set -gx EDITOR nvim

set -gx PATH bin $PATH
set -gx PATH ~/bin $PATH
set -gx PATH ~/.local/bin $PATH

neofetch
