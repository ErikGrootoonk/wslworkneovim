-- Configure tabs behaviour
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")

-- Set clipboard to systemclipboard
vim.opt.clipboard:append("unnamedplus")
-- Set leader to space
vim.g.mapleader = ' '

-- Navigate vim panes better
vim.keymap.set('n', '<c-k>', ':wincmd k<cr>')
vim.keymap.set('n', '<c-j>', ':wincmd j<cr>')
vim.keymap.set('n', '<c-h>', ':wincmd h<cr>')
vim.keymap.set('n', '<c-l>', ':wincmd l<cr>')

-- set leader h to stop highlighting search result
vim.keymap.set('n', '<leader>h', ':nohlsearch<cr>')

-- set relative line number
vim.wo.number = true
vim.wo.relativenumber = true

-- remap C-v to enable block selecting in visualmode
vim.keymap.set('n', '<leader>v', '<C-v>')

-- set C-s  to write
vim.keymap.set('n', '<C-s>', ':w<cr>')
vim.keymap.set('i', '<C-s>', '<c-o>:w<cr>')

-- enable 24-bit color
vim.opt.termguicolors = true

-- enable the signcolumn to prevent the screen from jumping
vim.opt.signcolumn = "yes"

-- disable text wrap
vim.opt.wrap = false

-- enable auto indenting and set it to spaces
vim.opt.smartindent = true
vim.opt.shiftwidth = 2

-- enable ignorecase + smartcase for better searching
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- always keep 8 lines above/below cursor unless at start/end of a file
vim.opt.scrolloff = 8

-- new tab and use tab for switching tabs
vim.keymap.set('n', 'te' , ':tabedit')
vim.keymap.set('n', '<tab>', ':tabnext<cr>')
vim.keymap.set('n', '<s-tab>', ':tabprev<cr>')

-- set cursor line
vim.opt.cursorline = true

-- check if wsl clipboard has to be used

vim.opt.clipboard = "unnamedplus"

if vim.fn.has("wsl") == 1 then
  vim.g.clipboard = {
    name = "win32yank-wsl",
    copy = {
      ["+"] = "win32yank.exe -i --crlf",
      ["*"] = "win32yank.exe -i --crlf",
    },
    paste = {
      ["+"] = "win32yank.exe -o --lf",
      ["*"] = "win32yank.exe -o --lf",
    },
    cache_enabled = 0,
  }
end

