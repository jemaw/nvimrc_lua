local vimwiki_path = "$HOME/wiki"
local vimwiki_export_path = vimwiki_path .. "../export/"
local g = vim.g
g.vimwiki_table_mappings = 0
g.vimwiki_global_ext = 0
g.vimwiki_folding = "expr"
g.vimwiki_list = {
	{
		path = vimwiki_path,
		path_html = vimwiki_export_path,
		template_path = vimwiki_export_path .. "assetes/",
		template_default = "default",
		template_ext = ".tpl",
		auto_export = 0,
		nexted_syntaxes = {
			python = "python",
			["c++"] = "cpp",
		},
		auto_toc = 0,
	},
}
--[[ nnoremap <leader>wss :VimwikiSearch 
    imap <Plug>DisableNextS <Plug>VimwikiListNextSymbol
    imap <Plug>DisablePrevS <Plug>VimwikiListPrevSymbol
    imap <Plug>DisableToggle <Plug>VimwikiListToggle ]]
