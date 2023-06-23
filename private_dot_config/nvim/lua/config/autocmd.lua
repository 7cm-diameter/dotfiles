local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

-- Don't auto commenting new lines
autocmd("BufEnter", {
  pattern = "*",
  command = "set fo-=c fo-=r fo-=o",
})

-- Start with insert mode when terminal is opened.
autocmd({ 'TermOpen' }, {
  pattern = '*',
  command = 'startinsert',
})
