vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", {
    desc = "Abrir explorador de arquivos",
})

vim.keymap.set("n", "<leader>[", "<cmd>ToggleTerm<CR>", {
    desc = "Toggle Terminal",
})

vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]], {
    desc = "Sair do modo terminal",
})




-- Próximo terminal
vim.keymap.set("n", "<M-]>", "<cmd>ToggleTerm 2<CR>", {
    desc = "Terminal 2",
})

-- Terminal anterior
vim.keymap.set("n", "<M-[>", "<cmd>ToggleTerm 1<CR>", {
    desc = "Terminal 1",
})

-- Criar novo terminal horizontal
local Terminal = require("toggleterm.terminal").Terminal

vim.keymap.set("n", "<leader>tn", function()
    local term = Terminal:new({
        direction = "horizontal",
        size = 15,
    })

    term:toggle()
end, {
    desc = "Novo terminal horizontal",
})
