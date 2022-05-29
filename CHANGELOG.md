## Releases
### v1.0
- Initial commit w/ all dotfiles

### v1.1
- Incorporated flutter-tools plugin to neovim
- Updated fish shell with the path to flutter 

### v2.0
- Major Update: Converted vimscript config of neovim to lua
    - Migrated from vim-plug to packer
    - Added `plugin` directory to autoload keymaps and options 
    - Added `lua/colors` directory to store favorite colorschemes
    - Added `lua/scripts` directory to run helpful scripts for config 
        - Read commit for more detail 
    - Migrated from `nvim-compe` to `nvim-cmp`
    - Migrated from `nvim-lspinstall` to `nvim-lsp-installer`
- Updated tmux config to support undercurls 
- TODO: Update documentation

### v2.1
- Updated nvim-cmp configuration
    - Removed Emoji and Calc
    - Added comments in the config to make it more clear
    - Added `keyword_length` to buffer
    - Removed `nvim-compe.lua` (DEPRECATED)
- Added configuration files to the following language servers:
    - yamls
    - cssls
    - html
    - dockerls
    - sumneko_lua
    - tsserver
    - Note: Already had pyright and rust_analyzer installed
- `init.lua` now requires the `lua/lsp` directory
- `lsp-rooter` plugin is deprecated, therefore, substituted it with `project-nvim` from the same author
    - Had to update `nvim-tree` and `telescope` to get it integrated with `project-nvim`

### v2.2
- Removed Oh-My-Fish
- Fisher installed `z` and `nvm`
- Updated `Brewfile` with helpful CLI tools: `exa`, `fzf`, `fd`, etc.
- Updated `config.fish` with fzf keybindings and useful abbreviations
- Alacritty terminal and Kitty terminal uses JetBrains Mono

### v2.3
- Add flutter and rust binaries in `PATH` for fish shell
- Helpful keymaps for buffer window management, redo, `nvim-tree` toggle, and `gitsigns`
- Add offset to `bufferline` when `nvim-tree` is active
- Refactor: changed `nvim-lspconfig.lua` to `opts.lua`, same functionality but returns a map to `nvim-lsp-installer.lua`
- Refactor: moved all lsp logic to lsp folder
- Bug Fix: `nvim-lsp-installer.lua` installs language servers and sets up the options for them, which fixes the bug for not being able to find the language servers in `PATH`
- Use fish shell w/ nvim built-in terminal
- `CHANGELOG.md` file to track releases going forward

### v2.4
- Tmux feature improvements inspired by `oh-my-tmux`
    - Implements Facebook Path Picker and URLview
- Fish shell global editor is now Neovim
