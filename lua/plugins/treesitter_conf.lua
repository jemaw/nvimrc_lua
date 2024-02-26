local ts = require("nvim-treesitter.configs")
-- in case of errors do :checkhealth nvim-treesitter
ts.setup({
	ensure_installed = { "c", "python", "lua", "rust", "toml", "nix" },
	highlight = { enable = true },
	sync_install = false,
})
