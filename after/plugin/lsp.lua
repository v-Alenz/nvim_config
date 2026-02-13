--
-- LSP-Zero - Tutto l'LSP che ti serve (VonHeikemen/lsp-zero.nvim)
--
-- Andrea Valenzano aka v-Alenz
--

local lsp = require('lsp-zero')
lsp.preset({
    name = 'lsp-only',
    set_lsp_keymaps = {preserve_mappings = false},
    manage_nvim_cmp = true,
    suggest_lsp_servers = false,
})

require('mason').setup({})
require('mason-lspconfig').setup({
    -- Replace the language servers listed here
    -- with the ones you want to install
    ensure_installed = {'clangd'},
    handlers = {
        lsp.default_setup,
    }
})


local cmp = require("cmp")
local cmp_action = require('lsp-zero').cmp_action()

cmp.setup({
    sources = {
    {name = 'nvim_lsp'},
    {name = 'nvim_lua'},
  },
  mapping = cmp.mapping.preset.insert({
    ['<CR>'] = cmp.mapping.confirm({select = false}),
    ['<Tab>'] = cmp_action.luasnip_supertab(),
    ['<S-Tab>'] = cmp_action.luasnip_shift_supertab(),
  }),
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
  --- (Optional) Show source name in completion menu
  formatting = cmp_format,
})

-- `/` cmdline setup.
cmp.setup.cmdline('/', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
        { name = 'buffer' }
    }
})

-- -- `:` cmdline setup.
-- cmp.setup.cmdline(':', {
--     mapping = cmp.mapping.preset.cmdline(),
--     sources = cmp.config.sources({
--         { name = 'path' }
--     }, {
--         {
--             name = 'cmdline',
--             option = {
--                 ignore_cmds = { 'Man', '!' }
--             }
--         }
--     })
-- })


-- If you want insert `(` after select function or method item
local cmp_autopairs = require('nvim-autopairs.completion.cmp')
local cmp = require('cmp')
cmp.event:on(
  'confirm_done',
  cmp_autopairs.on_confirm_done()
)

lsp.setup()

-- Disable zig ZLS from formatting things
vim.g.zig_fmt_autosave = 0
