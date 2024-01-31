-- Split Navigation
vim.keymap.set('n', '<A-j>', '<C-w><C-j>', {silent=true})
vim.keymap.set('n', '<A-k>', '<C-w><C-k>', {silent=true})
vim.keymap.set('n', '<A-l>', '<C-w><C-l>', {silent=true})
vim.keymap.set('n', '<A-h>', '<C-w><C-h>', {silent=true})

-- Harpoon
vim.keymap.set('n', '<leader>a', function()require("harpoon.mark").add_file()end)
vim.keymap.set('n', '<C-e>', function()require("harpoon.ui").toggle_quick_menu()end)
vim.keymap.set('n', '<C-h>', function()require("harpoon.ui").nav_file(1)end)
vim.keymap.set('n', '<C-j>', function()require("harpoon.ui").nav_file(2)end)
vim.keymap.set('n', '<C-k>', function()require("harpoon.ui").nav_file(3)end)

-- Netrw
vim.keymap.set("n", "<leader>e", vim.cmd.Ex)

-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })
vim.keymap.set('i', 'jj', '<ESC>', {silent=true} )
vim.keymap.set("n", ";", ":")

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>qe', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })

-- Telescope 

-- Undo
vim.keymap.set("n", "<leader>ud", vim.cmd.UndoTreeToggle)
