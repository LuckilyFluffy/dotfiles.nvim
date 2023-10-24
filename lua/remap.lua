-- Open nvim-tree
vim.keymap.set("n", "<space>", vim.cmd.NvimTreeToggle)

-- Select all text in the buffer
vim.keymap.set("n", "<C-a>", "ggVG")
vim.keymap.set("i", "<C-a>", "<C-o>gg<C-o>VG")

-- Move selection around
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
