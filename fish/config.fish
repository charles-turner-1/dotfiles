## ## gf status is-interactive
## #    Commands to run in interactive sessions can go here
## # end
## 
eval (/opt/homebrew/bin/brew shellenv)
## 
set PATH $PATH:$HOME/bin
set PATH $PATH:/usr/local/texlive/2022/bin/universal-darwin
set PATH $PATH:/Users/ct6g18/Library/Python/3.10/bin
set PATH $PATH:/opt/local/bin:/opt/local/sbin

set -x VIRTUAL_ENV_DISABLE_PROMPT 1

fish_add_path $HOME/.cargo/env


set M_Path /Users/ct6g18/Python/ML_Projects
## 
alias vim="nvim"

alias ytop="ytop -p"

alias cat="bat"

alias python="python3"

alias ll="exa --long --header --git"
alias la="exa --long --header --git -a"
alias lt="exa --long --header --git -snew"
alias tree="exa --tree"

alias tlmgr="sudo tlmgr"

alias unimatrix="unimatrix -s 96 -a"

alias vimdiff="vim -d"

alias code="open -a 'Visual Studio Code'"
alias gg="cd \$(git rev-parse --show-toplevel 2>/dev/null || echo .)"

## 
## # >>> conda initialize >>>
## # !! Contents within this block are managed by 'conda init' !!
## eval /opt/homebrew/Caskroom/miniforge/base/bin/conda "shell.fish" "hook" $argv | source
## # <<< conda initialize <<<
## 
fzf_configure_bindings --directory=\cf --git_log=\cg --git_status=\cs
