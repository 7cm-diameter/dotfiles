local autocmd = vim.api.nvim_create_autocmd
-- local set = vim.api.nvim_buf_set_keymap
local set = vim.keymap.set

autocmd("FileType", {
  pattern = {"r"},
  callback = function ()
    vim.cmd("inoremap <buffer> >> <Esc>:normal! a%>%<CR>a")
    vim.cmd("inoremap <buffer> <Space>in <Esc>:normal! a%in%<CR>a")
  end,
})
