--[[

Paq Config

install: git clone --depth=1 https://github.com/savq/paq-nvim.git \
"${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/pack/paqs/start/paq-nvim

:PaqInstall
]]

vim.cmd 'packadd paq-nvim'            -- load paq
local paq = require('paq-nvim').paq   -- import module with `paq` function

require "paq" {
    'savq/paq-nvim';
    'nvim-treesitter/nvim-treesitter';

    'nvim-lua/plenary.nvim';
    'nvim-telescope/telescope.nvim';
    'lewis6991/gitsigns.nvim';

    'Pocco81/Catppuccino.nvim';
    'NLKNguyen/papercolor-theme';

    -- easier keybinds
    "tjdevries/astronauta.nvim";

    "tpope/vim-fugitive"
}

-- Force loading of astronauta first.
-- https://github.com/neovim/neovim/pull/13823
-- hack to use lua keymaps in options
vim.cmd [[runtime plugin/astronauta.vim]]

require('gitsigns').setup()
require('plugins/telescope_conf')
require('plugins/treesitter_conf')
