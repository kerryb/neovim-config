-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- " Copy the current file path with <leader>c
-- nnoremap <leader>c :let @+ = expand("%")<cr>
-- " <leader>C for <filename>:<current line>
-- nnoremap <leader>C :let @+ = expand("%") . ":" . line(".")<cr>

local map = vim.keymap.set

-- Mac copy/paste (from Neovide FAQ)
if vim.g.neovide then
  local function copy()
    vim.cmd([[normal! "+y]])
  end
  local function paste()
    vim.api.nvim_paste(vim.fn.getreg("+"), true, -1)
  end

  vim.keymap.set("v", "<D-c>", copy, { silent = true, desc = "Copy" })
  vim.keymap.set({ "n", "i", "v", "c", "t" }, "<D-v>", paste, { silent = true, desc = "Paste" })
end

-- Move Lines (default alt mappings don’t play nicely with macOS)
map("n", "]x", "<cmd>execute 'move .+' . v:count1<cr>==", { desc = "Move Down" })
map("n", "[x", "<cmd>execute 'move .-' . (v:count1 + 1)<cr>==", { desc = "Move Up" })
map("i", "]x", "<esc><cmd>m .+1<cr>==gi", { desc = "Move Down" })
map("i", "[x", "<esc><cmd>m .-2<cr>==gi", { desc = "Move Up" })
map("v", "]x", ":<C-u>execute \"'<,'>move '>+\" . v:count1<cr>gv=gv", { desc = "Move Down" })
map("v", "[x", ":<C-u>execute \"'<,'>move '<-\" . (v:count1 + 1)<cr>gv=gv", { desc = "Move Up" })

-- Miscellaneous
map("n", "<leader>c", '<cmd>let @+ = expand("%")<cr>', { desc = "Copy the current file path" })
map(
  "n",
  "<leader>C",
  '<cmd>let @+ = expand("%") . ":" . line(".")<cr>',
  { desc = "Copy the current file path and line no" }
)

map("n", "<leader>h", "<cmd>nohlsearch<cr>", { desc = "Clear search result highlighting" })
