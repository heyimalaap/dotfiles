local capabilities = require('cmp_nvim_lsp').update_capabilities(
                                vim.lsp.protocol.make_client_capabilities()
                     )

local lsp_config = require('lspconfig')
local kbind = require('snooze/keymap_helper')

nnoremap = kbind.nnoremap;

lsp_config.rust_analyzer.setup {
    capabilities = capabilities
}

lsp_config.tsserver.setup {
    capabilities = capabilities
}

lsp_config.gopls.setup {
    capabilities = capabilities
}

lsp_config.clangd.setup {
    capabilities = capabilities,
    cmd = {"clangd"}
}

nnoremap('gd', vim.lsp.buf.definition)
nnoremap('gD', vim.lsp.buf.declaration)
nnoremap('gi', vim.lsp.buf.implementation)
nnoremap('gw', vim.lsp.buf.document_symbol)
nnoremap('gw', vim.lsp.buf.workspace_symbol)
nnoremap('gr', vim.lsp.buf.references)
nnoremap('gt', vim.lsp.buf.type_definition)
nnoremap('K', vim.lsp.buf.hover)
nnoremap('<c-k>', vim.lsp.buf.signature_help)
nnoremap('<leader>ga', vim.lsp.buf.code_action)
nnoremap('<leader>gr', vim.lsp.buf.rename)
