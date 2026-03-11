local config = require('flexoki_dove.config')

local M = {}

local base_colors = {
	['flexoki-black']       = '#100F0F',
	['flexoki-paper']       = '#F4F5F7',

	['flexoki-950']         = '#1C1B1A',
	['flexoki-900']         = '#282726',
	['flexoki-850']         = '#343331',
	['flexoki-800']         = '#403E3C',
	['flexoki-700']         = '#575653',
	['flexoki-600']         = '#6B6E73',
	['flexoki-500']         = '#878580',
	['flexoki-300']         = '#B0B5BD',
	['flexoki-200']         = '#C9CED5',
	['flexoki-150']         = '#D8DCE2',
	['flexoki-100']         = '#E3E7EC',
	['flexoki-50']          = '#EEF1F5',

	['flexoki-red-600']     = '#AF3029',
	['flexoki-red-400']     = '#D14D41',

	['flexoki-orange-600']  = '#BC5215',
	['flexoki-orange-400']  = '#DA702C',

	['flexoki-yellow-900']  = '#4D3A0B',
	['flexoki-yellow-600']  = '#AD8301',
	['flexoki-yellow-400']  = '#D0A215',
	['flexoki-yellow-100']  = '#FCEEB8',

	['flexoki-green-600']   = '#66800B',
	['flexoki-green-400']   = '#879A39',

	['flexoki-cyan-950']    = '#142625',
	['flexoki-cyan-600']    = '#24837B',
	['flexoki-cyan-400']    = '#3AA99F',
	['flexoki-cyan-50']     = '#EBF2E7',

	['flexoki-blue-600']    = '#205EA6',
	['flexoki-blue-400']    = '#4385BE',

	['flexoki-purple-600']  = '#5E409D',
	['flexoki-purple-400']  = '#8B7EC8',

	['flexoki-magenta-600'] = '#A02F6F',
	['flexoki-magenta-400'] = '#CE5D97',
}

local variants = {
	light = {
		_name      = 'light',
		background = 'light',
		['bg']     = base_colors['flexoki-paper'],
		['bg-2']   = base_colors['flexoki-50'],
		['ui']     = base_colors['flexoki-100'],
		['ui-2']   = base_colors['flexoki-150'],
		['ui-3']   = base_colors['flexoki-200'],
		['tx-3']   = base_colors['flexoki-300'],
		['tx-2']   = base_colors['flexoki-600'],
		['tx']     = base_colors['flexoki-black'],
		['re']     = base_colors['flexoki-red-600'],
		['re-2']   = base_colors['flexoki-red-400'],
		['or']     = base_colors['flexoki-orange-600'],
		['or-2']   = base_colors['flexoki-orange-400'],
		['ye']     = base_colors['flexoki-yellow-600'],
		['ye-2']   = base_colors['flexoki-yellow-400'],
		['gr']     = base_colors['flexoki-green-600'],
		['gr-2']   = base_colors['flexoki-green-400'],
		['cy']     = base_colors['flexoki-cyan-600'],
		['cy-2']   = base_colors['flexoki-cyan-400'],
		['bl']     = base_colors['flexoki-blue-600'],
		['bl-2']   = base_colors['flexoki-blue-400'],
		['pu']     = base_colors['flexoki-purple-600'],
		['pu-2']   = base_colors['flexoki-purple-400'],
		['ma']     = base_colors['flexoki-magenta-600'],
		['ma-2']   = base_colors['flexoki-magenta-400'],
	}
}

M.palette = function ()
	local variant = variants[config.options.variant] or variants.light
	vim.o.background = variant.background

	return variant
end

return M
