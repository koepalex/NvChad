---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },

    --  format with conform
    ["<leader>fm"] = {
      function()
        require("conform").format()
      end,
      "formatting",
    },
    -- undo
    -- ["<C-z>"] = {":undo <CR>", "Undo"},

  },
  i = {
    -- ["<C-z"] = { "<C-o>u", "Undo"},
  },
  v = {
    [">"] = { ">gv", "indent"},
    ["<"] = { "<gv", "indent"},
  },
}

-- more keybinds!

return M
