--
-- colors.vim - file di configurazione dello schema di colori di vim
--
-- Andrea Valenzano aka v-Alenz
--
-- Usage:
-- Qeusto file implemanta diverse funzionalita' relative allo schema di colori
-- Se non sai dove stai mettendo le mani ti consiglio di lasciare le funzioni dove sono
-- Per modificare le varie funzionalita' basta modificare le relative variabili


--
-- OPZIONI
--

--Non usare il background della colorscheme ma quello del terminale
local default_bg = false

--
-- OPZIONI_END
--


--
-- FUNZIONI
--

require("catppuccin").setup({
    flavour = "mocha",
    transparent_background = true,
})

require("catppuccin").load()

function ColorMyPencils(color)
	color = color or "catppuccin"
	vim.cmd.colorscheme(color)

	if default_bg then
		vim.api.nvim_set_hl(0, "Normal", { bg = "none" })	
		vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
	end
end


--
-- FUNZIONI_END
--
