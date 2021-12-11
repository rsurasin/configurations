# Starship Configuration
starship init fish | source

# Pyenv
status is-login; and pyenv init --path | source
pyenv init - | source

# Remove Greeting 
set -U fish_greeting

# Set the Right Prompt
function fish_right_prompt -d "Write out the right prompt"
    date '+%m/%d/%y %H:%M:%S'
end

# manpage
set -x MANPAGER "sh -c 'col -bx | bat --theme=Dracula -l man -p'"

# Flutter
set PATH /Users/rahulsurasinghe/Development/tools/flutter/bin $PATH

# fzf
set -x FZF_DEFAULT_OPTS "--height 40% --layout=reverse --border --cycle --preview-window=wrap --marker='*' --no-mouse --bind='ctrl-n:down,ctrl-p:up'"
set -x FZF_DEFAULT_COMMAND "fd --type f --follow"
set -x FZF_CTRL_T_COMMAND "fd --follow"
set -x FZF_ALT_C_COMMAND "fd -a --type d --follow --base-directory $HOME"

# fzf keybindings
fzf_key_bindings

# alias
alias fz "fd --type f --follow | fzf --height 40% --layout=reverse --border --cycle --preview-window=wrap --marker='*' --no-mouse --preview 'bat --style=numbers --theme=Dracula --color=always --line-range :500 {}' --bind='ctrl-d:preview-half-page-down,ctrl-u:preview-half-page-up,ctrl-o:toggle-preview,ctrl-n:down,ctrl-p:up,ctrl-y:execute-silent(echo -n {} | pbcopy)'"

# functions
function nvf
    set fn (fz) || return
    nvim "$fn"
end

# BUG: fd is slow - https://github.com/sharkdp/fd/issues/599
function cdf
    set dir (fd -a --type d --follow --base-directory $HOME | fzf --height 40% --layout=reverse --border --cycle) || return
    cd "$dir"
end

# abbreviations
abbr -a cl "clear"
abbr -a nv "nvim"
abbr -a l "exa"
abbr -a ll "exa -l"
abbr -a lll "exa -la"
abbr -a g "git"
abbr -a ga "git add -p"
abbr -a gc "git checkout"
abbr -a gs "git status"
abbr -a gcm "git commit -m "

# base16 themes
# Base16 Shell
# if status --is-interactive
#     set BASE16_SHELL "$HOME/.config/base16-shell/"
#     source "$BASE16_SHELL/profile_helper.fish"
# end

