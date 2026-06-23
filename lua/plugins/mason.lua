return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        elixir_ls = {
          mason = false,
          enabled = false,
        },
      },
    },
  },
}
