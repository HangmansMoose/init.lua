return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config =  function()
        local custom_auto = require('lualine.themes.auto')
        custom_auto.normal.b.bg = "#1e1e1e"
        custom_auto.normal.c.bg = "#1e1e1e"
        
        custom_auto.insert.b.bg = "#1e1e1e"
        custom_auto.insert.c.bg = "#1e1e1e"
        
        custom_auto.replace.b.bg = "#1e1e1e"
        custom_auto.replace.c.bg = "#1e1e1e"
        
        custom_auto.command.b.bg = "#1e1e1e"
        custom_auto.command.c.bg = "#1e1e1e"
        
        custom_auto.visual.b.bg = "#1e1e1e"
        custom_auto.visual.c.bg = "#1e1e1e"

        require('lualine').setup {
            
            options = {
                theme = custom_auto,
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
