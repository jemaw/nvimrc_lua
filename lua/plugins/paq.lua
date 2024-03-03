-- check if Paq already installed
require("io")
local path = vim.fn.stdpath("data") .. "/site/pack/paqs/start/paq-nvim"
local f = io.open(path, "r")
if f ~= nil then
	io.close(f)
else
	print('Package Manager not yet installed: for installation: \
    git clone --depth=1 https://github.com/savq/paq-nvim.git \\\
    "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/pack/paqs/start/paq-nvim')
	print("Afterwards reopen nvim and execute :PaqInstall")
	return
end

require("paq")({
	"savq/paq-nvim",
	"nvim-treesitter/nvim-treesitter",
	"windwp/nvim-autopairs",

	{ "nvim-telescope/telescope.nvim", tag = "0.1.5" },
	"b3nj5m1n/kommentary",
	"lewis6991/gitsigns.nvim",

	-- ui
	"nvim-tree/nvim-tree.lua",
	"nvim-tree/nvim-web-devicons",
	"folke/noice.nvim",
	"MunifTanjim/nui.nvim",
	"rcarriga/nvim-notify",
	"nvim-lua/plenary.nvim",
	"NvChad/nvterm",

	-- themes
	"Pocco81/Catppuccino.nvim",
	"NLKNguyen/papercolor-theme",
	"ellisonleao/gruvbox.nvim",
	"mcchrish/zenbones.nvim",
	"rktjmp/lush.nvim", -- required by zenbones
	"jemaw/vim-noctwo",
	"rebelot/kanagawa.nvim",
	"ColinKennedy/hybrid2.nvim",
	"folke/tokyonight.nvim",

	-- git
	"tpope/vim-fugitive",

	-- autocompletion
	"hrsh7th/cmp-nvim-lsp",
	"hrsh7th/cmp-nvim-lsp-signature-help",
	"hrsh7th/cmp-nvim-lua",
	"hrsh7th/cmp-buffer",
	"hrsh7th/cmp-path",
	"hrsh7th/cmp-cmdline",
	"hrsh7th/nvim-cmp",
	-- snippets
	"L3MON4D3/LuaSnip",
	"saadparwaiz1/cmp_luasnip",
	"rafamadriz/friendly-snippets",

	-- debugger todo
	--[[ "mfussenegger/nvim-dap";
    "jay-babu/mason-nvim-dap.nvim";
    "rcarriga/nvim-dap-ui"; ]]

	-- misc
	"dstein64/vim-startuptime",
	"folke/which-key.nvim",

	-- language server
	"neovim/nvim-lspconfig",
	"williamboman/mason.nvim",
	-- "simrat39/rust-tools.nvim";
	"mrcjkb/rustaceanvim",
	"rust-lang/rust.vim",
	"williamboman/mason-lspconfig.nvim",
})

-- maybe requires:
-- https://github.com/hrsh7th/nvim-cmp/wiki/Advanced-techniques#add-parentheses-after-selecting-function-or-method-item
require("nvim-autopairs").setup({})
require("plugins/nvterm_conf")
require("nvim-tree").setup()
vim.keymap.set("n", "<leader>n", "<cmd>NvimTreeToggle<cr>")
require("gitsigns").setup()
require("plugins/telescope_conf")
-- use TSInstall and TSUpdate
require("plugins/treesitter_conf")
require("plugins/cmp_conf")
require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = { "lua_ls", "pyright", "nil_ls", "rust_analyzer", "zls" },
})

require("noice").setup()
require("plugins/lsp_conf")

require("kanagawa").setup({
	overrides = function(colors)
		local theme = colors.theme
		return {
			NormalFloat = { bg = "none" },
			FloatBorder = { bg = "none" },
			FloatTitle = { bg = "none" },

			-- Save an hlgroup with dark background and dimmed foreground
			-- so that you can use it where your still want darker windows.
			-- E.g.: autocmd TermOpen * setlocal winhighlight=Normal:NormalDark
			NormalDark = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m3 },

			-- Popular plugins that open floats will link to NormalFloat by default;
			-- set their background accordingly if you wish to keep them dark and borderless
			LazyNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
			MasonNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
			-- NoiceCmdlinepopupborder links to DiagnosticSignInfo
			DiagnosticSignInfo = { bg = "none" },
		}
	end,
})
