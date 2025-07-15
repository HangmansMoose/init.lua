return {
  'HoNamDuong/hybrid.nvim',
	lazy = false,
	priority = 1000,
  config = function()
	  require('hybrid').setup {
      transparent = true,
		  italic = {
			  emphasis = false,
			  comments = false,
			  folds = false
		  }
	  }
   vim.cmd.colorscheme('hybrid')
  end
}
