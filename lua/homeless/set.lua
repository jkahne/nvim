-- vim.opt.guicursor = ""

vim.opt.nu = true

vim.opt.tabstop     = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth  = 2
vim.opt.expandtab   = true
vim.opt.shiftround  = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup   = false
vim.opt.undodir  = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hidden = true
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Set options for better performance and folding behavior
vim.opt.lazyredraw = true  -- Minimize redraw operations while executing macros and other scripts
vim.opt.foldmethod = 'indent'  -- Use indentation levels to define folds
vim.opt.foldlevel = 10  -- Set the depth of opened folds (high number to keep most folds open)


vim.opt.termguicolors = true

vim.opt.scrolloff = 4
vim.opt.signcolumn = "yes"
-- vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50 -- 300
-- vim.opt.timeoutlen = 300


-- vim.opt.colorcolumn = "80"

vim.opt.clipboard:append("unnamedplus")


-- Enable showing matching parentheses
vim.opt.showmatch = true
-- vim.api.nvim_set_hl(0, 'MatchParen', { ctermbg = 'Yellow', ctermfg = 'Black' })
-- -- vim.api.nvim_set_hl(0, 'MatchParen', {ctermfg = 11, ctermbg = 232})  -- Using color codes for terminal
-- vim.cmd([[doautocmd ColorScheme]])


-- Use Lua API to create autocommands for cursorline highlighting
vim.api.nvim_create_augroup('CursorLineHighlight', { clear = true })

vim.api.nvim_create_autocmd('WinEnter', {
    group = 'CursorLineHighlight',
    pattern = '*',
    command = 'set cursorline'
})

vim.api.nvim_create_autocmd('WinLeave', {
    group = 'CursorLineHighlight',
    pattern = '*',
    command = 'set nocursorline'
})

vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Highligh when yanking test",
  group = vim.api.nvim_create_augroup("YankHighlight", { clear = true }),
  callback = function()
    -- vim.highlight.on_yank({ higroup = "IncSearch", timeout = 200 })
    vim.highlight.on_yank()
  end
})


-- local function auto_highlight_toggle()
--   local auto_highlight_group = vim.api.nvim_create_augroup('auto_highlight', { clear = true })
--
--   if vim.g.auto_highlight_active then
--     vim.api.nvim_del_augroup_by_id(auto_highlight_group)
--     vim.api.nvim_set_option('updatetime', 4000)
--     vim.g.auto_highlight_active = false
--     vim.fn.setreg('/', '')  -- Clear the search register
--   else
--     vim.api.nvim_create_autocmd('CursorHold', {
--       group = auto_highlight_group,
--       pattern = '*',
--       callback = function()
--         local cword = vim.fn.expand('<cword>')
--         vim.fn.setreg('/', '\\V\\<' .. vim.fn.escape(cword, '\\') .. '\\>')
--       end
--     })
--     vim.api.nvim_set_option('updatetime', 50)
--     vim.g.auto_highlight_active = true
--   end
--
--   return vim.g.auto_highlight_active
-- end
--
-- vim.keymap.set('n', '<Leader>fl', function()
--     if auto_highlight_toggle() then
--         vim.o.hlsearch = true
--     end
-- end, { noremap = true, silent = true, desc = "Toggle auto highlight" })






