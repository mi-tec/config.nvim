return {
	{
		'nvim-telescope/telescope.nvim',
		tag = '0.1.8',
		dependencies = {
			'nvim-lua/plenary.nvim',
			{ 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' }
		},
		config = function()
			vim.keymap.set("n", "<space>sf", require('telescope.builtin').find_files)
			vim.keymap.set("n", "<space>sg", require('telescope.builtin').live_grep)
			vim.keymap.set("n", "<space><space>", require('telescope.builtin').buffers)
			vim.keymap.set("n", "<space>sh", require('telescope.builtin').help_tags)
		end
	}
}
