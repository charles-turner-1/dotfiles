if status is-interactive
    # Commands to run in interactive sessions can go here
end

eval (/opt/homebrew/bin/brew shellenv)
set COWPATH $COWPATH:$HOME/.cowsay
set PATH $PATH:$HOME/bin
set PATH $PATH:/usr/local/texlive/2022/bin/universal-darwin
set PATH $PATH:/Users/ct6g18/Library/Python/3.10/bin
set PATH /opt/local/bin:/opt/local/sbin:$PATH

set M_Path /Users/ct6g18/Python/ML_Projects

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



# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /opt/homebrew/Caskroom/miniforge/base/bin/conda "shell.fish" "hook" $argv | source ; conda deactivate 
# <<< conda initialize <<<

fzf_configure_bindings --directory=\cf --git_log=\cg --git_status=\cs
