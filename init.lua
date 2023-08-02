-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })
--
local map = vim.api.nvim_set_keymap
vim.g.mapleader = ','
local options = { noremap = true }
map('n', '<leader>q', ':q<cr>', options)
map('n', '<leader>w', ':w<cr>', options)
map('n', '<F2>', ':NvimTreeToggle<cr>', options)
map('n', 'x', '"_x', options)
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.lsp.handlers['textDocument/publishDiagnostics'] = vim.lsp.with(
    vim.lsp.diagnostic.on_publish_diagnostics,
    {
        underline = true,
        virtual_text = {
            spacing = 5,
            severity_limit = 'Warning',
        },
        update_in_insert = true,
    }
)
