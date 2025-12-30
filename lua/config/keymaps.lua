-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- " Copy the current file path with <leader>c
-- nnoremap <leader>c :let @+ = expand("%")<cr>
-- " <leader>C for <filename>:<current line>
-- nnoremap <leader>C :let @+ = expand("%") . ":" . line(".")<cr>

local map = vim.keymap.set

map("n", "<leader>c", '<cmd>let @+ = expand("%")<cr>', { desc = "Copy the current file path" })
map(
  "n",
  "<leader>C",
  '<cmd>let @+ = expand("%") . ":" . line(".")<cr>',
  { desc = "Copy the current file path and line no" }
)
