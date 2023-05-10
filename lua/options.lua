local opt = vim.opt
local g = vim.g

opt.number = true
opt.relativenumber = true

opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.smartindent = true

opt.wrap = false

opt.swapfile = false
opt.backup = false
opt.undodir = os.getenv("HOME") .. "/./undodir"
opt.undofile = true

opt.hlsearch = false
opt.incsearch = true
opt.ignorecase = true
opt.smartcase = true

opt.cursorline = true

opt.termguicolors = true

opt.scrolloff = 20
opt.signcolumn = "yes"
opt.isfname:append("@-@")

opt.colorcolumn = "120"

opt.backspace = "indent,eol,start"
opt.completeopt = "menuone,noselect"

opt.clipboard:append("unnamedplus")

opt.splitright = true
opt.splitbelow = true

opt.iskeyword:append("-")
opt.fillchars = "eob: "

g.loaded_perl_provider = 0
