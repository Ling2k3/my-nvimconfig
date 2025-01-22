local navic = require("nvim-navic")
require("nvim-treesitter.configs").setup({
   ensure_installed = { "lua", "vim", "go", "vimdoc", "query", "zig", "json", "editorconfig", "sql" },
   sync_install = false,
   auto_install = true,
   hightlight = {
      enable = true, },
   indent = {
      enable = true, },
   fold = {
      enable = true,
   },
   incremental_selection = { enable = true },
   textobjects = { enable = true },
})
require("mason").setup({})
require('Comment').setup()
local cmp = require('cmp')
local lsp = require('lspconfig')
local util = require("lspconfig.util")
local on_attach = function(client, bufnr)
   if client.server_capabilities.documentSymbolProvider then
      navic.attach(client, bufnr)
   end
end

cmp.setup({
   snippet = {
      -- REQUIRED - you must specify a snippet engine
      expand = function(args)
         vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
         -- require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
         -- require('snippy').expand_snippet(args.body) -- For `snippy` users.
         -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
         -- vim.snippet.expand(args.body) -- For native neovim snippets (Neovim v0.10+)
      end,
   },
   window = {
      -- completion = cmp.config.window.bordered(),
      -- documentation = cmp.config.window.bordered(),
   },
   mapping = cmp.mapping.preset.insert({
      ['<C-b>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.abort(),
      ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
   }),
   sources = cmp.config.sources({
      { name = 'nvim_lsp' },
      { name = 'luasnip' },
   }, {
      { name = 'buffer' },
   }),
   sorting = {
      priority_weight = 2,
      comparators = {
         require("copilot_cmp.comparators").prioritize,

         -- Below is the default comparitor list and order for nvim-cmp
         cmp.config.compare.offset,
         -- cmp.config.compare.scopes, --this is commented in nvim-cmp too
         cmp.config.compare.exact,
         cmp.config.compare.score,
         cmp.config.compare.recently_used,
         cmp.config.compare.locality,
         cmp.config.compare.kind,
         cmp.config.compare.sort_text,
         cmp.config.compare.length,
         cmp.config.compare.order,
      },
   },
})

cmp.setup.cmdline({ '/', '?' }, {
   mapping = cmp.mapping.preset.cmdline(),
   sources = {
      { name = 'buffer' }
   }
})

cmp.setup.cmdline(':', {
   mapping = cmp.mapping.preset.cmdline(),
   sources = cmp.config.sources({
      { name = 'path' }
   }, {
      { name = 'cmdline' }
   }),
   matching = { disallow_symbol_nonprefix_matching = false }
})

local capabilities = require('cmp_nvim_lsp').default_capabilities()
require("mason-lspconfig").setup_handlers {
   function(server_name)
      require("lspconfig")[server_name].setup({
         capabilities = capabilities,
         on_attach = on_attach
      })
   end,
}
