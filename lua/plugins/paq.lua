-- check if Paq already installed
require "io"
local path = vim.fn.stdpath('data') .. '/site/pack/paqs/start/paq-nvim'
local f=io.open(path,"r")
if f~=nil then 
    io.close(f) 
else 
    print("Package Manager not yet installed: for installation: \
    git clone --depth=1 https://github.com/savq/paq-nvim.git \\\
    \"${XDG_DATA_HOME:-$HOME/.local/share}\"/nvim/site/pack/paqs/start/paq-nvim")
    print("Afterwards reopen nvim and execute :PaqInstall")
    return 
end

require "paq" {
    'savq/paq-nvim';
    'nvim-treesitter/nvim-treesitter';

    'nvim-lua/plenary.nvim';
    -- "nvim-lua/popup.nvim";
    {'nvim-telescope/telescope.nvim' , tag='0.1.1'};
    "b3nj5m1n/kommentary";
    'lewis6991/gitsigns.nvim';
    "mhartington/formatter.nvim";

    -- themes
    'Pocco81/Catppuccino.nvim';
    'NLKNguyen/papercolor-theme';
    "ellisonleao/gruvbox.nvim";
    "mcchrish/zenbones.nvim",
    "rktjmp/lush.nvim";  -- required by zenbones
     "jemaw/vim-noctwo";
     "rebelot/kanagawa.nvim";


    -- git
    "tpope/vim-fugitive";

    -- autocompletion
    "hrsh7th/cmp-nvim-lsp";
    "hrsh7th/cmp-nvim-lsp-signature-help";
    "hrsh7th/cmp-nvim-lua";
    "hrsh7th/cmp-buffer";
    "hrsh7th/cmp-path";
    "hrsh7th/cmp-cmdline";
    "hrsh7th/nvim-cmp";
    -- snippets
    "L3MON4D3/LuaSnip";
    "saadparwaiz1/cmp_luasnip";
    "rafamadriz/friendly-snippets";
    -- notes
    "vimwiki/vimwiki";

    -- language server
    "neovim/nvim-lspconfig";
    "williamboman/mason.nvim";
    "simrat39/rust-tools.nvim";
    "williamboman/mason-lspconfig.nvim"

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
require("mason").setup()
