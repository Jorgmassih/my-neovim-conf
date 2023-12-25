local conf_dir = vim.fn.expand('~/.config/nvim')
local plugin_file_path = conf_dir .. '/plugins.vim'
vim.cmd('source ' .. plugin_file_path)

-- Require sub modules
require("config.barbar")
require("config.vgit")
require("config.toggleterm")
