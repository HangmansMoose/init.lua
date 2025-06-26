return {
    'ellisonleao/gruvbox.nvim',
    name = 'gruvbox',
    lazy = false,
    config = function()
      vim.cmd'hi clear'
      require("gruvbox").setup ({
        terminal_colors = true,
        transparent_mode = false,
	      contrast = "",
        inverse = true,
        undercurl = true,
        uderline = false,
        bold = false,
        italic = {
          strings = false,
          emphasis = false,
          comments = false,
          folds = false,
          operators = false,
        },
        palette_overrides = {
          dark0 = '#151515',
          dark0_hard = '#151515',
          dark1 = '#151515',
	      		bright_orange = '#fbf1c7',
        },
        overrides = {
          CursorLine = { bg = '#050505' },
	      	--Cursor = { bg = '#00ff33', fg = '#303030'},
          Pmenu = { bg = '#252525' },
          PmenuThumb = { bg = '#252525' },
          PmenuSel = { bg = '#252525' },
          PmenuSbar = { bg = '#252525' },
        },
      })
      vim.cmd'colorscheme gruvbox'
    end,
}
