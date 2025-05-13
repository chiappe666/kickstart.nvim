return {
  'mfussenegger/nvim-lint',
  config = function()
    local lint = require 'lint'

    lint.linters.cpplint = {
      cmd = 'cpplint',
      stdin = false,
      args = {}, -- Removed inline arguments to allow CPPLINT.cfg to take effect
      stream = 'stderr',
      ignore_exitcode = true,
      parser = require('lint.parser').from_errorformat [[%f:%l: %m]],
    }

    lint.linters_by_ft = {
      cpp = { 'cpplint' },
      c = { 'cpplint' },
    }

    vim.api.nvim_create_autocmd({ 'BufWritePost' }, {
      callback = function()
        require('lint').try_lint()
      end,
    })
  end,
}
