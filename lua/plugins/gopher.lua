return{
    "olexsmir/gopher.nvim",
    ft = "go",
    build = function()
        require("gopher").setup()
        vim.cmd.GoInstallDeps()
    end,
    opts = {},
    keys = {
        { "<leader>jt", "<cmd>GoTagAdd json<cr>", desc = "Add json tags" },
{
    "<leader>gi",
    function()
        local iface = vim.fn.input("Interface (e.g. io.Reader): ")
        if iface ~= "" then
            require("gopher.impl").impl(iface)
        end
    end,
    desc = "Implement interface",
},
    },
}
