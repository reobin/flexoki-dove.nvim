---@alias Variant 'light'
---@alias FloatWindowStyle 'auto' | 'border' | 'solid' | 'borderless'

local M = {}

---@class FlexokiOptions
M.options = {
	---Set the desired variant. This fork is light-only.
	---@type Variant?
	variant = 'light',

	---The style to use for float windows, `winborder == 'none'` works best
	---with a different background than code, while all the other ones work
	---best with the same one, 'auto' will check `vim.opt.winborder` when
	---applying the colorscheme to decide
	---@type FloatWindowStyle?
	float_window_style = 'auto',

	---@type table<string, vim.api.keyset.highlight>?
	highlight_groups = {},
}

---@param options FlexokiOptions|nil
function M.extend(options)
	M.options = vim.tbl_deep_extend('force', M.options, options or {})
end

return M
