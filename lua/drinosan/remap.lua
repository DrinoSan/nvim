vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- With line i mean highlighed
-- Move current line down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
-- Move current line up
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Joins line below to current line, basically appends line
vim.keymap.set("n", "J", "mzJ`z")

-- Moves screen down and centers it
vim.keymap.set("n", "<C-d>", "<C-d>zz")
-- Moves screen up and centers it
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "<C-d>", "<C-d>zz") --greatest remap ever

-- Replace text with prevously yanked stuff ( stuff should be deleted in visual mode and then x)
-- Text to be replaced must be highlighted
vim.keymap.set("x", "<leader>p", [["_dP]])

-- In visual mode mark the text and remove it but does not save it in the register as only delte (d) would do
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- Search and replace all occurences
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Make executable current file
--vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- C++ stuff switching between header and source
vim.keymap.set("n", "<leader>w", "<cmd>ClangdSwitchSourceHeader<CR>")

-- Compile cmake project
vim.keymap.set("n", "Q", "<cmd>Task start cmake build<CR>")
-- Generate cmake project
vim.keymap.set("n", "QQ", "<cmd>Task start cmake configure<CR>")

-- Search and replace like Vscode ctrl + d
-- * put current word in search register this automatically jumps to the next one
-- ``jumps back and cgn does the search replace thing
-- with "." we can replace next and with "n" we skip
vim.keymap.set("n", "<leader>x", "*``cgn")
vim.keymap.set("n", "<leader>X", "#``cgn")


-- TODO
-- Need to find a shortcut for closing and opening quickfix
-- :ccl is the command to close the quickfix but remember you can still iterate over it even while closed
-- with <C-j> <C-k>
