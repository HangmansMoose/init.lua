return {
  --{
  --  'alljokecake/naysayer-theme.nvim',
  --  name = 'naysayer',
  --  lazy = false,
  --    config = function()
  --      require('naysayer').setup {
  --  	    disable_background = true,
  --  		dim_inactive_windows = false,
  --  		disable_italics = true,
  --  		variant = 'main',
  --  		dark_variant = 'main',
  --  	}
  --  end
  --}
  {
  'RostislavArts/naysayer.nvim',
  priority = 1000,
  lazy = false,
  config = function()
    --vim.cmd.colorscheme('naysayer')
    vim.api.nvim_set_hl(0, 'StatusLine', { bg = '#062329', fg = '#d1b897'} )
  end,
    }
}
