return{
	'rose-pine/neovim',
	config = function()
		require('rose-pine').setup({variant='dawn'})
		vim.cmd.colorscheme 'rose-pine'
	end,
}
