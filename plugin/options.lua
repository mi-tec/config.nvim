local opt = vim.opt

opt.number = true
opt.relativenumber = true
opt.mouse = "a"
opt.hlsearch = true
opt.wrap = true
opt.breakindent = true
opt.shiftwidth = 2
vim.g.have_nerd_font = true
vim.opt.showmode = false
vim.opt.clipboard = "unnamedplus"
vim.opt.undofile = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.signcolumn = "yes"
vim.opt.updatetime = 250
vim.opt.timeoutlen = 300
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.cursorline = true
vim.opt.scrolloff = 10
vim.opt.hlsearch = true

vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlight when yanking (copying) text",
  group = vim.api.nvim_create_augroup("migara-nvim", { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})
