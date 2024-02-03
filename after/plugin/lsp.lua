--
-- LSP-Zero - Tutto l'LSP che ti serve (VonHeikemen/lsp-zero.nvim)
--
-- Andrea Valenzano aka v-Alenz
--

local lsp = require('lsp-zero')
lsp.preset({
    name = 'minimal',
    set_lsp_keymaps = {preserve_mappings = false},
    manage_nvim_cmp = true,
    suggest_lsp_servers = false,
})


local cmp = require("cmp")
-- `/` cmdline setup.
cmp.setup.cmdline('/', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
        { name = 'buffer' }
    }
})

-- `:` cmdline setup.
cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
        { name = 'path' }
    }, {
        {
            name = 'cmdline',
            option = {
                ignore_cmds = { 'Man', '!' }
            }
        }
    })
})


-- If you want insert `(` after select function or method item
local cmp_autopairs = require('nvim-autopairs.completion.cmp')
local cmp = require('cmp')
cmp.event:on(
  'confirm_done',
  cmp_autopairs.on_confirm_done()
)

lsp.setup()



