local ts = require("nvim-treesitter.configs")
-- in case of errors do :checkhealth nvim-treesitter
ts.setup({
	ensure_installed = { "bash", "c", "python", "lua", "rust", "toml", "nix" },
	highlight = { enable = true },
	indent = { enable = true },
})
