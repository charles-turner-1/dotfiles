## gf status is-interactive
#    Commands to run in interactive sessions can go here
# end

eval (/opt/homebrew/bin/brew shellenv)

set PATH $PATH:$HOME/bin
set PATH $PATH:/usr/local/texlive/2022/bin/universal-darwin
set PATH $PATH:/Users/ct6g18/Library/Python/3.10/bin
set PATH $PATH:/opt/local/bin:/opt/local/sbin
set PATH $PATH:$HOME/.cargo/env


set M_Path /Users/ct6g18/Python/ML_Projects

alias vim="nvim"

alias ytop="ytop -p"

alias cat="bat"

alias python="python3"

alias ll="eza --long --header --git"
alias la="eza --long --header --git -a"
alias lt="eza --long --header --git -snew"
alias tree="eza --tree"

alias tlmgr="sudo tlmgr"

alias unimatrix="unimatrix -s 96 -a"

alias vimdiff="vim -d"

alias code="open -a 'Visual Studio Code'"

fzf_configure_bindings --directory=\cf --git_log=\cg --git_status=\cs
