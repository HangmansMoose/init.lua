require("config.mason-path")
require("config.options")
require("config.keybinds")
require("config.autocmds")
require("config.mason-verify")
require("config.lazy")
require("config.lsp")

---------- Don't do colorscheme stuff here. Do it within the colorscheme config so there is no highlight clashing -----------------
-- Clear all highlights that may have been applied by loading colorschemes (looking at you night-owl)
vim.cmd("hi clear")
vim.cmd('syntax reset')
vim.cmd("colorscheme neohybrid")

--vim.cmd'hi cTodo guibg=#151515'
--vim.cmd'hi Todo guibg=#151515'

if vim.g.colors_name == 'neohybrid' then 
    vim.cmd'hi Normal guibg=#121212'
    vim.cmd'hi NormalNC guibg=#121212'
    --vim.cmd'hi TabLine guifg=#e6dbd1'
    --vim.cmd'hi TabLineNC guifg=#151515'
    --vim.cmd'hi CursorLine guibg=#111144'
    vim.cmd'hi Cursor guibg=#00ff33 guifg=#303030'
    vim.cmd'hi cTodo guibg=#121212'

    local hl_groups = vim.api.nvim_get_hl(0, {})

    for key, hl_group in pairs(hl_groups) do
      if hl_group.italic then
        vim.api.nvim_set_hl(0, key, vim.tbl_extend("force", hl_group, {italic = false}))
      end
    end
end
