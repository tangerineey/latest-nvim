return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "MunifTanjim/nui.nvim",
        "nvim-tree/nvim-web-devicons",
    },
    lazy = false,
    config = function()
        require("neo-tree").setup({})
        vim.keymap.set("n", "<leader>e", "<cmd>Neotree toggle<CR>", { desc = "Toggle file explorer" })
        vim.keymap.set( "n", "<leader>E", "<cmd>Neotree focus reveal_force_cwd<CR>", { desc = "Toggle file explorer on current file" })
    end
}
