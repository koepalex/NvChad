---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },

    --  format with conform
    ["<leader>f"] = {
      function()
        require("conform").format()
      end,
      "formatting",
    },
    ["<leader>ne"] = {":lua vim.diagnostic.goto_next()<CR>", "Goto [n]ext [e]rror", opts = { noremap = true, silent = true }},
    ["<leader>pe"] = {":lua vim.diagnostic.goto_prev()<CR>", "Goto [p]revious [e]rror", opts = { noremap = true, silent = true }},
    ["<leader>ca"] = {":lua vim.lsp.buf.code_action()<CR>", "Open [c]ode [a]ctions", opts = { noremap = true, silent = true }},
    ["<leader>rn"] = {":lua vim.lsp.buf.rename()<CR>", "[R]enames symbol", opts = { noremap = true, silent = true }},
    ["gd"] = {":lua vim.lsp.buf.definition()<CR>", "[G]oto [d]efinition", opts = { noremap = true, silent = true }},
    ["gD"] = {":lua vim.lsp.buf.declaration()<CR>", "[G]oto [D]eclaration", opts = { noremap = true, silent = true }},
    ["gr"] = {":lua vim.lsp.buf.references()<CR>", "[G]oto [r]eferences", opts = { noremap = true, silent = true }},
    ["K"] = {":lua vim.lsp.buf.hover()<CR>", "Show documentation of symbol", opts = { noremap = true, silent = true }},
    ["<leader>se"] = {":lua vim.diagnostic.open_float()<CR>", "[s]how [e]rror in floating window", opts = { noremap = true, silent = true }},
    ["<leader>sh"] = {":lua vim.lsp.buf.signature_help()<CR>", "[S]how signature [h]elp", opts = { noremap = true, silent = true }},
    ["<leader>ws"] = {":lua vim.lsp.buf.workspace_symbol()<CR>", "Search [w]orkspace [s]ymbols", opts = { noremap = true, silent = true }},
    ["<leader>nw"] = {":Neorg workspace work<CR>", "[N]otes [w]ork workspace", opts = { noremap = true, silent = true }},
    ["<leader>np"] = {":Neorg workspace private<CR>", "[N]otes [p]rivate workspace", opts = { noremap = true, silent = true }},
    ["<leader>ni"] = {":Neorg index<CR>", "Open [n]otes [i]ndex", opts = { noremap = true, silent = true }},
    ["<leader>nn"] = {":Neorg keybind norg core.dirman.new.note<CR>", "Create [n]ew [n]ote", opts = { noremap = true, silent = true }},
    ["<leader>uni"] = {":UnicodeSearch!", "Insert [uni]code", opts = { noremap = true, silent = true }},
    ["q"] = {"<C-v>", "Enter Visual Block Mode", opts = { noremap = true, silent = true }},
    ["-"] = {":Oil<CR>", "Open Parent folder as vim buffer", opts = { noremap = true, silent = true }},
    ["<leader>co"] = {":Copilot panel open<CR>", "Open [c]opilot [p]anel", opts = { noremap = true, silent = true }},
  },
  i = {
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
