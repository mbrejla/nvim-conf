<h1 align=center>Basic Neovim Setup</h1> 
<p align=center>Personal Neovim config I use.</p>

Based on kickstart.nvim, but modular.

## Included amongst other stuff:

* telescope
* treesitter
* lsp with mason
* autocomplete with luasnip,friendly-snippets
* conform (with opinionated stylua changes)
* trouble
* neogit

### Needs (if not already installed, like in WSL2 Ubuntu)

* unzip *duh* 
* ripgrep
* win32yank (install in windows and set $PATH in wsl)

### Windows prerequisites (use chocolatey to install)

* see above and additionally:
* npm
* gzip, unzip
* compatible c-compiler (i prefer mingw)
* wget (optional)

This script expects your locale to be en_US on windows.
If you get an error on startup regarding locales, either change the en_US locale in the script or comment out the line.
