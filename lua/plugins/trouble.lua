return {
    'folke/trouble.nvim',
    keys = {
       {"<leader>xq", "<cmd>TroubleToggle quickfix<cr>"},
    },
    config = function()
        require('trouble').setup {
            icons = false,
        }
    end,
}
