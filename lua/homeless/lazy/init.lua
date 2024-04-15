return {
  {
    "nvim-lua/plenary.nvim",
    name = "plenary"
  },
  {
    "nvim-tree/nvim-web-devicons",
    name = "nvim-web-devicons",
    config = function()
      require('nvim-web-devicons').setup({})
    end
  },
  { 'tpope/vim-abolish' },
  { 'tpope/vim-endwise' },
  { 'kshenoy/vim-signature' },
  { 'rizzatti/dash.vim' },
  { 'eandrju/cellular-automaton.nvim',
    config =function()
      vim.keymap.set('n', '<leader>fml', '<cmd>CellularAutomaton make_it_rain<cr>', { noremap = false, silent = true })
    end
  },
  {
    'mhinz/vim-signify',
    config=function()
      vim.g.signify_update_on_bufenter = 1
      vim.g.signify_update_on_focusgained = 1
    end},
  {
    'junegunn/vim-easy-align',
    config = function()
      vim.keymap.set('n', 'ga', '<Plug>(EasyAlign)', { noremap = false, silent = true })
      vim.keymap.set('x', 'ga', '<Plug>(EasyAlign)', { noremap = false, silent = true })

    end
  },
  { 'mg979/vim-visual-multi', },
  {
    'windwp/nvim-ts-autotag',
    config = true
  },
  {
    'smoka7/hop.nvim',
    version = "*",
    opts = {},
    config = function()
      require('hop').setup({
        vim.keymap.set('n', 's', ':HopChar2<CR>', { noremap = true, silent = true })
      })
    end
  },
  {
    "azabiong/vim-highlighter",
    init = function()
      vim.cmd([[
        let HiSet   = 'f<CR>'
        let HiErase = 'f<BS>'
        let HiClear = 'f<C-L>'
        " let HiFind  = 'f<Tab>'
        let HiSetSL = 't<CR>'
        ]])
    end
  },
  {
    'stevearc/aerial.nvim',
    opts = {},
    -- Optional dependencies
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "nvim-tree/nvim-web-devicons"
    },
    config = function()
      require("aerial").setup({
        -- optionally use on_attach to set keymaps when aerial has attached to a buffer
        on_attach = function(bufnr)
          -- Jump forwards/backwards with '{' and '}'
          vim.keymap.set("n", "{", "<cmd>AerialPrev<CR>", { buffer = bufnr })
          vim.keymap.set("n", "}", "<cmd>AerialNext<CR>", { buffer = bufnr })
        end,
      })
      -- You probably also want to set a keymap to toggle aerial
      vim.keymap.set('n', '<leader>aa', '<cmd>AerialToggle!<CR>')
    end
  },
  {
    "vim-test/vim-test",
    config = function()
      vim.keymap.set('n', '<Leader>sa', ':TestSuite<CR>', { noremap = true, silent = true, desc = "Run Test Suite" })
      vim.keymap.set('n', '<Leader>sf', ':TestFile<CR>', { noremap = true, silent = true, desc = "Run Test File" })
      vim.keymap.set('n', '<Leader>ss', ':TestNearest<CR>', { noremap = true, silent = true, desc = "Run Nearest Test" })
      vim.keymap.set('n', '<Leader>sl', ':TestLast<CR>', { noremap = true, silent = true, desc = "Run Last Test" })
      vim.keymap.set('n', '<Leader>sv', ':TestVisit<CR>', { noremap = true, silent = true, desc = "Visit Test File" })

    end
  },
  {
    "elixir-tools/elixir-tools.nvim",
    version = "*",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      local elixir = require("elixir")
      local elixirls = require("elixir.elixirls")

      elixir.setup {
        nextls = {
          enable = true
        },
        credo = {
          -- enable = true
        },
        elixirls = {
          enable = true,
          settings = elixirls.settings {
            -- dialyzerEnabled = false,
            -- enableTestLenses = false,
            dialyzerEnabled = true,
            fetchDeps = false,
            enableTestLenses = false,
            suggestSpecs = false,
          },
          -- on_attach = function(client, bufnr)
          --   vim.keymap.set("n", "<space>fp", ":ElixirFromPipe<cr>", { buffer = true, noremap = true })
          --   vim.keymap.set("n", "<space>tp", ":ElixirToPipe<cr>", { buffer = true, noremap = true })
          --   vim.keymap.set("v", "<space>em", ":ElixirExpandMacro<cr>", { buffer = true, noremap = true })
          -- end,
        }
      }

      vim.keymap.set('n', '<leader>eo', function()
        require("elixir.elixirls").open_output_panel()
      end, { noremap = true, silent = true, desc = "Open ElixirLS Output Panel" })

      vim.keymap.set('n', '<leader>er', ':ElixirRestart<CR>:edit<CR>', { noremap = true, silent = true, desc = "Restart ElixirLS and Refresh Buffer" })


    end,
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
  },
  {
    'szw/vim-maximizer',
    config = function()
      -- Set up key mapping for maximizing the current split window
      vim.keymap.set('n', '<C-w>m', ':MaximizerToggle!<CR>', {noremap = true, silent = true, desc = "Toggle maximize current split"})

    end
  },

  {
    "utilyre/sentiment.nvim",
    version = "*",
    event = "VeryLazy", -- keep for lazy loading
    opts = {
      -- config
    },
    init = function()
      -- `matchparen.vim` needs to be disabled manually in case of lazy loading
      vim.g.loaded_matchparen = 1
    end,
  },
}

