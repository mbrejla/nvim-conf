-- Check if we are running on Windows
if vim.fn.has("win32") == 1 then
  -- force en_US
  vim.api.nvim_exec('language en_US', true)
end

-- Set Tab to 2 spaces
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
-- set leader and local leader to space
vim.g.mapleader = " "
vim.g.maplocalleader = " "
-- show line numbers
vim.opt.number = true
-- always show signcolumn
vim.opt.signcolumn = "yes"
-- show relative line numbers
vim.opt.relativenumber = true
-- highlight current line
vim.opt.cursorline = true
-- show whitespace characters
vim.opt.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

-- Preview substitutions live, as you type!
vim.opt.inccommand = "split"

-- use system clipboard - make sure a valid clipboard provider is installed
vim.opt.clipboard = "unnamedplus"

-- laod lazy plugin manager
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
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

require("lazy").setup("plugins")

-- simplify window navigation
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- stay in indent mode
vim.keymap.set("v", "<", "<gv", { desc = "Un-indent" })
vim.keymap.set("v", ">", ">gv", { desc = "Indent" })

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlight when yanking (copying) text",
  group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})
