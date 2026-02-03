-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

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
vim.keymap.set("n", "]x", "<cmd>execute 'move .+' . v:count1<cr>==", { desc = "Move Down" })
vim.keymap.set("n", "[x", "<cmd>execute 'move .-' . (v:count1 + 1)<cr>==", { desc = "Move Up" })
vim.keymap.set("i", "]x", "<esc><cmd>m .+1<cr>==gi", { desc = "Move Down" })
vim.keymap.set("i", "[x", "<esc><cmd>m .-2<cr>==gi", { desc = "Move Up" })
vim.keymap.set("v", "]x", ":<C-u>execute \"'<,'>move '>+\" . v:count1<cr>gv=gv", { desc = "Move Down" })
vim.keymap.set("v", "[x", ":<C-u>execute \"'<,'>move '<-\" . (v:count1 + 1)<cr>gv=gv", { desc = "Move Up" })

-- Miscellaneous
vim.keymap.set("n", "<leader>c", '<cmd>let @+ = expand("%")<cr>', { desc = "Copy the current file path" })
vim.keymap.set(
  "n",
  "<leader>C",
  '<cmd>let @+ = expand("%") . ":" . line(".")<cr>',
  { desc = "Copy the current file path and line no" }
)

vim.keymap.set("n", "<leader>h", "<cmd>nohlsearch<cr>", { desc = "Clear search result highlighting" })
