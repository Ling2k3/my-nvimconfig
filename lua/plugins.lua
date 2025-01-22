local vim = vim
local Plug = vim.fn["plug#"]
vim.call("plug#begin")

Plug('RRethy/base16-nvim')
Plug("ellisonleao/gruvbox.nvim")

Plug('b0o/incline.nvim')
Plug("SmiteshP/nvim-navic")
Plug('nvim-lualine/lualine.nvim')

Plug('hrsh7th/cmp-nvim-lsp')
Plug('hrsh7th/cmp-buffer')
Plug('hrsh7th/cmp-path')
Plug('hrsh7th/cmp-cmdline')
Plug('hrsh7th/nvim-cmp')
Plug('L3MON4D3/LuaSnip')
Plug('saadparwaiz1/cmp_luasnip')

Plug("nvim-neo-tree/neo-tree.nvim")

Plug("MunifTanjim/nui.nvim")
Plug("nvim-lua/plenary.nvim")
Plug('stevearc/dressing.nvim')
Plug('nvim-tree/nvim-web-devicons')
Plug('HakonHarnes/img-clip.nvim')

Plug("nvim-treesitter/nvim-treesitter")
Plug("nvim-treesitter/nvim-treesitter-textobjects")
Plug("neovim/nvim-lspconfig")

Plug("williamboman/mason-lspconfig.nvim")
Plug('williamboman/mason.nvim')

Plug('ggandor/lightspeed.nvim')
Plug('xiyaowong/transparent.nvim')
Plug('dgagn/diagflow.nvim')
Plug('numToStr/Comment.nvim')


Plug("windwp/nvim-autopairs")
Plug("windwp/nvim-ts-autotag")
Plug("tpope/vim-surround")
Plug("mattn/emmet-vim")
Plug("RRethy/vim-illuminate")

Plug('smjonas/inc-rename.nvim')
Plug('akinsho/toggleterm.nvim', {['tag'] = '*'})

Plug('zbirenbaum/copilot.lua')
Plug("zbirenbaum/copilot-cmp")

Plug('MeanderingProgrammer/render-markdown.nvim')
Plug('lewis6991/gitsigns.nvim')

Plug('lukas-reineke/indent-blankline.nvim')
vim.call("plug#end")
