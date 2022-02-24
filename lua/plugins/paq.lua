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
    "b3nj5m1n/kommentary";
    'lewis6991/gitsigns.nvim';
    "mhartington/formatter.nvim";

    -- themes
    'Pocco81/Catppuccino.nvim';
    'NLKNguyen/papercolor-theme';
    "ellisonleao/gruvbox.nvim";

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
    -- snippets
    "L3MON4D3/LuaSnip";
    "saadparwaiz1/cmp_luasnip";
    "rafamadriz/friendly-snippets"

}

-- install with pip or npm
require('lspconfig').pyright.setup{}
require('gitsigns').setup()
require('plugins/telescope_conf')
-- use TSInstall and TSUpdate
require('plugins/treesitter_conf')
require('plugins/cmp_conf')
require("plugins/formatter_conf")

-- toggle_diagnostics
vim.g.diagnostics_visible = true
function _G.toggle_diagnostics()
    if vim.g.diagnostics_visible then
        vim.g.diagnostics_visible = false
        vim.diagnostic.disable()
    else
        vim.g.diagnostics_visible = true
        vim.diagnostic.enable()
    end
end
vim.keymap.set('n', '<Leader>l', ':call v:lua.toggle_diagnostics()<CR>', {silent=true, noremap=true})
