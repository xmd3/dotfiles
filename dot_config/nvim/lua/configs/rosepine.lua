local M = {}

function M.config()
  local status_ok, rosepine = pcall(require, "rose-pine")
  if not status_ok then
    return
  end

  rosepine.setup {
    dark_variant = "moon",
    bold_vert_split = false,
    dim_nc_background = false,
    disable_background = false,
    disable_float_background = false,
    disable_italics = false,
  }

  vim.cmd "colorscheme rose-pine"
end

return M
