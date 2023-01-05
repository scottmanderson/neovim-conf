vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({"n", "v"}, "<leader>d", [["_d]]) -- delete; bypass register

vim.keymap.set("i", "<C-c>", "<Esc>") -- weird edge case

-- Buffer Management
vim.keymap.set("n", "<leader>bl", ":buffers<CR>")
vim.keymap.set("n", "<leader>bn", ":bn<CR>")
vim.keymap.set("n", "<leader>bp", ":bp<CR>")


vim.keymap.set("n", "<leader>nsd", ":belowright<Space>") -- New Split Right
vim.keymap.set("n", "<leader>nsr", ":vert belowright<Space>") -- New Split Right

vim.keymap.set("n", "<leader>w", "<C-W>") --lazy window management
