return {
	{
		"neovim/nvim-lspconfig",
		dependecies = {
			"saghen/blink.cmp",
			"folke/lazydev.nvim",
			ft = "lua", -- only load on lua files
			opts = {
				library = {
					{ path = "${3rd}/luv/library", words = { "vim%.uv" } },
				},
			},
		},
		config = function()
			local capabilities = require('blink.cmp').get_lsp_capabilities()
			require("lspconfig").lua_ls.setup { capabilities = capabilites }

			vim.api.nvim_create_autocmd('LspAttach', {
				callback = function(args)
					local client = vim.lsp.get_client_by_id(args.data.client_id)
					if not client then return end

					if client.supports_method('textDocument/formatting', 0) then
						vim.api.nvim_create_autocmd('BufWritePre', {
							buffer = args.buf,
							callback = function()
								vim.lsp.buf.format({ bufnr = args.bufa, id = client.id })
							end,
						})
					end
				end,
			})
		end
	}
}
