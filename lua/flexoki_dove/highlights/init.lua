local M = {}

M.groups = function ()

	-- This could be done dynamically by looking for all files, but this approach is fine and is safer
	local modules = {
		require('flexoki_dove.highlights.base').groups(),
		require('flexoki_dove.highlights.mini-nvim').groups(),
		require('flexoki_dove.highlights.flash-nvim').groups(),
		require('flexoki_dove.highlights.neotree').groups(),
		require('flexoki_dove.highlights.todo-comments').groups(),
		-- require('flexoki_dove.highlights.buffer').groups(),
		-- require('flexoki_dove.highlights.cmp').groups(),
		-- require('flexoki_dove.highlights.dashboard').groups(),
		-- require('flexoki_dove.highlights.git').groups(),
		-- require('flexoki_dove.highlights.indent-blank-line').groups(),
		-- require('flexoki_dove.highlights.lsp').groups(),
		-- require('flexoki_dove.highlights.markdown').groups(),
		require('flexoki_dove.highlights.nvim-tree').groups(),
		-- require('flexoki_dove.highlights.telescope').groups(),
		require('flexoki_dove.highlights.treesitter').groups(),
		-- require('flexoki_dove.highlights.whichkey').groups(),
	}

	--- @type table<string, vim.api.keyset.highlight>
	local result = {}

	-- Just takes the list of "modules" from above and combines them all into a single table/array
	for _, groups in pairs(modules) do
		for highlightGroup, group in pairs(groups) do
			result[highlightGroup] = group
		end
	end

	return result
end

return M
