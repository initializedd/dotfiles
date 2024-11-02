-----------------------------------------------------------
-- DAP Configuration
-- https://github.com/mfussenegger/nvim-dap
-----------------------------------------------------------
local dap_status_ok, dap = pcall(require, 'dap')
if not dap_status_ok then
    return
end

local dap_ui_status_ok, dapui = pcall(require, 'dapui')
if not dap_ui_status_ok then
    return
end

dapui.setup()

dap.defaults.fallback.auto_continue_if_many_stopped = false

dap.adapters.gdb = {
    type = "executable",
    command = "gdb",
    args = { "-i", "dap" }
}

dap.configurations.c = {
    {
        name = "Launch",
        type = "gdb",
        request = "launch",
        program = function()
            return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
        end,
        cwd = "${workspaceFolder}",
        stopAtBeginningOfMainSubprogram = false,
    },
}

dap.configurations.cpp = dap.configurations.c

dap.listeners.before.launch.dapui_config = function()
    dapui.open()
end

vim.keymap.set('n', '<F5>', function() require('dap').continue() end, { desc = 'Continue' })
vim.keymap.set('n', '<F10>', function() require('dap').step_over() end, { desc = 'Step over' })
vim.keymap.set('n', '<F11>', function() require('dap').step_into() end, { desc = 'Step into' })
vim.keymap.set('n', '<F12>', function() require('dap').step_out() end, { desc = 'Step out' })
vim.keymap.set('n', '<Leader>db', function() require('dap').toggle_breakpoint() end, { desc = 'Toggle breakpoint' })
vim.keymap.set('n', '<Leader>dt', function() require('dapui').toggle() end, { desc = 'DAP UI' })

