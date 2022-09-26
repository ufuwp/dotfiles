require('plugins')
-- load legacy options
vim.cmd([[
	so ~/.config/nvim/legacy.vim
]])

require('mynvimcmp')
require('mylsp')
require('mytreesitter')

-- -- lsp_signature.nvim
-- lsp_signature_cfg = {
--     hint_prefix = "",
--     floating_window = false,
-- }
-- require "lsp_signature".setup(lsp_signature_cfg)
require('nvim-autopairs').setup {}

-- nvim indent-guides
vim.opt.list = true
--vim.opt.listchars:append "space:⋅"
--vim.opt.listchars:append "eol:↴"

require("indent_blankline").setup {
    show_end_of_line = false,
}

require('lualine').setup()
