vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Pakcer, the plugin manager itself
    use 'wbthomason/packer.nvim'

    -- Colorscheme
    use 'ellisonleao/gruvbox.nvim'

    -- Telescope
    use {
          'nvim-telescope/telescope.nvim', tag = '0.1.0',
          requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- Treesitter
    use {
        'nvim-treesitter/nvim-treesitter',
        run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
    }

    -- LSP-config
    use 'neovim/nvim-lspconfig'

    -- Autocomplete
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'
    use 'L3MON4D3/LuaSnip'

    -- Telescope UI select
    use 'nvim-telescope/telescope-ui-select.nvim'

    -- Telescope LSP bindings
    use 'gbrlsnchs/telescope-lsp-handlers.nvim'

    -- Discord Rich Presence
    use 'ObserverOfTime/nvimcord'
end)
