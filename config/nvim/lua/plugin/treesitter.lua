-- Repo: https://github.com/nvim-treesitter/nvim-treesitter
-- Reference: https://github.com/tjdevries/config_manager/blob/master/xdg_config/nvim/lua/plugin/treesitter.lua
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    -- custom_captures = {
      -- Highlight the @foo.bar capture group with the "Identifier" highlight group.
      -- ["foo.bar"] = "Identifier",
    -- },
  },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "gnn",
      node_incremental = "grn",
      scope_incremental = "grc",
      node_decremental = "grm",
    },
  },
  -- BUG - Python indents issue: https://github.com/nvim-treesitter/nvim-treesitter/issues/1136
  -- Experimental feature
  -- indent = {
    -- enable = true
  -- },
}

