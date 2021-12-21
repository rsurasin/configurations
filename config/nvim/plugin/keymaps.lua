-- Key Mappings
-- Make `vim.keymap` available
vim.cmd [[runtime plugin/astronauta.vim]]

local noremap = vim.keymap.noremap
local nnoremap = vim.keymap.nnoremap

-- Neovim
nnoremap({ "U", "<C-r>" }) -- Redo
-- Search and replace word under cursor
nnoremap({ "<leader>*", "*``cgn" }) -- Replace going forwards
nnoremap({ "<leader>#", "#``cgN" }) -- Replace going backwards
-- Buffers
nnoremap({ "<leader><Tab>", ":b#<CR>" }) -- Switch to last used buffer
nnoremap({ "<leader>=", "<C-W>=" }) -- Buffer windows same size
nnoremap({ "<leader>_", "<C-W>_" }) -- Buffer window take entire height
nnoremap({ "<leader>|", "<C-W>|" }) -- Buffer window take entire width
-- Prepend w/ a number to repeat command
nnoremap({ "<leader>,", "<C-W>5<" }) -- Current buffer window resize smaller
nnoremap({ "<leader>.", "<C-W>5>" }) -- Current buffer window resize larger
-- Prepend w/ a number to repeat command
nnoremap({ "<leader>-", "<C-W>5-" }) -- Current buffer window resize shorter
nnoremap({ "<leader>+", "<C-W>5+" }) -- Current buffer window resize taller
nnoremap({ "<leader>d", ":bd<CR>" }) -- Delete Buffer

-- bufferline
nnoremap({ "gb", ":BufferLinePick<CR>", silent = true }) -- Choose Buffer
nnoremap({ "<leader>n", ":BufferLineCycleNext<CR>", silent = true }) -- Next Buffer
nnoremap({ "<leader>p", ":BufferLineCyclePrev<CR>", silent = true }) -- Prev Buffer

-- nvim-tree
nnoremap({ "<leader>o", ":NvimTreeToggle<CR>" }) -- Open/Close nvim-tree

-- navigator
noremap({ "<C-h>", "<CMD>lua require('Navigator').left()<CR>", silent = true })
noremap({ "<C-k>", "<CMD>lua require('Navigator').up()<CR>", silent = true })
noremap({ "<C-l>", "<CMD>lua require('Navigator').right()<CR>", silent = true })
noremap({ "<C-j>", "<CMD>lua require('Navigator').down()<CR>", silent = true })
noremap({ "<C-p>", "<CMD>lua require('Navigator').previous()<CR>", silent = true })

-- telescope config
-- Search for files & open file browser
nnoremap({ "<leader>ff", "<cmd>Telescope find_files<cr>" })
nnoremap({ "<leader>fb", "<cmd>Telescope file_browser<cr>" })
-- Ripgrep Search
nnoremap({ "<leader>rf", "<cmd>Telescope live_grep<cr>" })
nnoremap({ "<leader>rs", "<cmd>Telescope grep_string search<cr>" })
-- Search Git Files
nnoremap({ "<leader>gf", "<cmd>Telescope git_files<cr>" })
-- Search for/in Buffers
nnoremap({ "<leader>ls", "<cmd>Telescope buffers<cr>" })
nnoremap({ "<leader>bf", "<cmd>Telescope current_buffer_fuzzy_find<cr>" })
-- Search Help Tags
nnoremap({ "<leader>fh", "<cmd>Telescope help_tags<cr>" })

