-- Key Mappings
-- Make `vim.keymap` available
vim.cmd [[runtime plugin/astronauta.vim]]

local noremap = vim.keymap.noremap
local nnoremap = vim.keymap.nnoremap

-- nvim-tree
nnoremap({ "<leader>o", ":NvimTreeOpen<CR>" }) -- Open nvim-tree
nnoremap({ "<leader>q", ":NvimTreeClose<CR>" }) -- Close nvim-tree 

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

