return {
    {
        'thesimonho/kanagawa-paper.nvim',
        lazy = false,
        opts = {
            styles = {
                comment = { italic = false },
            },
            colors = {
                theme = {
                    ink = {
                        ui = {
                            bg_gutter = '#151515',
                            bg = '#151515',
                            bg_p1 = "#151515",
                            --fg_reverse = '#DCD7BA',
                        },
                        float = {
                            bg = "#1f1f28" -- sumink3
                        }
                    }
                }
            },
            overrides = function(colors)
                local theme = colors.theme
                return {
                    LineNr = { bg = theme.ui.bg },
                    WinSeparator = { fg = "#303030" },
                    TelescopeNormal = { bg = "#1f1f28"},
                    TelescopeResultsNormal = { bg = "#1f1f28"},
                    TelescopePromptNormal = { bg = "#1f1f28"},
                    TelescopeResultsBorder = { bg = "#1f1f28"},
                    TelescopePromptBorder = { bg = "#1f1f28"},
                    TelescopePreviewNormal = { bg = "#1f1f28"},
                    TelescopeBorder = { bg = "#1f1f28"},
                    TelescopePreviewBorder = { bg = "#1f1f28"},
                    NoiceCmdlinePopupBorder = { bg = theme.ui.bg },
                    NoicePopupMenuBorder = { bg = theme.ui.bg },
                    NoiceCmdlineIcon = { bg = theme.ui.bg, fg = theme.ui.fg },
                    Todo = { bg = theme.ui.bg, fg = "NONE" },
                }
            end,
        }
    },
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
                    --dragon = {
                    --    ui = {
                    --        
                    --    }
                    --},
                    wave = {
                        ui = {
                            bg_gutter = '#1b1b1b',
                            bg = '#1b1b1b',
                            --bg_p2 = '#111144',
                            bg_p1 = "#1b1b1b",
                            fg_reverse = '#DCD7BA',
                            -- float = {
                            --    --  bg = '#1b1b1b',
                            --    --  bg_border = "#1b1b1b"
                            --    --},
                            --},
                            syn = {
                              preproc = '#957FB8',--oniViolet,
                              special2 = '#FFA066',--surimiOrange,
                              special3 = '#A3D4D5',--lightBlue,
                              constant = '#7FB4CA', --springBlue,

                            }
                        },
                    },
                },
            },
            overrides = function(colors)
                local theme = colors.theme
                return {
                    LineNr = { bg = theme.ui.bg },
                    WinSeparator = { fg = "#303030" },
                    NoiceCmdlinePopupBorder = { bg = theme.ui.bg },
                    NoicePopupMenuBorder = { bg = theme.ui.bg },
                    NoiceCmdlineIcon = { bg = theme.ui.bg, fg = theme.ui.fg },
                    Todo = { bg = theme.ui.bg, fg = "NONE" },
                }
            end,
        }
    }
}
