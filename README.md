# Mac Setup
## Applications
Download the following applications:
1. [1password7](https://1password.com/downloads/mac/) 
2. [Android Studio](https://developer.android.com/studio)
3. [Brave Browser](https://brave.com/download/) 
4. [Discord](https://discord.com/download)
5. [Docker](https://www.docker.com/products/docker-desktop)
6. [Firefox](https://www.mozilla.org/en-US/firefox/download/thanks/)
7. [IINA](https://iina.io/download/)
8. [Notion](https://www.notion.so/desktop)
9. [Obsidian](https://obsidian.md/)
10. [Postman](https://www.postman.com/downloads/)
11. [QMK Toolbox](https://github.com/qmk/qmk_toolbox)
12. [Signal](https://signal.org/download/)
13. [Slack](https://slack.com/downloads/mac)
14. [Spotify](https://www.spotify.com/us/download/mac/)
15. [VIA](https://caniusevia.com/)
16. [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
17. [Visual Studio Code](https://code.visualstudio.com/download)

## Brewfile
Installing Brewfile:
```fish
brew bundle --file=~/Development/config/Brewfile
```

## Additional Installations/Configurations
1. Install [Oh-My-Fish](https://github.com/oh-my-fish/oh-my-fish) 
2. Install [nvm](https://github.com/nvm-sh/nvm#git-install) 
    - `nvm` doesn't work with `fish` but there are workarounds: [plugin-nvm](https://github.com/derekstavis/plugin-nvm)
3. Configure [pyenv](https://github.com/pyenv/pyenv#basic-github-checkout):
    ```fish
    set -Ux PYENV_ROOT $HOME/.pyenv
    set -U fish_user_paths $PYENV_ROOT/bin $fish_user_paths
    ```
4. Download Nerd Fonts: [JetBrains Mono and Fira Code](https://www.nerdfonts.com/font-downloads)

## File Mappings
```fish
# alacritty 
ln -s ~/Development/configurations/config/alacritty/alacritty.yml ~/.config/alacritty/alacritty.yml

# kitty 
ln -s ~/Development/configurations/config/kitty/kitty.conf ~/.config/kitty/kitty.conf
ln -s ~/Development/configurations/config/kitty/themes/base16-material-darker-256.conf ~/.config/kitty/themes/
ln -s ~/Development/configurations/config/kitty/themes/batman.conf ~/.config/kitty/themes/
ln -s ~/Development/configurations/config/kitty/themes/dracula.conf ~/.config/kitty/themes/
ln -s ~/Development/configurations/config/kitty/themes/gruvbox_dark.conf ~/.config/kitty/themes/
ln -s ~/Development/configurations/config/kitty/themes/jetbrains_dracula.conf ~/.config/kitty/themes/
ln -s ~/Development/configurations/config/kitty/themes/monokai_pro.conf ~/.config/kitty/themes/

# tmux 
ln -s ~/Development/configurations/tmux.conf ~/.tmux.conf

# fish shell
ln -s ~/Development/configurations/config/fish/config.fish ~/.config/fish/config.fish
ln -s ~/Development/configurations/config/fish/fish_plugins ~/.config/fish/fish_plugins

# oh-my-fish
ln -s ~/Development/configurations/config/omf/channel ~/.config/omf/channel
ln -s ~/Development/configurations/config/omf/bundle ~/.config/omf/bundle
ln -s ~/Development/configurations/config/omf/theme ~/.config/omf/theme

# neovim
ln -s ~/Development/configurations/config/nvim/init.vim ~/.config/nvim/init.vim

# neovim plugins
ln -s ~/Development/configurations/config/nvim/lua/plugin/lsp-rooter.lua ~/.config/nvim/lua/plugin/
ln -s ~/Development/configurations/config/nvim/lua/plugin/nvim-bufferline.lua ~/.config/nvim/lua/plugin
ln -s ~/Development/configurations/config/nvim/lua/plugin/neogit.lua ~/.config/nvim/lua/plugin
ln -s ~/Development/configurations/config/nvim/lua/plugin/gitsigns.lua ~/.config/nvim/lua/plugin
ln -s ~/Development/configurations/config/nvim/lua/plugin/telescope.lua ~/.config/nvim/lua/plugin
ln -s ~/Development/configurations/config/nvim/lua/plugin/nvim-web-devicons.lua ~/.config/nvim/lua/plugin
ln -s ~/Development/configurations/config/nvim/lua/plugin/nvim-lspinstall.lua ~/.config/nvim/lua/plugin
ln -s ~/Development/configurations/config/nvim/lua/plugin/nvim-compe.lua ~/.config/nvim/lua/plugin
ln -s ~/Development/configurations/config/nvim/lua/plugin/nvim-lspconfig.lua ~/.config/nvim/lua/plugin
ln -s ~/Development/configurations/config/nvim/lua/plugin/navigator.lua ~/.conf/nvim/lua/plugin
ln -s ~/Development/configurations/config/nvim/lua/plugin/nvim-tree.lua ~/.config/nvim/lua/plugin
ln -s ~/Development/configurations/config/nvim/lua/plugin/lualine.lua ~/.config/nvim/lua/plugin 
ln -s ~/Development/configurations/config/nvim/lua/plugin/treesitter.lua ~/.config/nvim/lua/plugin
ln -s ~/Development/configurations/config/nvim/lua/plugin/flutter-tools.lua ~/.config/nvim/lua/plugin

# neovim lsp 
ln -s ~/Development/configurations/config/nvim/lua/lsp/rust-ls.lua ~/.config/nvim/lua/lsp/rust-ls.lua
ln -s ~/Development/configurations/config/nvim/lua/lsp/python-ls.lua ~/.config/nvim/lua/lsp/python-ls.lua

# starship prompt
ln -s ~/Development/configurations/config/starhip.toml ~/.config/starship.toml
```

## Obsidian Notes
### TODO
Git clone obsidian notes repo:
```fish

```

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
