vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.opt.backspace = '2'
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.cursorline = true
vim.opt.autoread = true

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.shiftround = true
vim.opt.expandtab = true

terminalOpen = false

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')

-- Map jk to Esc in normal mode
vim.api.nvim_set_keymap('i', '<Space>j', '<Esc>', { noremap = true, silent = true })

-- Remap Enter key to select the next autocomplete item
vim.api.nvim_set_keymap('i', '<CR>', 'compe#confirm("<CR>")', { expr = true, noremap = true, silent = true })

-- Remap Return key to select the next item in the popup menu
vim.api.nvim_set_keymap('i', '<CR>', 'pumvisible() ? "<C-n>" : "<CR>"', { expr = true, noremap = true, silent = true })

-- -- open and close terminal
-- if terminalOpen == false then
--     vim.keymap.set('n', '<Space>t', ':terminal<CR>')
--     terminalOpen = true

-- elseif terminalOpen == true then
--     vim.keymap.nnoremap('<Space>t', '<cmd>lua close_terminal()<CR>')
--     vim.keymap.nnoremap { '<Space>y', ':bd!<CR>' }
--     vim.keymap.tnoremap { '<Space>y', '<C-\\><C-n>:bd!<CR>' }
--     terminalOpen = false
-- end

vim.keymap.set("n", "<Space>t", ":sp<CR>5<C-w>J:term<CR>2<C-w>-:setl wfh<CR>")
