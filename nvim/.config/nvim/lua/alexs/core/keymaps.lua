vim.g.mapleader = " "

local keymap = vim.keymap

-- Might bring problems?
keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

-- cs -> clear search
keymap.set("n", "<leader>cs", ":nohl<CR>", { desc =  "Clear search"})

-- Random keymaps that I might not use, maybe remove later?
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" })
keymap.set("n", "<leader>-", "<C-x>", { desc = "Increment number" })

-- Splits
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split vertically" })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split horizontally" })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Resize split equally" })
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close split" })

-- Tabs
keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" })
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" })
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" })
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to prev tab" })
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current file in new tab" })

-- Split control
keymap.set("n", "<C-l>", "<C-w>v", { desc = "Split vertically" })
keymap.set("n", "<C-l>", "<C-w>s", { desc = "Split horizontally" })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Resize split equally" })
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close split" })
