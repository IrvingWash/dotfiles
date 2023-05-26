local cmp = require	'cmp';
local luasnip = require 'luasnip';
local lspkind = require 'lspkind';

cmp.setup {
	snippet = {
		expand = function(args)
			luasnip.lsp_expand(args.body)
		end,
	},
	mapping = {
		['<C-Space>'] = cmp.mapping(cmp.mapping.complete()),
		['<CR>'] = cmp.mapping.confirm { select = true },
		['<Tab>'] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_next_item();
			elseif luasnip.expandable() then
				luasnip.expand();
			elseif luasnip.expand_or_jumpable() then
				luasnip.expand_or_jump();
			else
				fallback();
			end
		end, { 'i', 's' }),
	},
	sources = {
		{ name = 'nvim_lsp' },
		{ name = 'luasnip' },
		{ name = 'buffer' },
		{ name = 'path' },
	},
	confirm_opts = {
		behavior = cmp.ConfirmBehavior.Replace,
		select = false,
	},
	window = {
		documentation = cmp.config.window.bordered(),
	},
	experimental = {
		ghost_text = false,
		native_menu = false,
	},
	formatting = {
		format = lspkind.cmp_format({
			mode = 'symbol_text',
			maxwidth = 50,
		});
	},
}
