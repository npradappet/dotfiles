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
    
    use {
      'nvim-telescope/telescope.nvim', tag = '0.1.x',
      requires = { {'nvim-lua/plenary.nvim'} }
    }

    use 'NvChad/nvim-colorizer.lua'


    use("nvim-lua/plenary.nvim")

    use({
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    })

    use 'kyazdani42/nvim-web-devicons'
    use 'tpope/vim-commentary'
    use 'nvim-lua/popup.nvim'


    use("ThePrimeagen/git-worktree.nvim")
    use("ThePrimeagen/harpoon")

    use("hrsh7th/cmp-nvim-lsp")
    use("hrsh7th/cmp-buffer")
    use("hrsh7th/nvim-cmp")
    use("tzachar/cmp-tabnine", { run = "./install.sh" })
    use("onsails/lspkind-nvim")
    use("nvim-lua/lsp_extensions.nvim")
    use("glepnir/lspsaga.nvim")
    use("simrat39/symbols-outline.nvim")
    use("L3MON4D3/LuaSnip")
    use("saadparwaiz1/cmp_luasnip")
    use("sbdchd/neoformat")
    use("nvim-treesitter/nvim-treesitter", {
        run = ":TSUpdate"
    })
    use("preservim/nerdtree")

    use("ap/vim-css-color")
    use("tc50cal/vim-terminal")
    use("vim-airline/vim-airline")
    use({
      "whatyouhide/vim-textobj-xmlattr",
      requires = "kana/vim-textobj-user",
    })
    use({
      "windwp/nvim-autopairs",
      config = function()
        require("nvim-autopairs").setup()
      end,
    })
    --use("jvanja/vim-bootstrap4-snippets")

    --use("MarcWeber/vim-addon-mw-utils")
    --use("SirVer/ultisnips")
    --use("garbas/vim-snipmate")
end)


