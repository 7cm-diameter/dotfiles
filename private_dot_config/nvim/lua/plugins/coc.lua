local set = vim.keymap.set

return {
  "neoclide/coc.nvim",
  branch = "master",
  build = "yarn install --frozen-lockfile",

  config = function()
    local opts = { silent = true, noremap = true, expr = true, replace_keycodes = false }
    -- set("i", "<TAB>", 'coc#pum#visible() ? coc#pum#next(1) : v:lua.check_back_space() ? "<TAB>" : coc#refresh()', opts)
    -- set("i", "<S-TAB>", [[coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"]], opts)
    -- set("i", "<C-j>", 'coc#pum#visible() ? coc#pum#next(1) : v:lua.check_back_space() ? "<TAB>" : coc#refresh()', opts)
    -- set("i", "<C-k>", [[coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"]], opts)
    set("i", "<C-space>", "coc#refresh()", { silent = true, expr = true })
    set("i", "<C-m>", [[coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"]], opts)
    set("i", "<C-l>", "<Plug>(coc-snippets-expand)")

    set("n", "gn", "<Plug>(coc-diagnostic-prev)", { silent = true })
    set("n", "gp", "<Plug>(coc-diagnostic-next)", { silent = true })
  end
}
