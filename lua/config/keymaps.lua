vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", {
    desc = "Abrir explorador de arquivos",
})

vim.keymap.set("n", "<leader>[", "<cmd>ToggleTerm<CR>", {
    desc = "Toggle Terminal",
})

vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]], {
    desc = "Sair do modo terminal",
})

local term_api = require("toggleterm.terminal")
local Terminal = term_api.Terminal

vim.keymap.set("n", "<leader>tn", function()
    local term = Terminal:new({
        direction = "horizontal",
        size = 15,
    })

    term:toggle()
end, {
    desc = "Novo terminal horizontal",
})

local function cycle_open_terms(step)
    local open = {}
    for _, term in ipairs(term_api.get_all(true)) do
        if term:is_open() then
            table.insert(open, term)
        end
    end

    if #open == 0 then
        vim.notify("Nenhum terminal aberto", vim.log.levels.INFO)
        return
    end

    local current
    for i, term in ipairs(open) do
        if term:is_focused() then
            current = i
            break
        end
    end

    local target
    if not current then
        target = step > 0 and open[1] or open[#open]
    else
        target = open[((current - 1 + step) % #open) + 1]
    end

    target:focus()
    vim.cmd("startinsert")
end

vim.keymap.set({ "n", "t" }, "<M-]>", function()
    cycle_open_terms(1)
end, {
    desc = "Próximo terminal aberto",
})

vim.keymap.set({ "n", "t" }, "<M-[>", function()
    cycle_open_terms(-1)
end, {
    desc = "Terminal aberto anterior",
})