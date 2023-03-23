return {

    'nvim-treesitter/playground',
    'nvim-treesitter/nvim-treesitter-context',

    'folke/zen-mode.nvim',
    'github/copilot.vim',
    'eandrju/cellular-automaton.nvim',
    'laytan/cloak.nvim',

    --NOTE: Everything that's above this comment has been made by ThePrimeagen he is a fantastic youtuber here is the link to watch his video

    'lervag/vimtex',
    'terryma/vim-multiple-cursors',

    {
        'glepnir/lspsaga.nvim',
        branch = 'main',
        config = function()
            require('lspsaga').setup({})
        end,
        dependencies = {
            {'nvim-tree/nvim-web-devicons'},
            --Please make sure you install markdown and markdown_inline parser
            {'nvim-treesitter/nvim-treesitter'}
        }
    },

    {
        'jinzhongjia/LspUI.nvim',
        -- event = 'VimEnter',
        config=function()
            require('LspUI').setup()
        end
    },

    {
        'windwp/nvim-autopairs',
        config = function() require('nvim-autopairs').setup {} end
    },

    {
        'goolord/alpha-nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        config = function ()
            require'alpha'.setup(require'alpha.themes.startify'.config)
        end
    },


    {
        'Kasama/nvim-custom-diagnostic-highlight',
        config = function()
            require('nvim-custom-diagnostic-highlight').setup {}
        end
    },

    { 'codota/tabnine-nvim', build = "./dl_binaries.sh" },

    'christoomey/vim-tmux-navigator',
}
