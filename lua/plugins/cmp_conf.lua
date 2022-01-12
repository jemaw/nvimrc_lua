local opt = vim.opt  -- to set options
local cmp = require'cmp'
opt.completeopt = "menu,menuone,noselect"

cmp.setup({
    sources = cmp.config.sources({
        { name = "buffer" },
        { name = "nvim_lsp" },
        --{ name = "luasnip" },
        { name = "path" }
    }),

    mapping = {
        ["<cr>"] = cmp.mapping.confirm({select = true}),
        ["<s-tab>"] = cmp.mapping.select_prev_item(),
        ["<tab>"] = cmp.mapping.select_next_item(),
    },

    -- snippet = {
      -- expand = function(args)
        -- require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
      -- end,
    -- }
})

-- Use buffer source for `/` search (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline('/', {
    sources = {
        { name = 'buffer' }
    }
})

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(':', {
    sources = cmp.config.sources({
        { name = 'path' }
    }, {
        { name = 'cmdline' }
    })
})

