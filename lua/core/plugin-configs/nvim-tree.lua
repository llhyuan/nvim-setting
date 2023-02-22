-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- empty setup using defaults
require("nvim-tree").setup({
  view = {
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
        { key = "W", action = "collapse_all" },
      },
    },
  },
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
