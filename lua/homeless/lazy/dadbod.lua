return {
  "tpope/vim-dadbod",
  dependencies = {
    "kristijanhusak/vim-dadbod-ui",
    "kristijanhusak/vim-dadbod-completion",
    "hrsh7th/nvim-cmp",
  },

  config = function()
    local function db_completion()
      require("cmp").setup.buffer { sources = { { name = "vim-dadbod-completion" } } }
    end

    vim.keymap.set("n", "<leader>db",  ":DBUIToggle<CR>")

    vim.g.db_ui_use_nerd_fonts = 1
    vim.g.db_ui_save_location = vim.fn.stdpath "config" .. require("plenary.path").path.sep .. "db_ui"

    vim.api.nvim_create_autocmd("FileType", {
      pattern = {
        "sql",
      },
      command = [[setlocal omnifunc=vim_dadbod_completion#omni]],
    })

    vim.api.nvim_create_autocmd("FileType", {
      pattern = {
        "sql",
        "mysql",
        "plsql",
      },
      callback = function()
        vim.schedule(db_completion)
      end,
    })

  end
}
