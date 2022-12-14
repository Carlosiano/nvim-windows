local keymap = vim.keymap

vim.g.mapleader = ','

keymap.set('i', 'jj', '<C-c>')
keymap.set('i', 'kk', '<C-c>')

-- Move to the begining and the end of line
keymap.set('', 'H', '^')
keymap.set('', 'L', '$')

-- Do not yank with x
keymap.set('n', 'x', '"_x')

-- Increment/decrement
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- Delete a word backwards
keymap.set('n', 'dw', 'vb"_d')

-- Select all
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- New tab
keymap.set('n', 'te', ':tabedit ')
keymap.set('n', 'tn', ':tabedit<CR>', { silent = true })

-- Close tab
keymap.set('n', 'tq', ':q<CR>', { silent = true })
keymap.set('n', '<leader>q', ':q<CR>', { silent = true })

-- Split window
keymap.set('n', 'ss', ':split<CR><C-w>w', { silent = true })
keymap.set('n', 'sv', ':vsplit<CR><C-w>w', { silent = true })

-- Move between window
keymap.set('n', '<Space><Tab>', '<C-w>w')
keymap.set('', 's<left>', '<C-w>h')
keymap.set('', 's<right>', '<C-w>l')
keymap.set('', 's<up>', '<C-w>k')
keymap.set('', 's<down>', '<C-w>j')
keymap.set('', 'sh', '<C-w>h')
keymap.set('', 'sl', '<C-w>l')
keymap.set('', 'sk', '<C-w>k')
keymap.set('', 'sj', '<C-w>j')
keymap.set('', '<C-h>', '<C-w>h')
keymap.set('', '<C-l>', '<C-w>l')
keymap.set('', '<C-k>', '<C-w>k')
keymap.set('', '<C-j>', '<C-w>j')

-- Resize window
keymap.set('n', '<C-right>', '<C-w><')
keymap.set('n', '<C-left>', '<C-w>>')
keymap.set('n', '<C-up>', '<C-w>+')
keymap.set('n', '<C-down>', '<C-w>-')

-- Save file
keymap.set('', '<C-s>', ':w<CR>')
keymap.set('', '<leader>s', ':w<CR>')

-- open nvimtree

-- reload config
keymap.set('n', '<leader>r', ':lua ReloadConfig()<CR>', { silent = true })
