require 'colorizer'.setup({
  '*', -- Highlight all files, but customize some others.
  scss = { RGB = true, -- #RGB hex codes
    RRGGBB = true, -- #RRGGBB hex codes
    names = true, -- "Name" codes like Blue
    RRGGBBAA = true, -- #RRGGBBAA hex codes
    rgb_fn = true, -- CSS rgb() and rgba() functions
    hsl_fn = true, }, -- Enable parsing rgb(...) functions in css.
  html = { names = false, }
})
