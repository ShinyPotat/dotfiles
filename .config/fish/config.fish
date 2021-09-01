function fish_greeting
end

alias ll="exa -l --icons --group-directories-first"
alias la="exa -la --icons --group-directories-first"
alias g git

set -gx EDITOR nvim

set -gx PATH bin $PATH
set -gx PATH ~/bin $PATH
set -gx PATH ~/.local/bin $PATH

set -g theme_date_format "+ %H:%M:%S"
set theme_color_scheme nord
set -g theme_nerd_fonts yes
set -x VIRTUAL_ENV_DISABLE_PROMPT 1

neofetch
