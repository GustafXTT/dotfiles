return require('packer').startup(function(use)

	use 'wbthomason/packer.nvim'

	use({
		'kylechui/nvim-surround',
		tag = '*',
		config = function()
		require("nvim-surround").setup({
	})
	end})

	use {'dracula/vim', as = 'dracula'}

	use 'tpope/vim-repeat'

	use 'ggandor/leap.nvim'
end)

