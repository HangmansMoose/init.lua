return {
  "folke/todo-comments.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
    signs = false, -- show icons in the signs column
    -- keywords recognized as todo comments
    keywords = {
      TODO = {icon = " ",  color = "#FF0000" },
      HACK = {icon = " ",  color = "#FFA71A" },
      NOTE = {icon = " ",  color = "#008000" },
      FIX =  {icon = " ",  color = "#f06292" },
    },
    highlight = {
	  	pattern = [[(KEYWORDS|keywords)\s*:]],
	  	keyword = "fg",
      before = "",
      after = "",
	  },
  }
}

