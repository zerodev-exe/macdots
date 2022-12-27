local lsp = require('lsp-zero')
lsp.preset('recommended')

lsp.ensure_installed({
	'tsserver',
	'eslint',
	'sumneko_lua',
	'rust_analyzer',
})

lsp.on_attach(function(client, bufnr)
	local opts = {buffer = fufnr, remap = false}
	vim.keymap.set('n', "<leader>gd", function() vim.lsp.buf.definition() end, opts)
end)

lsp.setup()
