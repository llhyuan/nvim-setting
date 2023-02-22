require 'colorizer'.setup({
  '*', -- Highlight all files, but customize some others.
  scss = { RGB = true, -- #RGB hex codes
    RRGGBB = true, -- #RRGGBB hex codes
    names = true, -- "Name" codes like Blue
    RRGGBBAA = false, -- #RRGGBBAA hex codes
    rgb_fn = false, -- CSS rgb() and rgba() functions
    hsl_fn = false, }, -- Enable parsing rgb(...) functions in css.
  html = { names = false, }
})
