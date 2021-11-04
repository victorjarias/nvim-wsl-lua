vim.api.nvim_set_keymap('n', '<Space>', '<NOP>', { noremap = true, silent = true })
vim.g.mapleader  = ' '
vim.api.nvim_set_keymap('n', '<leader>e', ':NvimTreeToggle<cr>', { noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>q', ':q<cr>', { noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>w', ':w<cr>', { noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>fs', ':FZF<cr>', { noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>ag', ':Ag<cr>', { noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>rg', ':Rg<cr>', { noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<c-t>', ':split<CR>:ter<CR>:resize 15<CR>', { noremap = true, silent = true})
