-------------------------
-- General Settings
-------------------------

local opt = vim.opt  -- to set options

----------------
-- Completion 
----------------

vim.opt.completeopt = "menu,menuone,noinsert,noselect"

-- Avoid showing extra messages when using completion
vim.opt.shortmess = vim.opt.shortmess + "c"

-- Fixed column for diagnostics to appear
-- Show autodiagnostic popup on cursor hover_range
-- Goto previous / next diagnostic warning / error 
-- Show inlay_hints more frequently 
vim.api.nvim_set_option('updatetime', 300)
vim.cmd([[
set signcolumn=yes
autocmd CursorHold * lua vim.diagnostic.open_float(nil, { focusable = false })
]])

----------------
-- Folding 
----------------

opt.foldmethod = "expr"
opt.foldexpr = "nvim_treesitter#foldexpr()"
opt.foldlevelstart=0
opt.foldnestmax = 3
opt.foldlevelstart = 3

----------------
-- Misc 
----------------

-- tags filename
opt.tags = "./tags;,tags";
-- use space as a the leader key
vim.g.mapleader = ' '
-- allows unsaved buffers
opt.hidden = true
-- change title of window
opt.title = true
-- use * clipboard
opt.clipboard = opt.clipboard + "unnamed"
-- automatically change working directory
opt.autochdir = true
-- signcolumn in numbers
opt.signcolumn = "number"
-- formatting no automatic insert of comment character
vim.opt.formatoptions:remove { "c", "r", "o" }

----------------
-- Searching
---------------

-- highlight search
opt.hlsearch = true

-- Show search results as you type
opt.incsearch = true

-- Ignore case in searches if query doesn't include capitals
opt.ignorecase = true
opt.smartcase = true

-- preview effects of substitute command
opt.icm = "split"

----------------
-- Appearance
----------------

opt.colorcolumn = "120"
opt.number = true
opt.relativenumber = false
opt.showmode = false

----------------
-- wildmenu
----------------

opt.wildmenu = true
opt.wildignorecase=true
opt.wildignore = opt.wildignore + "*.swp,.tags,*.bak,*.pyc,*.class,*.jar"
opt.wildignore = opt.wildignore + "*.gif,*.png,*.jpg,*.ico"
opt.wildignore = opt.wildignore + "*.pdf,*.psd"
opt.wildignore = opt.wildignore + "node_modules/*"

----------------
-- Movement
----------------
opt.mouse = "a"
-- cursor position stays the same
opt.startofline = false
opt.scrolloff = 10
opt.sidescroll = 1

----------------
-- Indent
----------------
opt.tabstop=4
opt.softtabstop = 4 
opt.shiftwidth = 4 
opt.expandtab = true

-- cindent options
opt.cino = "i0,N-s,g0"
