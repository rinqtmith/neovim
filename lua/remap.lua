local wk = require("which-key")

wk.register({
  ["jj"] = {"<ESC>", "Escape INSERT mode"},
}, {mode = "i"})

wk.register({
  ["<C-h>"] = {"<C-w><C-h>", "Focus left window."},
  ["<C-l>"] = {"<C-w><C-l>", "Focus right window."},
  ["<C-j>"] = {"<C-w><C-j>", "Focus down window."},
  ["<C-k>"] = {"<C-w><C-k>", "Focus up window."},
})
