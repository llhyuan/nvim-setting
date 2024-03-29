local opts = { noremap = true, silent = true }

vim.g.mapleader = " "

-- quick access to the config file
vim.keymap.set("n", "<leader>rc", ":e ~/.config/nvim/init.vim <cr>", opts)

-- select all
vim.keymap.set("n", "å", "gg<S-v>G", opts) -- option + a

-- save changes
vim.keymap.set("n", "ß", ":w<cr>", opts) -- ctrl+s to save changes
vim.keymap.set("n", "∑", ":wq<cr>", opts) -- ctrl+w to save changes and close the file
vim.keymap.set("n", "œ", ":q!<cr>", opts) --ctrl+q to discard changes and close the file

-- increase/decrease number
vim.keymap.set("n", "+", "<C-a>", opts) -- increase the number under the pointer
vim.keymap.set("n", "_", "<C-x>", opts) -- decrease the number under the pointer

-- fuzzy search with /pattern
vim.keymap.set("n", "=", "nzz", opts) -- next search result
vim.keymap.set("n", "-", "Nzz", opts) -- prev search result
vim.keymap.set("n", "<leader><cr>", ":nohlsearch<cr>", opts) -- cancel search

vim.keymap.set("n", ";", ":", opts)
vim.keymap.set("i", "jj", "<esc>", opts)

-- quick movement
vim.keymap.set("n", "j", "gj", opts)
vim.keymap.set("v", "j", "gj", opts)
vim.keymap.set("n", "J", "8j", opts)
vim.keymap.set("n", "k", "gk", opts)
vim.keymap.set("v", "k", "gk", opts)
vim.keymap.set("n", "K", "8k", opts)
vim.keymap.set("n", "H", "g^", opts)
vim.keymap.set("v", "H", "g^", opts)
vim.keymap.set("n", "L", "g$", opts)
vim.keymap.set("v", "L", "g$", opts)

vim.keymap.set("v", "Y", '"+y', opts)
vim.keymap.set("n", "<", "<<", opts)
vim.keymap.set("n", ">", ">>", opts)
--vim.keymap.set("n", "<leader>o", "za", opts)

--vim.keymap.set("n", "<leader><leader>", "<Esc>/<CR>:nohlsearch<CR>4xi", opts)
vim.keymap.set("n", "<leader>sc", ":set spell!<cr>", opts)
vim.keymap.set("n", "<leader>sw", ":set wrap!<cr>", opts)

-- Stay in indent mode when you indent code
vim.keymap.set("v", "<", "<gv", opts)
vim.keymap.set("v", ">", ">gv", opts)

-- Move text up and down
vim.keymap.set("n", "∆", ":m .+1<CR>==", opts) -- ctrl+j to move selected text down
vim.keymap.set("n", "˚", ":m .-2<CR>==", opts) -- ctrl+k to move selected text up
vim.keymap.set("v", "∆", ":m '>+1<CR>gv=gv", opts) -- move selected text down
vim.keymap.set("v", "˚", ":m '<-2<CR>gv=gv", opts) -- move selected text up

-- replace the highlighted text with content from clip board.
vim.keymap.set("n", "d", '"zd', opts)
vim.keymap.set("v", "d", '"zd', opts)
vim.keymap.set("n", "x", '"zx', opts)
vim.keymap.set("v", "x", '"zx', opts)
vim.keymap.set("v", "p", '"_dP', opts)
vim.keymap.set("x", "<leader>p", '\"_dp', opts) -- paste without replacing the content in current register.

-- split screen
vim.keymap.set("n", "<leader><leader>k", ":set nosplitbelow<CR>:split<CR>:set splitbelow<CR>", opts)
vim.keymap.set("n", "<leader><leader>j", ":set splitbelow<CR>:split<CR>", opts)
vim.keymap.set("n", "<leader><leader>h", ":set nosplitright<CR>:vsplit<CR>:set splitright<CR>", opts)
vim.keymap.set("n", "<leader><leader>l", ":set splitright<CR>:vsplit<CR>", opts)
-- set split screen preference
--vim.keymap.set("n", "sv", "<C-w>t<C-w>H", opts)
--vim.keymap.set("n", "sh", "<C-w>t<C-w>K", opts)

-- cursor jumper between screen
vim.keymap.set("n", "<leader>l", "<c-w>l", opts)
vim.keymap.set("n", "<leader>k", "<c-w>k", opts)
vim.keymap.set("n", "<leader>h", "<c-w>h", opts)
vim.keymap.set("n", "<leader>j", "<c-w>j", opts)
vim.keymap.set("n", "qf", "<c-w>o", opts)

-- rotate screen
vim.keymap.set("n", "srh", "<C-w>b<C-w>K", opts)
vim.keymap.set("n", "srv", "<C-w>b<C-w>H", opts)

-- adjust window size
vim.keymap.set("n", "<up>", ":res +3<cr>", opts)
vim.keymap.set("n", "<down>", ":res -3<cr>", opts)
vim.keymap.set("n", "<right>", ":vertical resize -3<cr>", opts)
vim.keymap.set("n", "<left>", ":vertical resize +3<cr>", opts)

-- tab management
vim.keymap.set("n", "ti", ":tabe<cr>", opts)
vim.keymap.set("n", "th", ":-tabnext<cr>", opts)
vim.keymap.set("n", "tl", ":+tabnext<cr>", opts)

-- move tabs
vim.keymap.set("n", "tmh", ":-tabmove<cr>", opts)
vim.keymap.set("n", "tml", ":+tabmove<cr>", opts)

-- open terminal
vim.keymap.set("n", "<leader>t", ":ToggleTerm<cr>", opts)

-- buffer switcher
vim.keymap.set("n", "bh", ":bp<cr>", opts)
vim.keymap.set("n", "bl", ":bn<cr>", opts)

-- quickfix and location fix
vim.keymap.set("n", "qo", ":copen<cr>", opts)
vim.keymap.set("n", "qj", ":cnext<cr>", opts)
vim.keymap.set("n", "qk", ":cprevious<cr>", opts)
vim.keymap.set("n", "qc", ":cclose<cr>", opts)

vim.keymap.set("n", "zo", ":lopen<cr>", opts)
vim.keymap.set("n", "zj", ":lnext<cr>", opts)
vim.keymap.set("n", "zk", ":lprevious<cr>", opts)
vim.keymap.set("n", "zc", ":lclose<cr>", opts)

-- telescope --
vim.keymap.set("n", "<leader>F", "<cmd>Telescope find_files<cr>", opts)
--vim.api.nvim_set_keymap("n", "<leader>f", "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false }))<cr>", opts)

vim.keymap.set("n", "<leader>G", "<cmd>Telescope live_grep<cr>", opts)
vim.keymap.set("n", "<leader>E", "<cmd>Telescope file_browser<cr>", opts)
vim.keymap.set("n", "<leader>m", "<cmd>Telescope media_files<cr>", opts)
vim.keymap.set("n", "<leader>p", "<cmd>Telescope project<cr>", opts)

-- formatting --
vim.keymap.set("n", "<leader>f", ":Format<cr>", opts)

-- Renaming variables
vim.keymap.set("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<cr>", opts)

-- keymaps for lsp
vim.keymap.set("n", "<leader>dc", "<cmd>lua vim.lsp.buf.declaration()<CR>", opts)
vim.keymap.set("n", "<leader>df", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
--vim.keymap.set( "n", "<leader>td", "<cmd>lua vim.lsp.buf.type_definition()<CR>", opts)
vim.keymap.set("n", "<leader>ov", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
vim.keymap.set("n", "<leader>ip", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)
vim.keymap.set("n", "<C-k>", "<cmd>lua vim.lsp.buf.signature_help()<CR>", opts)
vim.keymap.set("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", opts)
vim.keymap.set("n", "<leader>rf", "<cmd>lua vim.lsp.buf.references()<CR>", opts)
vim.keymap.set("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", opts)

-- ctrl + t, to jump back through the def stack. --

vim.keymap.set("n", "<leader>dg", "<cmd>lua vim.diagnostic.open_float()<CR>", opts)
vim.keymap.set("n", "<leader>dk", '<cmd>lua vim.diagnostic.goto_prev({ border = "rounded" })<CR>', opts)
vim.keymap.set("n", "<leader>dj", '<cmd>lua vim.diagnostic.goto_next({ border = "rounded" })<CR>', opts)
vim.keymap.set("n", "<leader>q", "<cmd>lua vim.diagnostic.setloclist()<CR>", opts)
