return {
  "elixir-tools/elixir-tools.nvim",
  config = function()
    local elixir = require("elixir")
    local elixirls = require("elixir.elixirls")

    elixir.setup({
      elixirls = { enable = false },
    })
  end,
}
