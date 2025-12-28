-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.lsp.config("elixirls", {
  cmd = { "~/.elixir-ls/release/language_server.sh" },
})
