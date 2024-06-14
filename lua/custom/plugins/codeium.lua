return {
  'Exafunction/codeium.vim',
  event = 'BufEnter',
  config = function()
    vim.keymap.set('i', '<C-g>', function()
      return vim.fn['codeium#Accept']()
    end, { expr = true, silent = true })
    vim.keymap.set('i', '<C-f>', function()
      return vim.fn['codeium#Complete']()
    end, { expr = true, silent = true })
    vim.g.codeium_no_map_tab = 1
  end,
}
