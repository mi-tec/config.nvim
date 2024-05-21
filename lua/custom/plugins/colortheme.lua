return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("tokyonight").setup({
      styles = {
	comments = { italic = true },
	keywords = { italic = true },
      },
    })
    vim.cmd.colorscheme 'tokyonight-night'
  end,
}
