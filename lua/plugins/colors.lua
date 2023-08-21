return {
	'thedenisnikulin/vim-cyberpunk',
    config = function()
        -- require('tokyonight').setup({
        --     disable_background = true
        -- })

        -- function ColorMyPencils(color)
        --     color = color or "cyberpunk"
            vim.cmd.colorscheme("cyberpunk")

        --     vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
        --     vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

        -- end

        -- ColorMyPencils()

    end
}
