vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Terminal Settings
-- Quick terminal session on bottom
vim.keymap.set("n", "<leader>tb", "<CMD>split<CR> | <C-w>j | :resize 12<CR> | <CMD>term<CR>i")
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>") -- Double escape to normal

-- Line Join Management
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "J", "mzJ`z")

-- Up and down stay in screen middle
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]]) -- delete; bypass register

vim.keymap.set("i", "<C-c>", "<Esc>") -- weird edge case

-- Buffer Management
vim.keymap.set("n", "<leader>bl", "<CMD>buffers<CR>")
vim.keymap.set("n", "<leader>bn", "<CMD>bn<CR>")
vim.keymap.set("n", "<leader>bp", "<CMD>bp<CR>")


vim.keymap.set("n", "<leader>nsd", "<CMD>belowright<Space>") -- New Split Down
vim.keymap.set("n", "<leader>nsr", "<CMD>vert belowright<Space>") -- New Split Right

vim.keymap.set("n", "<leader>w", "<C-W>") --lazy window management
