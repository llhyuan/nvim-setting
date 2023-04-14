local ls = require("luasnip")

-- This is a snippet creator
-- s(<trigger>, <nodes>)
local s = ls.snippets

-- This is a format node.
-- It takes a format string, and a list of nodes
-- fmt (<fmt_string>, , {... nodes})
local fmt = require("luasnip.extras.fmt").fmt

-- This is an insert noded
-- It takes a position (like $1) and optionally some default text
-- i(<position>, [default_text])
local i = ls.insert_node

-- Repeats a noded
-- rep (<position>)
local rep = require("luasnip.extras").rep


ls.add_snippets({ "lua",
  {
    -- Lua specific snippets go here.
    s("main", fmt("package main/nimport \"fmt\"/n/nfunc main(){{/n{}}}", { i(1) })),
  }
})
