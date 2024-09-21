-- leader key
vim.g.mapleader = " "

-- open file finder (telescope workaround)
-- vim.keymap.set("n","<leader><leader>","<C-p>")

-- open config
vim.cmd("nmap <leader>c :e ~/.config/nvim/init.lua<cr>")

-- save file  
vim.cmd("imap <C-s> :w<cr>")
-- save file
vim.cmd('nmap <C-s> :w<cr>')

-- goto visual mode
vim.cmd('nmap ;; <s-v>')

-- select all
vim.cmd("nmap <C-a> ggVG")

-- split buffer
vim.cmd("nmap ss :vsplit<cr>") 
vim.cmd("nmap sv :split<cr>") 

-- switch b/w buffers
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