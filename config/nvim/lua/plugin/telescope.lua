-- https://github.com/tjdevries/config_manager/blob/master/xdg_config/nvim/lua/tj/telescope/init.lua
require('telescope').setup {
  defaults = {
    layout_strategy = "vertical",
    layout_config = {
        preview_cutoff = 10,
        prompt_position = "top",
    },
    prompt_prefix =  "❯ ",
    selection_caret =  "❯ ",
    sorting_strategy = "ascending",
  },
  extensions = {
    fzf = {
      fuzzy = true,                    -- false will only do exact matching
      override_generic_sorter = false, -- override the generic sorter
      override_file_sorter = true,     -- override the file sorter
      case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
                                       -- the default case_mode is "smart_case"
    }
  }
}
-- To get fzf loaded and working with telescope, you need to call
-- load_extension, somewhere after setup function:
require('telescope').load_extension('fzf')
require('telescope').load_extension('projects')
require('telescope').load_extension('file_browser')
