function ColorMyPencils(color)

  color = color or "terafox"
  -- color = color or "happy_hacking"
  -- color = color or "hybrid_reverse"
  vim.cmd.colorscheme(color)

  -- vim.api.nvim_set_hl(0, 'MatchParen', { ctermbg = 'Yellow', ctermfg = 'Black' })

  -- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
  -- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })


  -- -- Set the highlighting for LineHighlight in Lua
  -- vim.api.nvim_set_hl(0, 'LineHighlight', {
  --   ctermbg = 'yellow',
  --   ctermfg = 'darkgray',
  -- })

end

return {

  { "brenoprata10/nvim-highlight-colors",

    config=function()
      require('nvim-highlight-colors').setup {
        enable_named_colors = true,
        enable_tailwind = true
      }

    end
  },

  -- {
  --   "folke/tokyonight.nvim",
  --   config = function()
  --     require("tokyonight").setup({
  --       -- your configuration comes here
  --       -- or leave it empty to use the default settings
  --       style = "storm", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
  --       transparent = true, -- Enable this to disable setting the background color
  --       terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
  --       styles = {
  --         -- Style to be applied to different syntax groups
  --         -- Value is any valid attr-list value for `:help nvim_set_hl`
  --         comments = { italic = false },
  --         keywords = { italic = false },
  --         -- Background styles. Can be "dark", "transparent" or "normal"
  --         sidebars = "dark", -- style for sidebars, see below
  --         floats = "dark", -- style for floating windows
  --       },
  --     })
  --   end
  -- },
  --
  -- {
  --   "rose-pine/neovim",
  --   name = "rose-pine",
  --   config = function()
  --     require('rose-pine').setup({
  --       disable_background = true,
  --       styles = {
  --         italic = false,
  --       },
  --     })
  --
  --   end
  -- },
  -- {
  --   "rafi/awesome-vim-colorschemes",
  --   config = function()
  --     ColorMyPencils()
  --   end
  -- },

  {
    "EdenEast/nightfox.nvim" ,
    config = function()
      require('nightfox').setup({
        -- disable_background = true,
      })
      ColorMyPencils()
    end
  },


}
