-- Packer file - File di configurazione di packer.vim (wbthomason/packer.nvim)
--
-- File di configurazione per il gestore dei plugin di nvim
--
-- Andrea Valenzano aka v-Alenz 02/01/2023
--
-- Utilizzo:
--
--
-- NOTA BENE:
-- Questo file non e' caricato di default.
-- per poter utilizzare le sue funzionalita' occore eseguire:
--   1) ":so" per far caricare il file (all'interno di questo stesso file)
--   2) ":~ilcomandochevuoieseguire~" per dire al gestore dei plugin cosa fare
--   In qualsiasi altro modo non funziona nulla e questo file non viene caricato

-- Richiesto solo se hai packer configurato come `opt`
vim.cmd [[packadd packer.nvim]]



--
-- PLUGINS
--
return require('packer').startup(function(use)


  -- Packer (wbthomason/packer.nvim)
  -- Gestore dei pacchetti 
  -- (che se sei arrivato a questo file probabilmente sai di che si tratta)
  -- P.S.: packer e' in grado di gestirsi da solo <3
  use 'wbthomason/packer.nvim'


  -- Telescope (nvim-telescope/telescope.nvim)
  -- Il miglior "fuzzy finder" in circolazione
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
  -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }


  -- Dracula Color Scheme (dracula/vim)
  -- Il miglior tema che l'essere umano abbia mai concepito
  use ({
    'dracula/vim',
    as = 'dracula',
    config = function()
	    vim.cmd('colorscheme dracula')
    end
  })


  -- TreeSitter (nvim-treesitter/nvim-treesitter)
  -- Colora il codice, gestisce la tablazione e tante altre cose molto belle
  use (
    'nvim-treesitter/nvim-treesitter',
    {run = ':TSUpdate'}
  )


  -- Harpoon (ThePrimeagen/harpoon)
  -- Il miglior modo per saltare da un file ad un altro
  use (
    'ThePrimeagen/harpoon'
  )


  -- UndoTree (mbbill/undotree)
  -- Undo adesso e' un albero
  use (
    'mbbill/undotree'
  )


  -- Fuggitive (tpope/vim-fugitive)
  -- Git in Vim 
  use (
    'tpope/vim-fugitive'
  )


  -- Commentary (tpope/vim-commentary)
  -- Commenta le linee di codice selezionate
  use(
    'tpope/vim-commentary'
  )


  -- Visual Multi (mg979/vim-visual-multi)
  -- Due cursori sono molto meglio di uno solo
  use(
    'mg979/vim-visual-multi'
  )


  -- NerdTree (preservim/nerdtree)
  -- Visualizza il filesistem del progetto
  -- use (
  --   'preservim/nerdtree'
  -- )
  -- VimIcons (ryanoasis/vim-devicons)
  -- Aggiunge le icone a NerdTree
  -- use(
  --   'ryanoasis/vim-devicons'
  -- )


  -- LSP-Zero (VonHeikemen/lsp-zero.nvim)
  -- Il miglior pacchetto LSP sul mercato
  use {
  'VonHeikemen/lsp-zero.nvim',
    requires = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},
      {'williamboman/mason.nvim'},
      {'williamboman/mason-lspconfig.nvim'},

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},
      {'hrsh7th/cmp-buffer'},
      {'hrsh7th/cmp-path'},
      {'saadparwaiz1/cmp_luasnip'},
      {'hrsh7th/cmp-nvim-lsp'},
      {'hrsh7th/cmp-nvim-lua'},

      -- Snippets
      {'L3MON4D3/LuaSnip'},
      {'rafamadriz/friendly-snippets'},
    }
  }
  -- Autopairs (windwp/nvim-autopairs)
  -- Parentesi, apici, ecc.. si chiudono da soli
  use {
	"windwp/nvim-autopairs",
     config = function() require("nvim-autopairs").setup {} end
  }


  -- Dashboard (glepnir/dashboard-nvim)
  -- Aggiunge una pagina iniziale a vim
  use {
    'glepnir/dashboard-nvim',
    requires = {'nvim-tree/nvim-web-devicons'}
 }


  -- Airline (vim-airline/vim-airline)
  -- Aggiunge la barra di stato personalizzata
  use {
       'nvim-lualine/lualine.nvim',
       requires = { 'kyazdani42/nvim-web-devicons', opt = true }
     }


  -- Which Key (folke/which-key.nvim)
  -- Mostra tabella dei comandi quando li inserisci
  use {
      "folke/which-key.nvim",
      config = function()
          require("which-key").setup {
              -- your configuration comes here
              -- or leave it empty to use the default settings
              -- refer to the configuration section below
          }
      end
  }

  -- DAP (mfussenegger/nvim-dap)
  -- Debug Adapter Protocol in nvim
  use (
    'mfussenegger/nvim-dap'
  )
  -- DAP UI (rcarriga/nvim-dap-ui)
  -- Ui grafica per DAP
  use {
      "rcarriga/nvim-dap-ui",
      requires = {"mfussenegger/nvim-dap"}
  }
  -- DAP Languages
  -- Serie di server dap per vari linguaggi

    -- Python (mfussenegger/nvim-dap-python)
    use ('mfussenegger/nvim-dap-python')


  -- Leap (ggandor/leap.nvim)
  -- Salta nei files alla velocita' della luce
  use ('ggandor/leap.nvim')

  -- Tmux Navigator (christoomey/vim-tmux-navigator)
  -- Tmux e nvim fiventano una cosa sola
  use ('christoomey/vim-tmux-navigator')

--
-- PLUGINS_END
--
end)


