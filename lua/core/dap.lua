local dap_status_ok, dap = pcall(require, "dap")
if not dap_status_ok then
  return
end

local dapgo_status_ok, dapgo = pcall(require, "dap-go")
if not dapgo_status_ok then
  return
end

local dap_ui_status_ok, dapui = pcall(require, "dapui")
if not dap_ui_status_ok then
  return
end

local dapvt_status_ok, dapvt = pcall(require, "nvim-dap-virtual-text")
if not dapvt_status_ok then
  return
end

require("neodev").setup({
  library = { plugins = { "nvim-dap-ui" }, types = true },
  ...
})

-- keymaps
vim.keymap.set('n', '<leader>T', function() require('dap-go').debug_test() end)
vim.keymap.set('n', '<leader>dk', function() require('dap').continue() end)
vim.keymap.set('n', '<leader>dl', function() require('dap').run_last() end)
vim.keymap.set('n', '<F10>', function() require('dap').step_over() end)
vim.keymap.set('n', '<F11>', function() require('dap').step_into() end)
vim.keymap.set('n', '<F12>', function() require('dap').step_out() end)
vim.keymap.set('n', '<Leader>b', function() require('dap').toggle_breakpoint() end)
--vim.keymap.set('n', '<Leader>B', function() require('dap').set_breakpoint() end)
vim.keymap.set('n', '<Leader>L',
  function() require('dap').set_breakpoint(nil, nil, vim.fn.input('Log point message: ')) end)
vim.keymap.set('n', '<Leader>dr', function() require('dap').repl.open() end)

-- dap setup
dapgo.setup()
-- dapui.setup()
dapui.setup({
  controls = {
    element = "repl",
    enabled = true,
    icons = {
      disconnect = "ﮤ",
      pause = "",
      play = "",
      run_last = "",
      step_back = "",
      step_into = "",
      step_out = "",
      step_over = "",
      terminate = ""
    }
  },
  icons = {
    collapsed = "",
    current_frame = "ײַ",
    expanded = ""
  },
})
-- nvim-dap-virtual-text setup
dapvt.setup()

-- use nvim-dap events to open and close the windows automatically
dap.listeners.after.event_initialized["dapui_config"] = function()
  dapui.open {}
end
dap.listeners.before.event_terminated["dapui_config"] = function()
  dapui.close {}
end
dap.listeners.before.event_exited["dapui_config"] = function()
  dapui.close {}
end

-- REPL commands
-- .exit               Closes the REPL
-- .c or .continue     Same as |dap.continue|
-- .n or .next         Same as |dap.step_over|
-- .into               Same as |dap.step_into|
-- .into_target        Same as |dap.step_into{askForTargets=true}|
-- .out                Same as |dap.step_out|
-- .up                 Same as |dap.up|
-- .down               Same as |dap.down|
-- .goto               Same as |dap.goto_|
-- .scopes             Prints the variables in the current scopes
-- .threads            Prints all threads
-- .frames             Print the stack frames
-- .capabilities       Print the capabilities of the debug adapter
-- .b or .back         Same as |dap.step_back|
-- .rc or
-- .reverse-continue   Same as |dap.reverse_continue|
--
