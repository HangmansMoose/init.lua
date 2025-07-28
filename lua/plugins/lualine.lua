return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
        --local lualine_auto = require('lualine.themes.auto')

        --lualine_auto.normal.b.bg = '#151515'
        --lualine_auto.normal.c.bg = '#151515'
        --lualine_auto.visual.b.bg = '#151515'
        --lualine_auto.visual.c.bg = '#151515'
        --lualine_auto.insert.b.bg = '#151515'
        --lualine_auto.insert.c.bg = '#151515'
        --lualine_auto.command.b.bg = '#151515'
        --lualine_auto.command.c.bg = '#151515'

        require('lualine').setup {
            options = {
              theme = 'auto',
            },
--            sections = {
              --lualine_a = {
              --  {
              --    color = {
              --      bg = '#151515',
              --    }
              --  },
              --},
              --lualine_b = {
              --  {
              --    color = {
              --      bg =  '#151515',
              --    },
              --  },
              --}
            --}
        }
    end
}
