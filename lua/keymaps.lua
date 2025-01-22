local map =vim.keymap.set
local vim = vim
vim.g.mapleader = ' '
map('n','<leader>e', ":Neotree toggle reveal_force_cwd<CR>", {silent = true})
map('n', '<Escape>', ':noh<CR>', {silent = true})
map('n', '<leader>f', ':lua vim.lsp.buf.format({async=false})<CR>', { noremap = true, silent = true})
map('n', '<leader>rn', ':IncRename ', {silent = true})
map('n', '<leader>a', ':CopilotChatToggle<CR>', {silent = true})
map('n', '<leader>d', ':Trouble diagnostics toggle focus=false filter.buf=0<CR>', {silent = true})
