-- telescope.nvim - fuzzy finder in nvim (nvim-telescope/telescope.nvim)
--
-- Andrea Valezano aka v-Alenz 02/01/2023
--
-- Usage:
-- Questo file e' caricato automaticamente, pertanto non e' richiesto alcun intervento manuale
--

local dap = require("dap")
local dapui = require("dapui")


--
-- SETUP
--

dapui.setup()

dap.listeners.after.event_initialized["dapui_config"] = function()
  dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
  dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
  dapui.close()
end

--
-- END SETUP
--

--
-- RIMAPPING
--

vim.keymap.set('n', '<F5>', ":lua require'dap'.continue()<CR>")
vim.keymap.set('n', '<F10>', ":lua require'dap'.step_over()<CR>")
vim.keymap.set('n', '<F11>', ":lua require'dap'.step_into()<CR>")
vim.keymap.set('n', '<F12>', ":lua require'dap'.step_out()<CR>")
vim.keymap.set('n', '<leader>b', ":lua require'dap'.toggle_breakpoint()<CR>")
vim.keymap.set('n', '<leader>B', ":lua require'dap'.toggle_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>")

-- 
-- END RIMAPPING
--
