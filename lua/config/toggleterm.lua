vim.g.mapleader = ","



require("toggleterm").setup{
  -- size can be a number or function which is passed the current terminal
  size = function(term)
    if term.direction == "horizontal" then
      return math.floor(vim.o.lines * 0.4)
    elseif term.direction == "vertical" then
      return math.floor(vim.o.columns * 0.3)
    end
  end,
  open_mapping = [[<leader><leader>]],
  hide_numbers = true, -- hide the number column in toggleterm buffers
  autochdir = false, -- when neovim changes it current directory the terminal will change it's own when next it's opened
  shade_terminals = true, -- NOTE: this option takes priority over highlights specified so if you specify Normal highlights you should set this to false
  start_in_insert = true,
  insert_mappings = true, -- whether or not the open mapping applies in insert mode
  terminal_mappings = true, -- whether or not the open mapping applies in the opened terminals
  persist_size = true,
  persist_mode = true, -- if set to true (default) the previous terminal mode will be remembered
  direction = 'horizontal',
  close_on_exit = true, -- close the terminal window when the process exits
   -- Change the default shell. Can be a string or a function returning a string
  shell = vim.o.shell,
  auto_scroll = true, -- automatically scroll to the bottom on terminal output
  on_open = function(term)
     pcall(function() vim.cmd':PinBuftype' end)
  end,
}

-- Set ESC to switch to normal mode in terminal
vim.cmd([[
  tnoremap <ESC> <C-\><C-n>
]])


local lazygit = require('toggleterm.terminal').Terminal:new({
  cmd = "lazygit",
  dir = "git_dir",
  direction = "float",
  float_opts = {
    border = "double",
  },
  -- function to run on opening the terminal
  on_open = function(term)
    vim.cmd("startinsert!")
    vim.api.nvim_buf_set_keymap(term.bufnr, "n", "q", "<cmd>close<CR>", {noremap = true, silent = true})
     pcall(function() vim.cmd':PinBuftype' end)
  end,
  -- function to run on closing the terminal
  on_close = function(term)
    vim.cmd("startinsert!")
  end,
})

function _lazygit_toggle()
  lazygit:toggle()
end

vim.api.nvim_set_keymap("n", "<leader>g", "<cmd>lua _lazygit_toggle()<CR>", {noremap = true, silent = true})
