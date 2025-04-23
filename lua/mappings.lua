require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set
local cmp = require("cmp")

local options = { noremap = true }
map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map('n', '<leader>q', ':q<cr>', options)
map('n', '<leader>w', ':w<cr>', options)
map('n', '<F2>', ':NvimTreeToggle<cr>', options)
map('n', 'x', '"_x', options)
map('i', "<UP>", cmp.mapping.select_prev_item()) -- previous suggestion)
map('i', "<DOWN>", cmp.mapping.select_next_item()) -- previous suggestion)
map('i', "<S-TAB>", cmp.mapping.scroll_docs(-4)) -- previous suggestion)
map('i', "<TAB>", cmp.mapping.scroll_docs(4)) -- previous suggestion)
map('i', "<C-Space>", cmp.mapping.complete()) -- previous suggestion)
map('i', "<RIGHT>", cmp.mapping.abort()) -- previous suggestion)
map('i', "<CR>", cmp.mapping.confirm({ select = false })) -- previous suggestion)
map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
