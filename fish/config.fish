## gf status is-interactive
#    Commands to run in interactive sessions can go here
# end

eval (/opt/homebrew/bin/brew shellenv)

set -x PATH \
    $HOME/bin \
    /usr/local/texlive/2022/bin/universal-darwin \
    /Users/ct6g18/Library/Python/3.10/bin \
    /opt/local/bin \
    /opt/local/sbin \
    $HOME/.cargo/env \
    $HOME/Rust/nchdr/target/release \
    $PATH

set -x VIRTUAL_ENV_DISABLE_PROMPT 1

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

alias inception="ssh -R 9000:localhost:8000 ct1163@gadi.nci.org.au ssh -R 9000:localhost:9000 testing-tunnel.ct1163.tm70.ps.gadi.nci.org.au ssh -L 0.0.0.0:8000:localhost:9000 testing-tunnel.ct1163.tm70.ps.gadi.nci.org.au"

alias vimdiff="vim -d"

alias code="open -a 'Visual Studio Code'"

alias gg='cd "$(git rev-parse --show-toplevel || echo .)"'

fzf_configure_bindings --directory=\cf --git_log=\cg --git_status=\cs

set theme_color_scheme nord


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /Users/u1166368/miniforge3/bin/conda
    eval /Users/u1166368/miniforge3/bin/conda "shell.fish" "hook" $argv | source
else
    if test -f "/Users/u1166368/miniforge3/etc/fish/conf.d/conda.fish"
        . "/Users/u1166368/miniforge3/etc/fish/conf.d/conda.fish"
    else
        set -x PATH "/Users/u1166368/miniforge3/bin" $PATH
    end
end
# <<< conda initialize <<<

