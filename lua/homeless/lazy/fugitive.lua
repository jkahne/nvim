return {
    "tpope/vim-fugitive",
    config = function()
        vim.keymap.set("n", "gb", "<cmd>Git blame<CR>")
    end
}
