-- leader key
vim.g.mapleader = " "

-- Load packer.nvim if installed
vim.cmd [[packadd packer.nvim]]

-- Initialize plugins
require('packer').startup(function(use)
  -- Packer manages itself
  use 'wbthomason/packer.nvim'

  -- mini.surround plugin
  -- turning it on, will make 'sh' worthless (I'll fix it when I have time)
  -- use {
  --   'echasnovski/mini.surround',
  --   config = function()
  --     require('mini.surround').setup()
  --   end
  -- }

  -- flash.nvim plugin
  use {
    'folke/flash.nvim',
    config = function()
      require('flash').setup()
    end
  }
end)

-- jumplist
vim.cmd("nmap <CR> m' <CR>")

-- setting jump key from s -> c (s ain't working for some reason)
vim.cmd("nmap ; <cmd>lua require('flash').jump()<CR>")
vim.cmd("xmap ; <cmd>lua require('flash').jump()<CR>")

-- open config
vim.cmd("nmap <leader>c :e D:\\vs-code-setup\\init.lua<cr>")

-- toggle filetree
vim.cmd("nmap <leader>e :call VSCodeNotify('workbench.action.toggleSidebarVisibility')<CR>")
 
-- find in files
vim.cmd("nmap <leader>/ :call VSCodeNotify('workbench.action.findInFiles')<CR>")

-- run code 
vim.cmd("nmap <leader>r :call VSCodeNotify('code-runner.run')<CR>")

-- toggle goto file
vim.cmd("nmap <leader><leader> :call VSCodeNotify('workbench.action.quickOpen')<CR>")

-- select all
vim.cmd("nmap <C-a> ggVG")

-- save file
vim.cmd('nmap <C-s> :w<cr>')

-- split buffer
vim.cmd("nmap ss :vsplit<cr>") 
vim.cmd("nmap sv :split<cr>") 

-- switch bw buffers
vim.cmd("nmap H :tabp<cr>") 
vim.cmd("nmap L :tabn<cr>") 

-- move between splits
vim.cmd('nmap sh <C-w>h')
vim.cmd('nmap sl <C-w>l')
vim.cmd('nmap sj <C-w>j')
vim.cmd('nmap sk <C-w>k')

-- open previously opened buffers
vim.cmd("nmap fd <C-T>")

-- close buffer
vim.cmd("nmap ff :q<cr>")

-- paste without overwriting (no paste on insertLeave)
vim.keymap.set('v', "p", "P")

-- clear search highlightings
vim.keymap.set("n", "<Esc>", ':nohlsearch<cr>')

-- sync system Clipboard
vim.opt.clipboard = "unnamedplus"

-- turn on numbers
vim.wo.number = true

-- search ignore case
vim.opt.ignorecase = true

-- disble "ignorecase" option if the search pattern contains atleast one uppercase character
vim.opt.smartcase = true
