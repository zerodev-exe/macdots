return {
	'folke/tokyonight.nvim',
	'vim-airline/vim-airline',
	'vim-airline/vim-airline-themes',
    config = function()
        require('tokyonight').setup({
            disable_background = true
        })

        function ColorMyPencils(color)
            color = color or "tokyonight"
            vim.cmd.colorscheme(color)

            vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
            vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

        end

        ColorMyPencils()

        vim.cmd("AirlineTheme tomorrow")
    end
}