--
-- Harpoon - Getting you where you want with the fewest keystrokes (ThePrimeagen/harpoon)
--


local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set('n', '<leader>a', mark.add_file)
vim.keymap.set('n', '<C-e>', ui.toggle_quick_menu)

vim.keymap.set('n', '1', function() ui.nav_file(1) end)
vim.keymap.set('n', '2', function() ui.nav_file(2) end)
vim.keymap.set('n', '3', function() ui.nav_file(3) end)
vim.keymap.set('n', '4', function() ui.nav_file(4) end)
vim.keymap.set('n', '5', function() ui.nav_file(5) end)
vim.keymap.set('n', '6', function() ui.nav_file(6) end)
vim.keymap.set('n', '7', function() ui.nav_file(7) end)
vim.keymap.set('n', '8', function() ui.nav_file(8) end)
vim.keymap.set('n', '9', function() ui.nav_file(9) end)
vim.keymap.set('n', '0', function() ui.nav_file(10) end)
