return {
    {
        'rebelot/kanagawa.nvim',
        name = 'kanagawa',
        lazy = false,
        opts = {
            keywordStyle = { italic = false },
            commentStyle = { italic = false },
            statementStyle = { bold = false },
            typeStyle = { bold = false },
            theme = "wave",
            transparent = false,
            colors = {
                theme = {
                    wave = {
                        ui = {
                            bg_gutter = '#1b1b1b',
                            bg = '#1b1b1b',
                            --bg_p2 = '#111144',
                            bg_p1 = "#1b1b1b",
                            --fg_reverse = '#DCD7BA',
                            ----float = {
                            --    --  bg = '#1b1b1b',
                            --    --  bg_border = "#1b1b1b"
                            --    --},
                            --},
                            --syn = {
                            --    preproc = '#957FB8',--oniViolet,
                            --    special2 = '#FFA066',--surimiOrange,
                            --    special3 = '#A3D4D5',--lightBlue,
                            --    constant = '#7FB4CA', --springBlue,

                            }
                        },
                    },
                },
                overrides = function(colors)
                    return {
                        ['@variable.builtin'] = { italic = false },
                        --['@lsp.type.macro'] = { fg = "#FF9D66"},
                        --['@cppBoolean'] = { bold = false},
                        --['@lsp.type.parameter'] = { fg = '#DCA561' }, --autumnYellow
                        --Cursor = { fg = "#303030", bg = "#00ff33" },
                        --ColorColumn = { bg = "#1b1b1b"}
                        Todo = { bg = "NONE", fg = "NONE" }
                    }
                end,
            }
        }
    }
