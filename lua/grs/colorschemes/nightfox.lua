local M = {
     "EdenEast/nightfox.nvim",
}

M.lazy = false 


function M.config() 
    local nightfox = require("nightfox")
    nightfox.setup({
        palettes = {
            nordfox = {
                bg1 = "#121212",
            }
        }
    })
end


return M

