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

# Flutter
set PATH /Users/rahulsurasinghe/Development/tools/flutter/bin $PATH

# base16 themes
# Base16 Shell
# if status --is-interactive
#     set BASE16_SHELL "$HOME/.config/base16-shell/"
#     source "$BASE16_SHELL/profile_helper.fish"
# end

