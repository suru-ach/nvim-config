vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use({ 'rose-pine/neovim', as = 'rose-pine',
    config = function() 
        vim.cmd('colorscheme rose-pine')
    end})

    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate'})
    use('nvim-treesitter/playground')
    use('theprimeagen/harpoon')
    use('mbbill/undotree')
    use('tpope/vim-fugitive')
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {'williamboman/mason.nvim'},           -- Optional
            {'williamboman/mason-lspconfig.nvim'}, -- Optional

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},         -- Required
            {'hrsh7th/cmp-nvim-lsp'},     -- Required
            {'hrsh7th/cmp-buffer'},       -- Optional
            {'hrsh7th/cmp-path'},         -- Optional
            {'saadparwaiz1/cmp_luasnip'}, -- Optional
            {'hrsh7th/cmp-nvim-lua'},     -- Optional

            -- Snippets
            {'L3MON4D3/LuaSnip'},             -- Required
            {'rafamadriz/friendly-snippets'}, -- Optional
        }
    }

    --use {
    --    "folke/trouble.nvim",
    --    config = function()
    --        require("trouble").setup {
    --            -- your configuration comes here
    --        }
    --    end
    --}
    -- Maven Support
    use {
        'alvarosevilla95/vim-maven-plugin',
        config = function()
            -- Configuration for vim-maven-plugin if needed
        end
    }

    -- Optional: ALE for linting and Maven integration
    use {
        'dense-analysis/ale',
        config = function()
            -- ALE Configuration for Maven
            vim.g.ale_linters = {
                java = {'maven'}
            }
            vim.g.ale_java_maven_executable = 'mvn'
            vim.g.ale_java_maven_use_project_root = 1
        end
    }
end)
