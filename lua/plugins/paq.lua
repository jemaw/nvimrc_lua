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

    -- git
    "tpope/vim-fugitive";

    -- autocompletion
    "neovim/nvim-lspconfig";
    "hrsh7th/cmp-nvim-lsp";
    "hrsh7th/cmp-buffer";
    "hrsh7th/cmp-path";
    "hrsh7th/cmp-cmdline";
    "hrsh7th/nvim-cmp";
    "L3MON4D3/LuaSnip";
    "saadparwaiz1/cmp_luasnip";

    "b3nj5m1n/kommentary"
}

-- Force loading of astronauta first.
-- https://github.com/neovim/neovim/pull/13823
-- hack to use lua keymaps in options
vim.cmd [[runtime plugin/astronauta.vim]]

require('gitsigns').setup()
require('plugins/telescope_conf')
require('plugins/treesitter_conf')
require('plugins/cmp_conf')
