require('formatter').setup({
  filetype = {
    python = {
      -- black
      function()
        return {
          exe = "black",
          args = { '-' },
          stdin = true,
        }
      end
    },
    cpp = {
        -- clang-format
       function()
          return {
            exe = "clang-format",
            args = {"--assume-filename", vim.api.nvim_buf_get_name(0)},
            stdin = true,
            cwd = vim.fn.expand('%:p:h')
          }
        end
    },
  }
})

vim.keymap.set('n', 'ff', ':Format<CR>:w<CR>')
