return {
    "mfussenegger/nvim-dap",
    config = function()
        local dap = require("dap")
        dap.configurations.php = {
            {
                type = "php",
                request = "launch",
                name = "Listen for Xdebug",
                port = 9003,
                pathMappings = {
                    ["/srv/api"] = "${workspaceFolder}",
                    ["/app"] = "${workspaceFolder}",
                },
            },
        }

        dap.adapters.php = {
            type = "executable",
            command = "node",
            args = { "/home/gildas/projects/gquemener/vscode-php-debug/out/phpDebug.js" },
        }

        -- local dapui = require("dapui")
        -- dapui.setup({
        --     controls = {
        --         element = "repl",
        --         enabled = true,
        --         icons = {
        --             disconnect = "",
        --             pause = "",
        --             play = "",
        --             run_last = "",
        --             step_back = "",
        --             step_into = "",
        --             step_out = "",
        --             step_over = "",
        --             terminate = "",
        --         },
        --     },
        --     element_mappings = {},
        --     expand_lines = true,
        --     floating = {
        --         border = "single",
        --         mappings = {
        --             close = { "q", "<Esc>" },
        --         },
        --     },
        --     force_buffers = true,
        --     icons = {
        --         collapsed = "",
        --         current_frame = "",
        --         expanded = "",
        --     },
        --     layouts = {
        --         {
        --             elements = {
        --                 {
        --                     id = "scopes",
        --                     size = 0.75,
        --                 },
        --                 {
        --                     id = "stacks",
        --                     size = 0.25,
        --                 },
        --             },
        --             position = "left",
        --             size = 60,
        --         },
        --         {
        --             elements = {
        --                 {
        --                     id = "repl",
        --                     size = 0.5,
        --                 },
        --                 {
        --                     id = "console",
        --                     size = 0.5,
        --                 },
        --             },
        --             position = "bottom",
        --             size = 10,
        --         },
        --     },
        --     mappings = {
        --         edit = "e",
        --         expand = { "<CR>", "<2-LeftMouse>" },
        --         open = "o",
        --         remove = "d",
        --         repl = "r",
        --         toggle = "t",
        --     },
        --     render = {
        --         indent = 1,
        --         max_value_lines = 100,
        --     },
        -- })
    end,
    keys = {
        {
            "<F2>",
            function()
                require("dap").step_over()
            end,
            desc = "Step Over",
        },
        {
            "<F3>",
            function()
                require("dap").step_into()
            end,
            desc = "Step Into",
        },
        {
            "<F4>",
            function()
                require("dap").step_out()
            end,
            desc = "Step Out",
        },
        {
            "<F5>",
            function()
                require("dap").continue()
            end,
            desc = "Continue",
        },
        {
            "<F8>",
            function()
                require("dap").toggle_breakpoint()
            end,
            desc = "Toggle Breakpoint",
        },
    },
}
