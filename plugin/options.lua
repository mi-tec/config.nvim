local opt = vim.opt

opt.number = true
opt.relativenumber = true
opt.mouse = "a"
opt.hlsearch = true
opt.wrap = true
opt.breakindent = true
opt.shiftwidth = 2

vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlight when yanking (copying) text",
  group = vim.api.nvim_create_augroup("migara-nvim", { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})
