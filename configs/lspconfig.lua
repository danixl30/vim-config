local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

-- if you just want default config for the servers then put them in a table
local servers = { "html", "clangd" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

lspconfig.css_variables.setup{}

lspconfig.ts_ls.setup{
    on_attach = on_attach,
    capabilities = capabilities,
}

lspconfig.rust_analyzer.setup {
  -- Server-specific settings. See `:help lspconfig-setup`
    on_attach = on_attach,
    capabilities = capabilities,
  filetypes = {"rust"},
  root_dir = lspconfig.util.root_pattern("Cargo.toml"), 
  settings = {
    ['rust-analyzer'] = {},
  },
}

lspconfig.jsonls.setup {
    on_attach = on_attach,
    capabilities = capabilities,
}

-- lspconfig.denols.setup {
--     on_attach = on_attach,
--     capabilities = capabilities,
-- }

lspconfig.graphql.setup {
    on_attach = on_attach,
    capabilities = capabilities,
}

lspconfig.phpactor.setup {
    on_attach = on_attach,
    capabilities = capabilities,
}

lspconfig.kotlin_language_server.setup {
    on_attach = on_attach,
    capabilities = capabilities,
}

lspconfig.pyright.setup {
    on_attach = on_attach,
    capabilities = capabilities,
}

lspconfig.sqlls.setup {
    on_attach = on_attach,
    capabilities = capabilities,
}

lspconfig.tailwindcss.setup {
    on_attach = on_attach,
    capabilities = capabilities,
}

lspconfig.zls.setup {
    on_attach = on_attach,
    capabilities = capabilities,
}

-- lspconfig.eslint.setup {
--   on_attach = function(client, bufnr)
--     vim.api.nvim_create_autocmd("BufWritePre", {
--       buffer = bufnr,
--       command = "EslintFixAll",
--     })
--   end,
-- }

lspconfig.prismals.setup{}

lspconfig.dartls.setup{}

lspconfig.cucumber_language_server.setup{
    settings = {
        cucumber = {
            features = { "**/*.feature" },
            glue = { "**/*.steps.ts", "**/*.step.ts" }
        }
    },
    on_attach = function(client, bufnr)
        vim.keymap.set('n', "<C-]>", vim.lsp.buf.definition, {buffer=0})
        vim.keymap.set('n', "gn", vim.diagnostic.goto_next, {buffer=0})
        vim.keymap.set('n', "gb", vim.diagnostic.goto_prev, {buffer=0})
    end
}

lspconfig.biome.setup {

}

-- 
-- lspconfig.pyright.setup { blabla}
