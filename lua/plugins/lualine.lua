return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config =  function()
        local custom_gruvbox = require('lualine.themes.gruvbox')
        custom_gruvbox.normal.b.bg = "#151515"
        custom_gruvbox.normal.c.bg = "#151515"

        custom_gruvbox.insert.b.bg = "#151515"
        custom_gruvbox.insert.c.bg = "#151515"

        custom_gruvbox.replace.b.bg = "#151515"
        custom_gruvbox.replace.c.bg = "#151515"

        custom_gruvbox.command.b.bg = "#151515"
        custom_gruvbox.command.c.bg = "#151515"

        custom_gruvbox.visual.b.bg = "#151515"
        custom_gruvbox.visual.c.bg = "#151515"

        require('lualine').setup {

            options = {
                theme = custom_gruvbox,
                globalstatus = true,
            },
            sections = {
                lualine_c = {
                    {
            	        "filename",
            	    	path = 3,
                    }
            	},
            },
        }
    end
}
