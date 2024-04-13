vim.g.mapleader = ","
vim.keymap.set('i', '<Leader>,', '<Esc>', { noremap = true })
vim.keymap.set('v', '<Leader>,', '<Esc>', { noremap = true })


vim.keymap.set('n', 'go', 'o<Esc>', { noremap = false })
vim.keymap.set('n', 'gO', 'O<Esc>', { noremap = false })
vim.keymap.set('n', 'gp', '`[v`]', { noremap = true })


vim.keymap.set({'n', 'v', 'o'}, 'j', 'gj', { noremap = false })
vim.keymap.set({'n', 'v', 'o'}, 'k', 'gk', { noremap = false })

vim.keymap.set('n', 'n', 'nzzzv', { noremap = true })
vim.keymap.set('n', 'N', 'Nzzzv', { noremap = true })

vim.keymap.set('x', 'p', 'pgvy', { noremap = true })

vim.keymap.set('n', 'Q', 'q', { noremap = false })

vim.keymap.set('n', 'Y', 'y$', { noremap = true })

vim.keymap.set('n', '<S-Tab>', 'za', { noremap = true })

vim.keymap.set('n', '<C-d>', '<C-d>zz', { noremap = true })
vim.keymap.set('n', '<C-u>', '<C-u>zz', { noremap = true })

vim.keymap.set('n', '<C-H>', '<C-W>h', { noremap = false })
vim.keymap.set('n', '<C-J>', '<C-W>j', { noremap = false })
vim.keymap.set('n', '<C-K>', '<C-W>k', { noremap = false })
vim.keymap.set('n', '<C-L>', '<C-W>l', { noremap = false })

vim.keymap.set('i', '<C-h>', '<Left>', { noremap = true })
vim.keymap.set('i', '<C-j>', '<Down>', { noremap = true })
vim.keymap.set('i', '<C-k>', '<Up>', { noremap = true })
vim.keymap.set('i', '<C-l>', '<Right>', { noremap = true })


-- Mappings for =>, <%= %>, and #{}
vim.keymap.set('i', '<C-Enter>', ' => ', { noremap = true })
vim.keymap.set('i', '<C-,>', '<%=  %>', { noremap = true })
vim.keymap.set('n', '<C-,>', 'i<%=  %>', { noremap = true })
vim.keymap.set('i', '<C-.>', '#{  }', { noremap = true })
vim.keymap.set('n', '<C-.>', 'i#{  }', { noremap = true })

-- Leader key mappings for #{}, ${}, and %{}
vim.keymap.set('i', '<Leader>3', '#{  }', { noremap = true })
vim.keymap.set('n', '<Leader>3', 'i#{  }', { noremap = true })
vim.keymap.set('i', '<Leader>4', '${  }', { noremap = true })
vim.keymap.set('n', '<Leader>4', 'i${  }', { noremap = true })
vim.keymap.set('i', '<Leader>5', '%{  }', { noremap = true })
vim.keymap.set('n', '<Leader>5', 'i%{  }', { noremap = true })

-- Positioning corrections with cursor movements after inserting templates
vim.keymap.set('i', '<C-,>', function() vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('<%=  %><Left><Left><Left>', true, false, true), 'n', true) end, { noremap = true })
vim.keymap.set('n', '<C-,>', function() vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('i<%=  %><Left><Left><Left>', true, false, true), 'n', true) end, { noremap = true })
vim.keymap.set('i', '<C-.>', function() vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('#{  }<Left><Left>', true, false, true), 'n', true) end, { noremap = true })
vim.keymap.set('n', '<C-.>', function() vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('i#{  }<Left><Left>', true, false, true), 'n', true) end, { noremap = true })

vim.keymap.set('i', '<Leader>3', function() vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('#{  }<Left><Left>', true, false, true), 'n', true) end, { noremap = true })
vim.keymap.set('n', '<Leader>3', function() vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('i#{  }<Left><Left>', true, false, true), 'n', true) end, { noremap = true })
vim.keymap.set('i', '<Leader>4', function() vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('${  }<Left><Left>', true, false, true), 'n', true) end, { noremap = true })
vim.keymap.set('n', '<Leader>4', function() vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('i${  }<Left><Left>', true, false, true), 'n', true) end, { noremap = true })
vim.keymap.set('i', '<Leader>5', function() vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('%{  }<Left><Left>', true, false, true), 'n', true) end, { noremap = true })
vim.keymap.set('n', '<Leader>5', function() vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('i%{  }<Left><Left>', true, false, true), 'n', true) end, { noremap = true })

-- undo break points
vim.keymap.set('i', ',', ',<C-g>u', { noremap = true })
vim.keymap.set('i', '.', '.<C-g>u', { noremap = true })
vim.keymap.set('i', '!', '!<C-g>u', { noremap = true })
vim.keymap.set('i', '?', '?<C-g>u', { noremap = true })

-- Tab navigation and management with leader key
vim.keymap.set('n', '<Leader>>', ':tabnext<CR>', { noremap = false })
vim.keymap.set('n', '<Leader><', ':tabprevious<CR>', { noremap = false })
vim.keymap.set('n', '<Leader>T', ':tabnew<CR>', { noremap = false })

-- Search and replace shortcuts
vim.keymap.set('n', '<Leader>rr', ':%s//g<Left><Left>', { noremap = true })
vim.keymap.set('n', '<Leader>rw', function()
    vim.cmd('%s/' .. vim.fn.expand('<cword>') .. '//g<Left><Left>')
end, { noremap = true })

-- Toggle text wrapping
vim.keymap.set('n', '<Leader>w', ':set wrap!<CR>', { noremap = false })

-- Clear search highlighting with a leader key
vim.keymap.set('n', '<Leader><space>', ':noh<CR>', { noremap = true })

-- Map '0' to go to the first non-blank character of the line
vim.keymap.set({'n', 'v', 'o'}, '0', '^', { noremap = false })

-- Scratch and Vim notes with leader key for quick access
vim.keymap.set('n', '<Leader>sn', ':tab drop /Users/jkahne/Library/Mobile\\ Documents/iCloud~md~obsidian/Documents/Brain/06\\ Utilities/scratch.md<CR>', { noremap = true })
vim.keymap.set('n', '<Leader>vn', ':tab drop /Users/jkahne/Library/Mobile\\ Documents/iCloud~md~obsidian/Documents/Brain/06\\ Utilities/vimnotes.md<CR>', { noremap = true })


vim.api.nvim_create_user_command(
  'W',
  function()
    vim.cmd('w !sudo tee % > /dev/null')
    vim.cmd('edit!')
  end,
  {}
)

-- Lua mapping for handling the <TAB> key in insert mode
vim.keymap.set('i', '<TAB>', function()
    if vim.fn.pumvisible() == 1 then
        return '<C-y>'
    else
        return '<TAB>'
    end
end, { noremap = true, expr = true, silent = true })

