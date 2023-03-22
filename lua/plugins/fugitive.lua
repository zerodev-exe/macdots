return {
    'tpope/vim-fugitive',
    keys = {
        {'<leader>gs', 'Git'},
        {'<leader>gp', ':lua git_commit_and_push()<CR>'},
    },

    config = function()
        function git_commit_and_push()
            -- execute git add .
            vim.cmd('silent !git add .')

            -- prompt for commit message
            local commit_msg = vim.fn.input('Commit message: ')

            -- execute git commit with commit message
            vim.fn.system('git commit -m "' .. commit_msg .. '"')

            -- push changes using fugitive
            vim.fn.system('git push')
        end
    end
}
