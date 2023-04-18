-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- setttings
-- local function on_attach(bufnr)
--   local api = require('nvim-tree.api')
--
--   local function opts(desc)
--     return { desc = 'nvim-tree: ' .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
--   end
--
--   vim.keymap.set('n', 'u', api.tree.dir_up, opts('dir_up'))
--   vim.keymap.set('n', 'W', api.tree.collapse_all, opts('collapse all'))
-- end
--
-- empty setup using defaults
require("nvim-tree").setup({
  --on_attach = on_attach,
  git = {
    enable = true,
    ignore = true,
    timeout = 500,
  },
  renderer = {
    highlight_git = true,
    root_folder_modifier = ":t",
    icons = {
      show = {
        file = true,
        folder = true,
        folder_arrow = true,
        git = true,
      },
      glyphs = {
        default = "",
        symlink = "",
        git = {
          unstaged = "",
          staged = "S",
          unmerged = "",
          renamed = "➜",
          deleted = "",
          untracked = "U",
          ignored = "◌",
        },
      }
    }
  }
})

-- OR setup with some options
vim.keymap.set('n', '<leader>e', ':NvimTreeFindFileToggle<CR>')
