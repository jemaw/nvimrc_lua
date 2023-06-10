local ts = require 'nvim-treesitter.configs'
ts.setup {ensure_installed = {'c', 'python', 'lua', 'rust', 'toml'}, highlight = {enable = true}}
