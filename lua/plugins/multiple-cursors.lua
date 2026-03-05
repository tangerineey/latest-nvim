return {
    "brenton-leighton/multiple-cursors.nvim",
    version = "*",
    opts = {
        custom_key_maps = {
            {"n", "<Leader>|", function() require("multiple-cursors").align() end},
        };
        pre_hook = function()
            require('nvim-autopairs').disable()
        end,
        post_hook = function()
            require('nvim-autopairs').enable()
        end,
    },
    keys = {
        {"<C-j>", "<Cmd>MultipleCursorsAddDown<CR>", mode = {"n", "x"}, desc = "Add cursor and move down"}, 
        {"<C-k>", "<Cmd>MultipleCursorsAddUp<CR>", mode = {"n", "x"}, desc = "Add cursor and move up"},

        {"<Leader>mv", "<Cmd>MultipleCursorsAddVisualArea<CR>", mode = {"x"}, desc = "Add cursors to the lines of the visual area"},

        {"<Leader>A", "<Cmd>MultipleCursorsAddMatches<CR>", mode = {"n", "x"}, desc = "Add cursors to cword"},

        {"<Leader>d", "<Cmd>MultipleCursorsAddJumpNextMatch<CR>", mode = {"n", "x"}, desc = "Add cursor and jump to next cword"},
        {"<Leader>D", "<Cmd>MultipleCursorsJumpNextMatch<CR>", mode = {"n", "x"}, desc = "Jump to next cword"},

        {"<Leader>l", "<Cmd>MultipleCursorsLock<CR>", mode = {"n", "x"}, desc = "Lock virtual cursors"},
    },
}
