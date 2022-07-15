local colors = require("terra.palette")

---@return Colors
local function select_colors()
	local selected = {}
	selected = vim.tbl_extend("force", selected, colors[vim.g.terra_config.style])
	selected = vim.tbl_extend("force", selected, vim.g.terra_config.colors)
	return selected
end

return select_colors()
