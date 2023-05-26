require('neo-tree').setup({
	close_if_last_window = true,
	enable_diagnostics = false,
	source_selector = {
		winbar = true,
		content_layout = 'center',
	},
	default_component_configs = {
		indent = { padding = 0 },
	},
	window = {
		width = 30,
		mappings = {
			['<space>'] = false, -- disable space until we figure out which-key disabling
			o = 'open',
			H = 'prev_source',
			L = 'next_source',
		},
	},
	filesystem = {
		follow_current_file = true,
		hijack_netrw_behavior = 'open_current',
		use_libuv_file_watcher = true,
		window = { mappings = { h = 'toggle_hidden' } },
	},
});
