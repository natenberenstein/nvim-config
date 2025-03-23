return {
  "psliwka/vim-smoothie",
  config = function ()
    local keymap = vim.keymap

    keymap.set("n", "<C-d>", "<cmd>call smoothie#do('<C-d>zz')<CR>", { noremap = true, silent = true })
    keymap.set("n", "<C-u>", "<cmd>call smoothie#do('<C-u>zz')<CR>", { noremap = true, silent = true })

  end,
}
