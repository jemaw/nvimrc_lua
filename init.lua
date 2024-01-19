--------------
-- Init Lua --
--------------

require('settings')
require('mappings')

-- plugins and config of plugins
require('plugins/paq')
require('colors')
require('statusline')

--[[

Following:

- https://rsdlt.github.io/posts/rust-nvim-ide-guide-walkthrough-development-debug/
- https://sharksforarms.dev/posts/neovim-rust/

TODO: debugging
TODO: diagnostisc and documentation
TODO plugins: 
    tags (or just use lsp)
    faster large files editing
    tex

TODO layout of configs

TODO some formatting / linting on the lua stuff

]]
