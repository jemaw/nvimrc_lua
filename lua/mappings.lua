------------
-- Mappings 
------------

local map = vim.api.nvim_set_keymap
local noremap = {noremap = true}
vim.g.mapleader = ' '

-- buffers
map('n', '<a-righ>t', ':bn<CR>', noremap)
map('n', '<a-left>', ':bp<CR>', noremap)

-- quickswitch
map('n', '<bs>', '<c-^>', noremap)

-- Movement in long lines
map('n', 'j', 'gj', { silent=true})
map('n', 'k', 'gk', { silent=true})

-- highlight remove
-- map('n', '<CR>', ':noh<CR><CR>')

-- fast switch from insert to normal mode
map('i', 'kj', '<c-c>`^', noremap)
map('i', 'kjs', '<c-c>`^:w<CR>', noremap)


-- Split moving
map('n', '<C-h>', '<C-w>h', noremap)
map('n', '<C-j>', '<C-w>j', noremap)
map('n', '<C-k>', '<C-w>k', noremap)
map('n', '<C-l>', '<C-w>l', noremap)

-- Quickly paste from +reg
map('n', '<Leader>v', '"+p', noremap)
map('v', '<Leader>v', '"+p', noremap)

-- Quickly yank to +reg
map('n', '<Leader>c', '"+y', noremap)
map('v', '<Leader>c', '"+y', noremap)

-- easy yank to end of line
map('n', 'Y', 'y$', noremap)

-- toggle folds
-- map('<Leader><Leader>', 'za', noremap)
-- map('<Leader><Leader>', 'za', noremap)

-- quick save and exit
map('n', '<leader>q', ':q<CR>', noremap)
map('n', '<leader>w', ':w<CR>', noremap)
map('n', '<leader>wq', ':wq<CR>', noremap)

-- easy search for visual selection
map('n', '//', 'y/<C-R>"<CR>', noremap)

-- source vimrc
map('n', '<leader>cs', ':so $MYVIMRC<CR>', noremap)
map('n', '<leader>ce', ':tabe<CR>:e $MYVIMRC<CR>', noremap)

-- easy search for visual selection
map('v', '//',  'y/<C-R>"<CR>', noremap)
