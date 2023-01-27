-- telescope.nvim - fuzzy finder in nvim (nvim-telescope/telescope.nvim)
--
-- Andrea Valezano aka v-Alenz 02/01/2023
--
-- Usage:
-- Questo file e' caricato automaticamente, pertanto non e' richiesto alcun intervento manuale
--

local builtin = require('telescope.builtin')

--
-- RIMAPPING
--


-- Apri il browser dei files
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})

-- Apri il file browser visualizzando i file del repository dove ci troviamo
vim.keymap.set('n', '<C-f>', builtin.git_files, {})

-- Apri il browser dei files + Grep
vim.keymap.set('n', '<leader>fs', builtin.live_grep, {})


--
-- RIMAPPING_END
--
