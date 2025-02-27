local M = {}
local hi = function(name, val)
  vim.api.nvim_set_hl(0, name, val)
end
local config = require("pywal.config")

function M.highlight_all(colors)
  local base_highlights = config.highlights_base(colors)
  for group, properties in pairs(base_highlights) do
    hi(group, properties)
  end
end

return M
