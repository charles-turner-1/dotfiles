# Homebrew first (adds /opt/homebrew/bin etc)
if test -x /opt/homebrew/bin/brew
    eval (/opt/homebrew/bin/brew shellenv)
end

# Explicit personal paths you own
fish_add_path $HOME/bin
fish_add_path /usr/local/texlive/2022/bin/universal-darwin
fish_add_path /Users/ct6g18/Library/Python/3.10/bin
fish_add_path /opt/local/bin
fish_add_path /opt/local/sbin
fish_add_path $HOME/Rust/nchdr/target/release

# Pixi LAST so it doesn't override everything
fish_add_path --append $HOME/.pixi/bin

# Disable virtualenv prompt mangling
set -gx VIRTUAL_ENV_DISABLE_PROMPT 1

if test -f /Users/u1166368/miniforge3/bin/conda
    eval /Users/u1166368/miniforge3/bin/conda "shell.fish" "hook" $argv | source
end

alias vim="nvim"
alias ytop="ytop -p"
alias cat="bat"
alias python="python3"

alias ll="eza --long --header --git"
alias la="eza --long --header --git -a"
alias lt="eza --long --header --git -snew"
alias tree="eza --tree"

alias tlmgr="sudo tlmgr"

alias gg='cd "$(git rev-parse --show-toplevel || echo .)"'

alias code="open -a 'Visual Studio Code'"

fzf_configure_bindings --directory=\cf --git_log=\cg --git_status=\cs

set theme_color_scheme nord

# Remove any stray .cargo/env entries from PATH
set -l bad (string match -r ".cargo/env" $PATH)
if test (count $bad) -gt 0
    set -gx PATH (string match -rv ".cargo/env" $PATH)
    echo "Removed .cargo/env from PATH"
end

# Bit of a hack but it fixes conda activation zed and leaves everything else working the same.
conda activate base
