return {
  {
    "tpope/vim-projectionist",
    keys = {
      { "<leader>a", "<cmd>A<cr>", desc = "Go to alternate file" },
    },
    config = function()
      vim.g.projectionist_heuristics = {
        ["mix.exs"] = {
          ["lib/*.ex"] = {
            type = "src",
            alternate = "test/{}_test.exs",
            template = {
              "# lib/{}.ex",
              "defmodule XXX do",
              "end",
            },
          },
          ["test/*_test.exs"] = {
            type = "test",
            alternate = "lib/{}.ex",
            template = {
              "# test/{}_test.exs",
              "defmodule XXX do",
              "",
              "  use ExUnit.Case",
              "",
              "  alias XXX",
              "",
              '  describe "#myfunc/1" do',
              '    test "description" do',
              "      assert true",
              "    end",
              "  end",
              "end",
            },
          },
        },
      }
    end,
    event = "BufEnter",
  },
}
