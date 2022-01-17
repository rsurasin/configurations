-- https://github.com/akinsho/nvim-bufferline.lua
require("bufferline").setup {
    options = {
        offsets = {
            {
                filetype = "NvimTree",
                text = "File Explorer",
                highlight = "Directory",
                text_align = "left"
            }
        }
    }
}
