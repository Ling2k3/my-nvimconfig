local vim = vim
vim.opt.hlsearch = true
vim.opt.background = "dark"
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.expandtab = true
vim.opt.laststatus = 3
vim.opt.showcmd = true
vim.opt.shell = "fish"
vim.opt.shiftwidth = 3
vim.opt.tabstop = 2 
vim.opt.title = true
vim.opt.autoindent = true
vim.wo.number = true
vim.opt.breakindent = true
vim.opt.ai = true
vim.opt.si = true
vim.opt.wrap = false
vim.opt.backspace = "start,eol,indent"
vim.opt.cursorline = true
vim.opt.termguicolors = true
vim.opt.fillchars = { eob = " " }
vim.o.termguicolors = true
vim.diagnostic.config({
   signs = {
      text = {
         [vim.diagnostic.severity.ERROR] = '',
         [vim.diagnostic.severity.WARN] = '',
      }
   }
})
vim.g.transparent_groups = vim.list_extend(vim.g.transparent_groups or {}, { "ExtraGroup" })
-- vimscript: let g:transparent_groups = extend(get(g:, 'transparent_groups', []), ["ExtraGroup"])
vim.g.coq_settings = {
  auto_start = true,
}
