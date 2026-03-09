return {
    "ej-shafran/compile-mode.nvim",
    branch = "latest",
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    config = function()
        vim.g.compile_mode = {
            bang_expansion = true,
        }

        vim.keymap.set("n", "<leader>m", "<cmd>Compile<CR>", {
            desc = "Open compile prompt",
        })
    end
}
