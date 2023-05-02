local ls = require("luasnip")

--[[ local types = require("luasnip.util.types") ]]

ls.config.set_config({
  history = true, --keep around last snippet local to jump back
  updateevents = "TextChanged,TextChangedI", --update changes as you type
  enable_autosnippets = true,
  -- ext_opts = {
  --   [types.choiceNode] = {
  --     active = {
  --       virt_text = { { "●", "GruvboxOrange" } },
  --     },
  --   },
  --   [types.insertNode] = {
  --     active = {
  --       virt_text = { { "●", "GruvboxBlue" } },
  --     },
  --   },
  -- },
})


ls.filetype_extend("javascript", { "javascriptreact" })
ls.filetype_extend("javascript", { "html" })

-- <c-k> is my expansion key
-- this will expand the current item or jump to the next item within the snippet.
vim.keymap.set({ "i", "s" }, "<c-k>", function()
  if ls.expand_or_jumpable() then
    ls.expand_or_jump()
  end
end, { silent = true })

-- <c-j> is my jump backwards key.
-- this always moves to the previous item within the snippet
vim.keymap.set({ "i", "s" }, "<c-j>", function()
  if ls.jumpable( -1) then
    ls.jump( -1)
  end
end, { silent = true })

-- <c-l> is selecting within a list of options.
-- This is useful for choice nodes (introduced in the forthcoming episode 2)
vim.keymap.set("i", "<c-l>", function()
  if ls.choice_active() then
    ls.change_choice(1)
  end
end)

vim.keymap.set("i", "<c-u>", require "luasnip.extras.select_choice")

-- shorcut to source my luasnips file again, which will reload my snippets
vim.keymap.set("n", "<leader><leader>s", "<cmd>source ~/.config/nvim/lua/core/plugin-configs/luasnip.lua<CR>")

-- load snippets from different source
--require("luasnip.loaders.from_lua").load({paths = "~/snippets"}) // from user defined snippets
require("luasnip/loaders/from_lua").load({ paths = "../../luasnippets/" }) -- from user defined snippets
require("luasnip/loaders/from_vscode").lazy_load()

--local parse = require("luasnip.util.parser").parse_snippet

-- ls.add_snippets("lua", {
--   parse("lff", "local $1 = function ($2)\n$0\nend"),
--
-- })


