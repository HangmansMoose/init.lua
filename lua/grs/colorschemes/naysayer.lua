return {
  {
    'alljokecake/naysayer-theme.nvim',
    name = 'naysayer',
    lazy = false,
	  config = function()
	    require('naysayer').setup {
		    disable_background = true,
			dim_inactive_windows = false,
			disable_italics = true,
			variant = 'main',
			dark_variant = 'main',
		}
	end
  }
}
