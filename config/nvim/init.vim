" TODO: Convert into init.lua for neovim v0.5

" Fish doesn't play well with others
set shell=/bin/bash

" Set leader key 
let mapleader="\<space>"

" TODO: Replace vim-plug for lua alt package manager for neovim v0.5
" vim-plug plugins
call plug#begin('~/.config/nvim/plugged')
" GUI Enhancements
" Color Schemes
" Gruvbox Material Theme w/ Treesitter Support
Plug 'sainnhe/gruvbox-material'
" Tokyo Nights Theme w/ Treesitter Support
Plug 'folke/tokyonight.nvim'
" Bufferline
Plug 'akinsho/nvim-bufferline.lua'
" Indent Blank Lines
" Requires lua branch until v0.5 is released
Plug 'lukas-reineke/indent-blankline.nvim', { 'branch': 'lua' }
" Status Line 
Plug 'hoob3rt/lualine.nvim'
" Web Icons 
Plug 'kyazdani42/nvim-web-devicons' 

" Navigation
" TODO: Look into lightspeed.nvim
" tmux and vim splits navigation
Plug 'numToStr/Navigator.nvim'

" Utility
" TODO: Look into editorconfig plugin
" File Explorer 
" TODO: Uninstall once getting used to Telescope
Plug 'kyazdani42/nvim-tree.lua'
" Fuzzy Finder 
" TODO: Look into snap for live grep
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
" Git
Plug 'lewis6991/gitsigns.nvim'
Plug 'TimUntersberger/neogit'
" Rooter - magically cd into project directory
Plug 'ahmedkhalf/lsp-rooter.nvim'
" Telescope Extension
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
" Intellisense
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-compe'
Plug 'hrsh7th/vim-vsnip'
Plug 'kabouzeid/nvim-lspinstall'
" Syntax Parser
" We recommend updating the parsers on update
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  
" Initialize plugin system
call plug#end()

" Color Scheme (Set before Intellisense)
" https://cyfyifanchen.com/neovim-true-color/
" set background="dark"
let g:tokyonight_style = "storm"
colorscheme tokyonight

" Enables True Color Support 
set termguicolors

" nvim-dev-webicons
:lua require("plugin/nvim-web-devicons")

" nvim-tree
nnoremap <leader>o :NvimTreeOpen<CR> " Open Nvim-tree
nnoremap <leader>q :NvimTreeClose<CR> " Close Nvim-tree
let g:nvim_tree_hide_dotfiles = 1 " Hide dot files
let g:nvim_tree_auto_close = 1 " Closes the tree when its the last window
let g:nvim_tree_tab_open = 1 " Will open the tree (if open) when switching to new tab
let g:nvim_tree_indent_markers = 1 " Shows indent markers when folders are open
let g:nvim_tree_show_icons = {
    \ 'git': 1,
    \ 'folders': 1,
    \ 'files': 1,
    \ 'folder_arrows': 0,
    \ }
" Load the rest of the config (i.e. key bindings)
:lua require("plugin/nvim-tree") 

" nvim-lspinstall 
:lua require("plugin/nvim-lspinstall") 

" nvim-lspconfig (LSP configs) 
:lua require("plugin/nvim-lspconfig")
:lua require("lsp/python-ls")
:lua require("lsp/rust-ls")
" HACK: lsp-config mappings (the defaults don't work quite well)
nnoremap <silent> <leader>dp <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>
nnoremap <silent> <leader>dn <cmd>lua vim.lsp.diagnostic.goto_next()<CR>
nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> gD <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> gr <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> gi <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> K <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> <C-s> <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> gT <cmd> lua vim.lsp.buf.type_definition()<CR>

" nvim-compe  
inoremap <silent><expr> <C-Space> compe#complete()
inoremap <silent><expr> <CR>      compe#confirm('<CR>')
inoremap <silent><expr> <C-e>     compe#close('<C-e>')
inoremap <silent><expr> <C-f>     compe#scroll({ 'delta': +4 })
inoremap <silent><expr> <C-d>     compe#scroll({ 'delta': -4 })
:lua require("plugin/nvim-compe")

" lualine config 
:lua require("plugin/lualine") 

" navigator config 
:lua require("plugin/navigator") 

" nvim-treesitter config
" BUG: https://github.com/nvim-treesitter/nvim-treesitter/issues/1136
" Opens all folds at start
au BufRead * normal zR
" Highly Experimental (if fold breaks, `zx` should fix it
set foldmethod=expr
set foldexpr=nvim_treesitter#foldexpr()
:lua require("plugin/treesitter") 

" telescope config
" Search for Files & Open File Browser
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fb <cmd>Telescope file_browser<cr>
" Ripgrep search
nnoremap <leader>rf <cmd>Telescope live_grep<cr>
nnoremap <leader>rs <cmd>Telescope grep_string search<cr>
" Search Git files
nnoremap <leader>gf <cmd>Telescope git_files<cr>
" Search for/in Buffers
nnoremap <leader>ls <cmd>Telescope buffers<cr>
nnoremap <leader>bf <cmd>Telescope current_buffer_fuzzy_find<cr>
" Search help tags
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
" telescope config 
:lua require("plugin/telescope")

" gitsigns config 
:lua require("plugin/gitsigns") 

" neogit config 
:lua require("plugin/neogit")

" indent blank line config
let g:indent_blankline_char = '▏'
let g:indent_blankline_filetype_exclude = [
    \ 'yaml', 'help'
    \]
" let g:indent_blankline_show_trailing_blankline_indent = v:false
let g:indent_blankline_use_treesitter = v:true
" HACK: To prevent this: https://github.com/lukas-reineke/indent-blankline.nvim/issues/59
set colorcolumn=9999 

" nvim-bufferline config 
:lua require("plugin/nvim-bufferline")

" lsp-rooter config
:lua require("plugin/lsp-rooter")

" Basic Essentials 
syntax on

set tabstop=4 " Width of tab  
set softtabstop=4 
set shiftwidth=4 
set expandtab " Use spaces instead of tab
set autoindent " Good for plain text

" https://www.gilesorr.com/blog/vim-tips-22-modelines.html
set nomodeline

" Proper Search
set smartcase
set gdefault
set ignorecase 
set incsearch

" https://vi.stackexchange.com/questions/6/how-can-i-use-the-undofile
" TODO: Script to create the backup/swap/undo directories if they aren't there 
" Backup Files Location
set backupdir=~/.config/nvim/tmp/backup
" Swap Files Location
set directory=~/.config/nvim/tmp/swap
" Undo Files Location
set undodir=~/.config/nvim/tmp/undo
set undofile

set number " Include line no.
set relativenumber " Include relative line no.
set numberwidth=1 " Width of the Col in terms of # of chars

" Color of the numbers that aren't highlighted
highlight LineNr term=bold cterm=NONE ctermfg=LightGrey ctermbg=NONE gui=NONE guifg=LightGrey guibg=NONE
" Remove underline under line numbers 
highlight CursorLineNr term=bold cterm=bold ctermfg=012 gui=bold
" Configure Cursor Line 
set cursorline
" Highlight the current line
highlight Cursorline cterm=NONE ctermbg=238

" Configure Cursor
" enable blinking vertical cursor when in insert mode
set guicursor=n-v-c:block,i-ci-ve:ver26-blinkwait100-blinkon100-blinkoff100
" (https://stackoverflow.com/questions/6488683/how-do-i-change-the-cursor-between-normal-and-insert-modes-in-vim/6489348#6489348)                           

" nvim splits
" Sane Splits
set splitbelow splitright
