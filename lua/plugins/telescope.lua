return {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    -- or                            , branch = '0.1.x',
    dependencies = 'nvim-lua/plenary.nvim',
    keys = {
        {'<leader>ff', '<cmd>lua require("telescope.builtin").find_files<CR>'},
        {'<C-p>', '<cmd>lua require""telescope.builtin").git_files<CR>'},
        {'<leader>vh', 'require("telescope.builtin").builtin.help_tags'},
    },

    config = function()
        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>ps', function()
            builtin.grep_string({ search = vim.fn.input("Grep > ") })
        end)
    end
}
