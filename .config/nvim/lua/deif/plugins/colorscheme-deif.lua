return {
  'catppuccin/nvim',
  priority = 1000, -- Make sure to load this before all other start plugins.
  config = function()
    local transparent = false -- set to true if you would like to enable transparency

    local bg = "#011628"
    local bg_dark = "#011423"
    local bg_highlight = "#143652"
    local bg_search = "#0A64AC"
    local bg_visual = "#275378"
    local fg = "#CBE0F0"
    local fg_dark = "#B4D0E9"
    local fg_gutter = "#627E97"
    local border = "#547998"

    require("catppuccin").setup({
      flavour = "mocha", -- Set flavour to 'mocha'
      transparent_background = transparent,
      styles = {
        sidebars = transparent and "transparent" or "dark",
        floats = transparent and "transparent" or "dark",
      },
      custom_highlights = function(colors)
        return {
          Normal = { bg = transparent and "NONE" or bg },
          NormalFloat = { bg = transparent and "NONE" or bg_dark },
          FloatBorder = { bg = transparent and "NONE" or bg_dark, fg = border },
          CursorLine = { bg = bg_highlight },
          Search = { bg = bg_search },
          Visual = { bg = bg_visual },
          LineNr = { fg = fg_gutter },
          StatusLine = { bg = transparent and "NONE" or bg_dark },
          SignColumn = { bg = transparent and "NONE" or bg_dark },
          EndOfBuffer = { bg = transparent and "NONE" or bg_dark },
          VertSplit = { bg = transparent and "NONE" or bg_dark, fg = border },
          Folded = { bg = transparent and "NONE" or bg_dark },
          NonText = { bg = transparent and "NONE" or bg_dark },
          SpecialKey = { bg = transparent and "NONE" or bg_dark },
          Pmenu = { bg = transparent and "NONE" or bg_dark },
          PmenuSel = { bg = bg_highlight },
          PmenuSbar = { bg = bg_dark },
          PmenuThumb = { bg = bg_highlight },
        }
      end,
    })

    vim.cmd("colorscheme catppuccin")
  end,
}
