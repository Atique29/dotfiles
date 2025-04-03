local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("vim-options")
require("lazy").setup("plugins")

require("gruvbox").setup({
   contrast = "hard", -- can be "hard", "soft" or empty string
   transparent_mode = true,
})
vim.o.background = "dark",
vim.cmd([[colorscheme gruvbox]])
