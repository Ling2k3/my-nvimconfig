local vim = vim
local Plug = vim.fn["plug#"]
vim.call("plug#begin")
Plug("neanias/everforest-nvim")

Plug('nvim-lualine/lualine.nvim')

Plug('L3MON4D3/LuaSnip')
Plug('ms-jpq/coq_nvim', {['branch'] = 'coq'})
Plug('ms-jpq/coq.artifacts', {['branch'] = 'artifacts'})
Plug('ms-jpq/coq.thirdparty', {['branch'] = '3p'})


Plug("nvim-neo-tree/neo-tree.nvim")

Plug("MunifTanjim/nui.nvim")
Plug("nvim-lua/plenary.nvim")
Plug('stevearc/dressing.nvim')
Plug('nvim-tree/nvim-web-devicons')
Plug('HakonHarnes/img-clip.nvim')
Plug('folke/trouble.nvim')

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

Plug('smjonas/inc-rename.nvim')
Plug('akinsho/toggleterm.nvim', {['tag'] = '*'})

Plug('MeanderingProgrammer/render-markdown.nvim')
Plug('lewis6991/gitsigns.nvim')

Plug('nvimdev/indentmini.nvim')
Plug("nvimdev/lspsaga.nvim")
Plug("lukas-reineke/indent-blankline.nvim")
Plug("norcalli/nvim-colorizer.lua")
vim.call("plug#end")
