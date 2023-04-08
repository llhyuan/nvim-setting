local configs = require("nvim-treesitter.configs")

configs.setup {
  ensure_installed = { "c", "python", "javascript", "typescript", "html", "scss", "help", "lua" },
  sync_install = false,
  --  ignore_install = { "" }, -- List of parsers to ignore installing
  highlight = {
    enable = true, -- false will disable the whole extension
    --    disable = { "" }, -- list of language that will be disabled
    --    additional_vim_regex_highlighting = true,

  },
  rainbow = {
    enable = true,
    -- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
    extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
    max_file_lines = nil, -- Do not enable for files with more than n lines, int
    colors = {
      "#C83F49",
      "#F07F5E",
      "#F8De7E",
      "#93c572",
      "#B768A2"
    } -- table of hex strings
    -- termcolors = {} -- table of colour name strings
  },
  playground = {
    enable = true
  },
  context_commentstring = {
    enable = true,
    -- enable_autocmd = false,
    config = {
      lua = { __default = '-- %s', __multiline = '--[[ %s --]]' }
    }
  },
  autotag = {
    enable = true,
  }
}
