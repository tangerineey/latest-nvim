return {
    "nvim-tree/nvim-tree.lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        local tree = require("nvim-tree")

        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1

        tree.setup({
            respect_buf_cwd = true,
            sync_root_with_cwd = true,
            view = {
                width = 35,
            },
            filters = {
                dotfiles = false,
            },
            renderer = {
                group_empty = true,
            },
        })

        vim.keymap.set("n", "<leader>e", function()
            require("nvim-tree.api").tree.toggle()
        end, { desc = "Toggle NvimTree" })
    end,
}
