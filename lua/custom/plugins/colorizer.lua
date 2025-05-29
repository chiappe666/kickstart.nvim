return {
  {
    'norcalli/nvim-colorizer.lua',
    config = function()
      require('colorizer').setup {
        '*', -- Apply colorizer to all filetypes
        css = { rgb_fn = true }, -- Enable color highlighting for RGB functions in CSS
      }
    end,
  },
}
