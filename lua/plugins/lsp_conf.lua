local opts = { noremap = true, silent = true }
vim.api.nvim_set_keymap("n", "<Leader>d", "<cmd>lua vim.diagnostic.open_float()<CR>", opts)
vim.api.nvim_set_keymap("n", "[d", "<cmd>lua vim.diagnostic.goto_prev()<CR>", opts)
vim.api.nvim_set_keymap("n", "]d", "<cmd>lua vim.diagnostic.goto_next()<CR>", opts)

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
	-- Enable completion triggered by <c-x><c-o>
	-- vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

	-- Mappings.
	-- See `:help vim.lsp.*` for documentation on any of the below functions
	vim.api.nvim_buf_set_keymap(bufnr, "n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opts)
	vim.api.nvim_buf_set_keymap(bufnr, "n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
	vim.api.nvim_buf_set_keymap(bufnr, "n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
	vim.api.nvim_buf_set_keymap(bufnr, "n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)
	vim.api.nvim_buf_set_keymap(bufnr, "n", "<C-k>", "<cmd>lua vim.lsp.buf.signature_help()<CR>", opts)
	vim.api.nvim_buf_set_keymap(bufnr, "n", "<Leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", opts)
	vim.api.nvim_buf_set_keymap(bufnr, "n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", opts)
	vim.api.nvim_buf_set_keymap(bufnr, "n", "<Leader>f", "<cmd> lua vim.lsp.buf.format()<CR>", opts)
end

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
vim.keymap.set("n", "<Leader>l", ":call v:lua.toggle_diagnostics()<CR>", opts)

-- setup servers
local lspconfig = require("lspconfig")
local capabilities = require("cmp_nvim_lsp").default_capabilities()

lspconfig.nil_ls.setup({
	on_attach = on_attach,
	settings = {
		["nil"] = {
			formatting = {
				command = { "nixpkgs-fmt" },
			},
		},
	},
})

-- simple setups
local lsps = {"pyright", "zls", "bashls"}
for i = 1, #lsps 
do
	lspconfig[lsps[i]].setup({
	on_attach = on_attach,
	capabilities = capabilities,
})
end

-- rust
vim.g.rustfmt_autosave = 1
vim.g.rustaceanvim = {
	---@type RustaceanToolsOpts
	tools = {
		-- ...
	},
	---@type RustaceanLspClientOpts
	server = {
		on_attach = on_attach,
	},
}
