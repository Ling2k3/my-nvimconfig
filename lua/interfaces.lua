local vim = vim
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true

local colorscheme = "gruvbox"
vim.cmd("colorscheme " .. colorscheme)

require("conf_1/neo_tree")
require("conf_1/lua_line")
require("conf_1/incline")
require("conf_1/toggleterm")

require("nvim-autopairs").setup({})

require('inc_rename').setup{}

require("nvim-ts-autotag").setup({
   opts = {
      enable_autoclose = true,
      enable_autorename = true,
      enable_close_on_slash = false,
   },
})
require("lightspeed").setup({
   ignore_case = false,
   exit_after_idle_msecs = { unlabeled = nil, labeled = nil },
   --- s/x ---
   jump_to_unique_chars = { safety_timeout = 400 },
   match_only_the_start_of_same_char_seqs = true,
   force_beacons_into_match_width = false,
   -- Display characters in a custom way in the highlighted matches.
   substitute_chars = { ["\r"] = "¬" },
   -- Leaving the appropriate list empty effectively disables "smart" mode,
   -- and forces auto-jump to be on or off.
   safe_labels = { ... },
   labels = { ... },
   -- These keys are captured directly by the plugin at runtime.
   special_keys = {
      next_match_group = "<space>",
      prev_match_group = "<tab>",
   },
   --- f/t ---
   limit_ft_matches = 4,
   repeat_ft_with_target_char = false,
})


require("transparent").clear_prefix("toggleterm")
require("transparent").clear_prefix("NeoTree")

require('diagflow').setup({
   enable = true, max_width = 60,     -- The maximum width of the diagnostic messages
   max_height = 10,    -- the maximum height per diagnostics
   severity_colors = { -- The highlight groups to use for each diagnostic severity level
      error = "DiagnosticFloatingError",
      warning = "DiagnosticFloatingWarn",
      info = "DiagnosticFloatingInfo",
      hint = "DiagnosticFloatingHint",
   },
   format = function(diagnostic)
      return diagnostic.message
   end,
   gap_size = 1,
   scope = 'cursor', -- 'cursor', 'line' this changes the scope, so instead of showing errors under the cursor, it shows errors on the entire line.
   padding_top = 0,
   padding_right = 0,
   text_align = 'right',                                  -- 'left', 'right'
   placement = 'top',                                     -- 'top', 'inline'
   inline_padding_left = 0,                               -- the padding left when the placement is inline
   update_event = { 'DiagnosticChanged', 'BufReadPost' }, -- the event that updates the diagnostics cache
   toggle_event = {},                                     -- if InsertEnter, can toggle the diagnostics on inserts
   show_sign = false,                                     -- set to true if you want to render the diagnostic sign before the diagnostic message
   render_event = { 'DiagnosticChanged', 'CursorMoved' },
   border_chars = {
      top_left = "┌",
      top_right = "┐",
      bottom_left = "└",
      bottom_right = "┘",
      horizontal = "─",
      vertical = "│"
   },
   show_borders = false,
})
require('img-clip').setup{}
require('render-markdown').setup{}
require('render-markdown.integ.coq').setup()

require("ibl").setup {
       debounce = 100,
       indent = { char = "|" },
       whitespace = { highlight = { "Whitespace", "NonText" } }
}

require('illuminate').configure({
    providers = {
        'lsp',
        'treesitter',
        'regex',
    },
    -- delay: delay in milliseconds
    delay = 100,
    -- filetype_overrides: filetype specific overrides.
    -- The keys are strings to represent the filetype while the values are tables that
    -- supports the same keys passed to .configure except for filetypes_denylist and filetypes_allowlist
    filetype_overrides = {},
    -- filetypes_denylist: filetypes to not illuminate, this overrides filetypes_allowlist
    filetypes_denylist = {
        'dirbuf',
        'dirvish',
        'fugitive',
    },
    -- filetypes_allowlist: filetypes to illuminate, this is overridden by filetypes_denylist
    -- You must set filetypes_denylist = {} to override the defaults to allow filetypes_allowlist to take effect
    filetypes_allowlist = {},
    -- modes_denylist: modes to not illuminate, this overrides modes_allowlist
    -- See `:help mode()` for possible values
    modes_denylist = {},
    -- modes_allowlist: modes to illuminate, this is overridden by modes_denylist
    -- See `:help mode()` for possible values
    modes_allowlist = {},
    -- providers_regex_syntax_denylist: syntax to not illuminate, this overrides providers_regex_syntax_allowlist
    -- Only applies to the 'regex' provider
    -- Use :echom synIDattr(synIDtrans(synID(line('.'), col('.'), 1)), 'name')
    providers_regex_syntax_denylist = {},
    -- providers_regex_syntax_allowlist: syntax to illuminate, this is overridden by providers_regex_syntax_denylist
    -- Only applies to the 'regex' provider
    -- Use :echom synIDattr(synIDtrans(synID(line('.'), col('.'), 1)), 'name')
    providers_regex_syntax_allowlist = {},
    under_cursor = true,
    large_file_cutoff = nil,
    large_file_overrides = nil,
    min_count_to_highlight = 1,
    should_enable = function(bufnr) return true end,
    case_insensitive_regex = false,
})
