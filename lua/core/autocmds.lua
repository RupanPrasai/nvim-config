-- Autocommands

-- Highlight when yanking (copying) text
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('highlight-yank', { clear = true }),
  callback = function()
    vim.hl.on_yank()
  end,
})

-- Make CursorLine highlight darker when in Neo-Tree
local base_cursorline = '#d6dae2'
local neotree_cursorline = '#b3bac7'

vim.api.nvim_create_autocmd({ 'WinEnter', 'BufEnter' }, {
  callback = function()
    if vim.bo.filetype == 'neo-tree' then
      vim.api.nvim_set_hl(0, 'CursorLine', { bg = neotree_cursorline })
    else
      vim.api.nvim_set_hl(0, 'CursorLine', { bg = base_cursorline })
    end
  end,
})
