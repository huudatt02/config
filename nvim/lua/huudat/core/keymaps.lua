vim.g.mapleader = " "

local map = vim.keymap.set

-- Exit insert mode
map("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

-- Save file
map("n", "<leader>w", "<cmd>w<CR>", { desc = "Save file" })
map("v", "<leader>w", "<cmd>w<CR>gv", { desc = "Save file in visual mode" })

-- Quit file
map("n", "<leader>q", "<cmd>confirm q<CR>", { desc = "Quit file" })
map("n", "<leader>wq", "<cmd>confirm wq<CR>", { desc = "Save and quit file" })

-- Window management
map("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
map("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
map("n", "<leader>se", "<C-w>=", { desc = "Equalize split window sizes" })
map("n", "<leader>sc", "<C-w>c", { desc = "Close current split" })

-- Move between windows
map("n", "<C-h>", "<C-w>h", { desc = "Go to Left Window" })
map("n", "<C-j>", "<C-w>j", { desc = "Go to Lower Window" })
map("n", "<C-k>", "<C-w>k", { desc = "Go to Upper Window" })
map("n", "<C-l>", "<C-w>l", { desc = "Go to Right Window" })

-- Resize window
map("n", "<C-Up>", "<cmd>resize -5<CR>", { desc = "Resize split up" })
map("n", "<C-Down>", "<cmd>resize +5<CR>", { desc = "Resize split down" })
map("n", "<C-Left>", "<cmd>vertical resize -5<CR>", { desc = "Resize split left" })
map("n", "<C-Right>", "<cmd>vertical resize +5<CR>", { desc = "Resize split right" })

-- Buffers
map("n", "<Tab>", "<cmd>bnext<CR>", { desc = "Next buffer" })
map("n", "<S-Tab>", "<cmd>bprevious<CR>", { desc = "Previous buffer" })
map("n", "<leader>bn", "<cmd>enew<CR>", { desc = "New buffer" })

-- Tabs
map("n", "<leader>tn", "<cmd>tabnew<CR>", { desc = "Open new tab" })
map("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" })
map("n", "<leader>tl", "<cmd>tabnext<CR>", { desc = "Next tab" })
map("n", "<leader>th", "<cmd>tabprevious<CR>", { desc = "Previous tab" })
map("n", "<leader>to", "<cmd>tabonly<CR>", { desc = "Close other tabs" })
