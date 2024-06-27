-- Atalho para abrir ou fechar o tree
vim.keymap.set("n", "<C-n>", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" })

-- Atalhos para criar linha vazia como insert mode antes ou depois da atual linha
vim.keymap.set("n", "<leader>o", "o<ESC>", { desc = "Insert new line below" })
vim.keymap.set("n", "<leader>O", "O<ESC>", { desc = "Insert new line above" })

-- Atalhos para o terminal integrado
vim.keymap.set("n", "<A-i>", "<cmd>ToggleTerm<CR>", { desc = "Toggle integrated terminal" })

-- Atalhos para os buffers
vim.api.nvim_set_keymap("n", "<TAB>", ":BufferLineCycleNext<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<S-TAB>", ":BufferLineCyclePrev<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>bd", ":BufDel<CR>", { desc = "Delete current buffer" })
vim.keymap.set("n", "<leader>bda", ":BufDelAll<CR>", { desc = "Delete all buffers" })
vim.keymap.set("n", "<leader>bdo", ":BufDelOthers<CR>", { desc = "Delete other buffers" })
