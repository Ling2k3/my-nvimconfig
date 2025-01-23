local vim = vim require("nvim-treesitter.configs").setup({
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
local coq = require("coq")
local lsp = require('lspconfig')
local util = require("lspconfig.util")
local on_attach = function(client, bufnr)
end
require("mason-lspconfig").setup_handlers {
   function(server_name)
      require("lspconfig")[server_name].setup(coq.lsp_ensure_capabilities({
         on_attach = on_attach,
      }))
   end,
}
