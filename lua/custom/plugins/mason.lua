return {
  "williamboman/mason.nvim",
  lazy = false,
  dependencies = {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "WhoIsSethDaniel/mason-tool-installer.nvim",
  },
  config = function()
    require("mason").setup()
    require("mason-tool-installer").setup({
      ensure_installed = {
        "lua-language-server",
        "typescript-language-server",
        "gopls",
        "stylua",
        "prettierd",
        "prettier",
      },
    })
  end,
}
