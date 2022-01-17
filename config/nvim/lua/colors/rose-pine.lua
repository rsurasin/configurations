-- Config
-- vim.g.background = "dark"

-- Set variant
-- Defaults to 'dawn' if vim background is light
-- @usage 'base' | 'moon' | 'dawn' | 'rose-pine[-moon][-dawn]'
vim.g.rose_pine_variant = 'moon'

-- Disable italics
vim.g.rose_pine_disable_italics = false

-- Use terminal background
vim.g.rose_pine_disable_background = false

-- Use bold vertical split line
vim.g.rose_pine_bold_vertical_split_line = true

-- Load the colorscheme
vim.cmd[[colorscheme rose-pine]]

-- Enables True Color Support
vim.opt.termguicolors = true

