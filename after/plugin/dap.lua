-- telescope.nvim - fuzzy finder in nvim (nvim-telescope/telescope.nvim)
--
-- Andrea Valezano aka v-Alenz 02/01/2023
--
-- Usage:
-- Questo file e' caricato automaticamente, pertanto non e' richiesto alcun intervento manuale
--

local dap = require("dap")
local dapui = require("dapui")

local home = os.getenv('HOME')

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
-- DAP CONFIGURATIONS
--

-- CPP
local dap = require('dap')
dap.adapters.cppdbg = {
  id = 'cppdbg',
  type = 'executable',
  command = home .. '/.config/nvim/dap/cppdbg-vscode/extension/debugAdapters/bin/OpenDebugAD7',
}

dap.configurations.cpp = {
  {
    name = "Launch file",
    type = "cppdbg",
    request = "launch",
    program = function()
      return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    end,
    cwd = '${workspaceFolder}',
    stopAtEntry = true,
  },
}

dap.configurations.c = dap.configurations.cpp
-- !CPP


--
--
--

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
