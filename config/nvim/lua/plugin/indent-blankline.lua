-- indent blank line config
-- Help Docs: https://github.com/lukas-reineke/indent-blankline.nvim/blob/master/doc/indent_blankline.txt
-- keys of the table match the indent-blankline-variables without the indent_blankline_ part.

-- HACK: To prevent this: https://github.com/lukas-reineke/indent-blankline.nvim/issues/59
vim.opt.colorcolumn = '9999'
vim.opt.list = true
vim.opt.listchars:append("space:⋅")

require("indent_blankline").setup {
    char = "|",
    space_char_blankline = " ",
    show_current_context = true,
    show_current_context_start = true,
    use_treesitter = true,
}

