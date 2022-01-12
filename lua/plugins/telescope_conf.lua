local nnoremap = vim.keymap.nnoremap

vim.keymap.set('n', '<leader>o', "<cmd>Telescope find_files<cr>")
vim.keymap.set('n', '<leader>p', '<cmd>Telescope buffers<cr>')
vim.keymap.set('n', '<leader>h', '<cmd>Telescope help_tags<cr>')
vim.keymap.set('n', '<leader>g', '<cmd>Telescope git_files<cr>')
vim.keymap.set('n', '<leader>/', '<cmd>Telescope live_grep<cr>')
