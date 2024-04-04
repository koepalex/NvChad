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
    ["<leader>ne"] = {":lua vim.diagnostic.goto_next()<CR>", "Goto [n]ext [e]rror", opts = { noremap = true, silent = true }},
    ["<leader>pe"] = {":lua vim.diagnostic.goto_prev()<CR>", "Goto [p]revious [e]rror", opts = { noremap = true, silent = true }},
    ["<leader>ca"] = {":lua vim.lsp.buf.code_action()<CR>", "Open [c]ode [a]ctions", opts = { noremap = true, silent = true }},
    -- undo
    -- ["<C-z>"] = {":undo <CR>", "Undo"},

  },
  i = {
    -- ["<C-z"] = { "<C-o>u", "Undo"},  
  },
  v = {
    [">"] = { ">gv", "indent"},
    ["<"] = { "<gv", "indent"},
    ["K"] = { ":m -2<CR>", "Bubble single line up"},
    ["J"] = { ":m +1<CR>", "Bubble single line down"},
    ["<leader>cs"] = { ":CodeSnapSave<CR>", "Save selection as screenshot"},
  },
}

-- more keybinds!

return M
