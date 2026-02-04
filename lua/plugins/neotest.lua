return {
  "nvim-neotest/neotest",
  keys = {
    {
      "<leader>tt",
      function()
        vim.cmd("wa")
        require("neotest").run.run(vim.fn.expand("%"))
      end,
      desc = "Run File (Neotest)",
    },
    {
      "<leader>tT",
      function()
        vim.cmd("wa")
        require("neotest").run.run(vim.uv.cwd())
      end,
      desc = "Run All Test Files (Neotest)",
    },
    {
      "<leader>tr",
      function()
        vim.cmd("wa")
        require("neotest").run.run()
      end,
      desc = "Run Nearest (Neotest)",
    },
    {
      "<leader>tl",
      function()
        vim.cmd("wa")
        require("neotest").run.run_last()
      end,
      desc = "Run Last (Neotest)",
    },
  },
}
