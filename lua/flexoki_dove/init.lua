local config = require('flexoki_dove.config')

local M = {}

---Load the Flexoki colorscheme
---@param opts FlexokiOptions
M.colorscheme = function(opts)
	config.extend(opts)

	vim.o.termguicolors = true

	if vim.g.colors_name then
		vim.cmd.hi('clear')
	end

	vim.g.colors_name = 'flexoki-dove'

	require('flexoki_dove.theme').set_highlights(config.options)
end

---Set up the Flexoki colorscheme
---@param opts FlexokiOptions
M.setup = function (opts)
	config.extend(opts)
end

return M
