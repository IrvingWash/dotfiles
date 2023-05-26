require('mason').setup({
	ui = {
		icons = {
			package_installed = '✓',
			package_uninstalled = '✗',
			package_pending = '⟳',
		},
	},
});

require('mason-lspconfig').setup();

local on_attach = function(_, bufnr)
	vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

	local map = vim.keymap.set;

	local bufopts = { noremap=true, silent=true, buffer=bufnr }
	map('n', 'gD', vim.lsp.buf.declaration, bufopts)
	map('n', 'gd', vim.lsp.buf.definition, bufopts)
	map('n', 'K', vim.lsp.buf.hover, bufopts)
	map('n', 'gi', vim.lsp.buf.implementation, bufopts)
	map('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
	map('n', '<space>wa', vim.lsp.buf.add_workspace_folder, bufopts)
	map('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
	map('n', '<space>wl', function()
		print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
	end, bufopts)
	map('n', '<space>D', vim.lsp.buf.type_definition, bufopts)
	map('n', '<space>rn', vim.lsp.buf.rename, bufopts)
	map('n', '<space>ca', vim.lsp.buf.code_action, bufopts)
	map('n', 'gr', vim.lsp.buf.references, bufopts)
	map('n', '<space>f', function() vim.lsp.buf.format { async = true } end, bufopts)
end

local lsp_flags = {
	debounce_text_changes = 200,
}

local capabilities = vim.lsp.protocol.make_client_capabilities();

capabilities.textDocument.completion.completionItem.snippetSupport = true
capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

require('mason-lspconfig').setup_handlers {
		function (server_name) -- default handler (optional)
				require('lspconfig')[server_name].setup {
					on_attach = on_attach,
					flags = lsp_flags,
					capabilities = capabilities,
				}
		end
}
