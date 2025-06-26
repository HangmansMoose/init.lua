return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  lazy = true,
  opts = {
    no_italic = true,
    no_underline = true,
    term_colors = true,
    color_overrides = {
      all = {
        base = "#202020",
        crust = "#202020",
        mantle = "#202020"
      }
    }
  }
}
