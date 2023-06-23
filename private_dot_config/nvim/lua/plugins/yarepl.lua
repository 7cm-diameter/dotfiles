local set = vim.keymap.set

return {
  'milanglacier/yarepl.nvim',

  config = function ()
    local yarepl = require("yarepl")

    local function choose_repl()
      ft = string.format(vim.bo.filetype)
      if ft == "python" then
        if vim.fn.executable "ipython"  == 1 then
          return " ipython"
        else
          return " python"
        end
      elseif ft == "R" then
        if vim.fn.executabe "radian"  == 1 then
          return " radian"
        else
          return " R"
        end
      else
        return " fish"
      end
    end

    yarepl.setup({
      bufliested = true,
      scratch = true,
      ft = "REPL",
      scroll_to_bottom_after_sending = true,

      metas = {
        radian = { cmd = 'radian', formatter = yarepl.formatter.bracketed_pasting },
        ipython = { cmd = 'poetry run ipython --no-autoindent', formatter = yarepl.formatter.bracketed_pasting },
        python = { cmd = 'poetry run python', formatter = yarepl.formatter.trim_empty_lines },
        R = { cmd = 'R', formatter = yarepl.formatter.trim_empty_lines },
        fish = { cmd = 'fish', formatter = yarepl.formatter.bracketed_pasting },
      },

      set("n", "<leader>tc", "<CMD>REPLClose<CR>"),
      set("n", "<leader><CR>", "<CMD>REPLSendLine<CR>"),
      set("v", "<leader><CR>", "<CMD>REPLSendVisual<CR>"),

      vim.api.nvim_create_autocmd("BufEnter", {
        pattern = "*",
        callback = function ()
          set("n", "<leader>to", "<CMD>REPLStart"..choose_repl().."<CR>")
        end
      })
    })
  end
}
