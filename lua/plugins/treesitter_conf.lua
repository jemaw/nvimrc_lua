local ts = require("nvim-treesitter.configs")
-- in case of errors do :checkhealth nvim-treesitter
ts.setup({
	ensure_installed = {
		"bash",
		"c",
		"cmake",
		"cpp",
		"go",
		"haskell",
		"helm",
		"html",
		"ini",
		"lua",
		"nix",
		"python",
		"rust",
		"toml",
		"vim",
		"vimdoc",
		"zig",
	},
	highlight = { enable = true },
	indent = { enable = true },
})
