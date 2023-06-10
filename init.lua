--------------
-- Init Lua --
--------------


require('settings')
require('mappings')

-- plugins and config of plugins
require('plugins/paq')
require('colors')

--[[
TODO: debugging
TODO: diagnostisc and documentation
TODO plugins: 
    tags (or just use lsp)
    faster large files editing
    tex
    better telescope config

TODO move autogroups to lua
TODO layout of configs

TODO appearance: more colorschemes
TODO simplified version without plugins
]]
