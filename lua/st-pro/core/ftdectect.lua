local M = {}

function M.setup()
	vim.filetype.add({
		extension = {
			st = "st",
			iec = "st",
		},
		-- Om vi vill detektera baserat på innehåll (t.ex. om filen börjar med PROGRAM)
		pattern = {
			[".*%.txt"] = function(path, bufnr)
				if vim.api.nvim_buf_get_lines(bufnr, 0, 1, false)[1]:find("^PROGRAM") then
					return "st"
				end
			end,
		},
	})
end

return M
