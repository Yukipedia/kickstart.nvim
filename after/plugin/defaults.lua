local opt = vim.opt

opt.relativenumber = true

opt.foldmethod = "expr"
opt.foldexpr = "nvim_treesitter#foldexpr()"
opt.foldenable = false

opt.list = true
opt.listchars:append "space:⋅"
-- opt.listchars:append "eol:↴"

-- Windows OS only
if vim.loop.os_uname().sysname == "Windows_NT" then
  vim.o.shell = "pwsh.exe"
end
vim.o.sessionoptions="blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"

--[[mappings]]

--[[user]]
-- Map Esc key for exit Terminal mode.
vim.keymap.set("t", "<Esc>", "<C-\\><c-n>")

-- Map J,K to <Esc> in insert mode.
vim.keymap.set("i", "jk", "<Esc>")

-- Map ALT+{h,j,k,l} to navigate windows from any mode.
-- Terminal mode
vim.keymap.set("t", "<A-h>", "<C-\\><C-N><C-w>h")
vim.keymap.set("t", "<A-j>", "<C-\\><C-N><C-w>j")
vim.keymap.set("t", "<A-k>", "<C-\\><C-N><C-w>k")
vim.keymap.set("t", "<A-l>", "<C-\\><C-N><C-w>l")
-- Insert mode
vim.keymap.set("i", "<A-h>", "<C-\\><C-N><C-w>h")
vim.keymap.set("i", "<A-j>", "<C-\\><C-N><C-w>j")
vim.keymap.set("i", "<A-k>", "<C-\\><C-N><C-w>k")
vim.keymap.set("i", "<A-l>", "<C-\\><C-N><C-w>l")
-- Normal mode
vim.keymap.set("n", "<A-h>", "<C-\\><C-N><C-w>h")
vim.keymap.set("n", "<A-j>", "<C-\\><C-N><C-w>j")
vim.keymap.set("n", "<A-k>", "<C-\\><C-N><C-w>k")
vim.keymap.set("n", "<A-l>", "<C-\\><C-N><C-w>l")
