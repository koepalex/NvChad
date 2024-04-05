-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })

-- Activate spell checking for english
vim.opt.spelllang = "en_us"
vim.opt.spell = true
vim.opt.colorcolumn = "80,120"
vim.g.maplocalleader = " "
