return {
  {
    'norcalli/nvim-colorizer.lua',
    cond = function()
      return vim.env.TERM ~= 'linux'
    end,
    config = function()
      require('colorizer').setup {
        '*', -- Apply colorizer to all filetypes
        css = { rgb_fn = true }, -- Enable color highlighting for RGB functions in CSS
      }
    end,
  },
}
