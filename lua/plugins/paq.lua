-- check if Paq already installed
require "io"
local path = vim.fn.stdpath('data') .. '/site/pack/paqs/start/paq-nvi'
local f=io.open(path,"r")
if f~=nil then 
    io.close(f) 
else 
    print("Package Manager not yet installed: for installation: \
    git clone --depth=1 https://github.com/savq/paq-nvim.git \
    \"${XDG_DATA_HOME:-$HOME/.local/share}\"/nvim/site/pack/paqs/start/paq-nvim")
    print("Afterwards execute :PaqInstall")
    return 
end

require "paq" {
    'savq/paq-nvim';
    'nvim-treesitter/nvim-treesitter';

    'nvim-lua/plenary.nvim';
    {'nvim-telescope/telescope.nvim', branch="nvim-0.5.1"};
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
    "rafamadriz/friendly-snippets";
    -- notes
    "vimwiki/vimwiki"

}

-- install with pip or npm
require('plugins/lsp_conf')
require('gitsigns').setup()
require('plugins/telescope_conf')
-- use TSInstall and TSUpdate
require('plugins/treesitter_conf')
require('plugins/cmp_conf')
require("plugins/formatter_conf")
require("plugins/vimwiki_conf")
