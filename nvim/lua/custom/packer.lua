-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Comment plugin
    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }

    -- Syntax highlighting
    -- use 'fladson/vim-kitty'

    -- Dashboard
    use 'glepnir/dashboard-nvim'

    -- Indent
    use 'lukas-reineke/indent-blankline.nvim'
    -- use 'glepnir/indent-guides.nvim'

    -- Filetypes
    -- use 'nathom/filetype.nvim'
    
    -- Format
    -- use 'lukas-reineke/lsp-format.nvim'
    
    -- Configurations for Nvim LSP
    use 'neovim/nvim-lspconfig' 
    

    

    -- Language server protocol
    -- use 'pwntester/nvim-lsp'
    

    use({
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    })




    

    use({
      "whatyouhide/vim-textobj-xmlattr",
      requires = "kana/vim-textobj-user",
    })
    


    -- Auto Pairs
    -- use({
    --   "windwp/nvim-autopairs",
    --   config = function()
    --     require("nvim-autopairs").setup()
    --   end,
    -- })


    -- Interface
    use("ryanoasis/vim-devicons")
    use("ap/vim-css-color")
    use 'NvChad/nvim-colorizer.lua'
    use 'kyazdani42/nvim-web-devicons'
    use 'nvim-lua/popup.nvim'
    use("simrat39/symbols-outline.nvim")
    use("sbdchd/neoformat")
    

    -- QOL
    use 'tpope/vim-commentary'


    -- Snippets
    --use("jvanja/vim-bootstrap4-snippets")
    --use("MarcWeber/vim-addon-mw-utils")
    --use("SirVer/ultisnips")
    --use("garbas/vim-snipmate")


    -- LSP
    use("ray-x/lsp_signature.nvim")
    use("hrsh7th/nvim-compe")
    use("tamago324/compe-zsh")
    use("onsails/lspkind-nvim")
    use("nvim-lua/lsp_extensions.nvim")
    use("glepnir/lspsaga.nvim")

    -- git
    use("lewis6991/gitsigns.nvim")
    use("Xuyuanp/nerdtree-git-plugin")
    use("ThePrimeagen/git-worktree.nvim")
    
    -- File navigation
    use("ThePrimeagen/harpoon")


    -- Treesitter
        use("nvim-treesitter/nvim-treesitter", {
        run = ":TSUpdate"
    })


    -- NerdTree
    use("preservim/nerdtree")
    use("kyazdani42/nvim-tree.lua")
    use("tiagofumo/vim-nerdtree-syntax-highlight")
    use("PhilRunninger/nerdtree-buffer-ops")
    use("PhilRunninger/nerdtree-visual-selection")


    -- Terminal
    use("akinsho/toggleterm.nvim")
    use("voldikss/vim-floaterm")
    use("tc50cal/vim-terminal")

    -- Bars 
    use("preservim/tagbar")
    use("vim-airline/vim-airline")
    

    -- COC
    use("junegunn/fzf.vim")
    use {'neoclide/coc.nvim', branch = 'release'}
    use("neoclide/coc-yank")
    use("neoclide/coc-snippets")
    use("neoclide/coc-pairs")
    use("neoclide/coc-lists")
    use("neoclide/coc-highlight")
    use("neoclide/coc-emmet")


    -- Telescope
    use {
      'nvim-telescope/telescope.nvim', tag = '0.1.x',
      requires = { {'nvim-lua/plenary.nvim'} }
    }
    use("nvim-lua/plenary.nvim")
    use("nvim-telescope/telescope-fzf-native.nvim")
    use("nvim-telescope/telescope-packer.nvim")
    use("nvim-telescope/telescope-smart-history.nvim")
    use("nvim-telescope/telescope-ui-select.nvim")
    use {
      "nvim-telescope/telescope-frecency.nvim",
      config = function()
        require"telescope".load_extension("frecency")
      end,
      requires = {"kkharji/sqlite.lua"}
    }


    -- Multicursor
    use("mg979/vim-visual-multi")



    
    -- CMP/LuaSnip
    use("hrsh7th/cmp-nvim-lsp")
    use("hrsh7th/cmp-buffer")
    use("hrsh7th/nvim-cmp")
    -- use("tzachar/cmp-tabnine", { run = "./install.sh" })
    use("L3MON4D3/LuaSnip")
    use("saadparwaiz1/cmp_luasnip")

    -- use("felixhageloh/uebersicht")

    use {
      "rambhosale/cmp-bootstrap.nvim",
      after = "nvim-cmp",
      event = "InsertEnter",
    }
  end)


