require('tabby.tabline').set(function(line)
	return {
		{
			'  ',
		},
		line.tabs().foreach(function(tab)
			local hl = tab.is_current() and 'TabLineSel' or 'TabLine'
			return {
				tab.is_current() and '' or '',
				tab.number(),
				tab.name(),
				' ',
				hl = hl,
				margin = ' ',
			}
		end),
		line.spacer(),
		line.wins_in_tab(line.api.get_current_tab()).foreach(function(win)
			return {
				' ',
				win.is_current() and '' or '',
				win.buf_name(),
				' ',
				margin = ' ',
			}
		end),
		hl = 'TabLine',
	}
end)
