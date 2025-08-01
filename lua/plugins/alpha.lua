return {
    'nvimdev/dashboard-nvim',
    event = 'VimEnter',
    opts = {
        theme = 'doom',
        config = {
            --header = {
            --    'Neovim',
            --    '',
            --},
             header = {
                 '',
                 '',
                 '',
                 '',
                 '',
                 '',
                 '',
                 '',
                 '',
                 '',
                 '',
                 '',
                 '',
                 '',
                 '',
                 '',
                 '',
                 '',
                 '',
                 ' ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗',
                 ' ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║',
                 ' ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║',
                 ' ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║',
                 ' ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║',
                 ' ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝',
                 '',
             },
            center = {
                { action = 'Telescope find_files', desc = ' Find file', icon = ' ', key = 'f' },
                { action = 'enew | startinsert', desc = ' New file', icon = '󰝒 ', key = 'n' },
                { action = 'Telescope file_browser', desc = ' File explorer', icon = ' ', key = 'e' },
                { action = 'Telescope live_grep', desc = ' Find text', icon = ' ', key = 't' },
                { action = 'lua require"telescope.builtin".find_files({ cwd = vim.fn.stdpath("config")})', desc = ' Find Config', icon = ' ', key = 'c'},
                { action = 'Neogit', desc = ' Git', icon = ' ', key = 'g' },
                { action = 'Telescope oldfiles', desc = ' Recent files', icon = ' ', key = 'r' },
                { action = 'Lazy', desc = ' Lazy', icon = '💤', key = 'l' },
                { action = 'qa', desc = ' Quit', icon = ' ', key = 'q' },
            },
            footer = function()
                local stats = require('lazy').stats()
                local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
                return { '⚡ Neovim loaded ' .. stats.loaded .. '/' .. stats.count .. ' plugins in ' .. ms .. 'ms' }
            end,
        },
        hide = {
            tabline = false,
        },
    },
}
