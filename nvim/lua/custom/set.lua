require("custom.packer")                                                        
-- require("html.vim")                                                          

-- vim.opt.guicursor = ""                                                       

vim.opt.nu = true                                                               
vim.opt.relativenumber = true                                                   

vim.opt.errorbells = false                                                      

vim.opt.tabstop = 2                                                             
vim.opt.softtabstop = 2                                                         
vim.opt.shiftwidth = 2                                                          
vim.opt.expandtab = true                                                        

vim.opt.smartindent = true
vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true 

vim.opt.hlsearch = false 
vim.opt.incsearch = true                                                     

vim.opt.termguicolors = true 
vim.opt.sidescrolloff = 8
vim.opt.scrolloff = 8                                                       
vim.opt.signcolumn = "yes"                                                    
vim.opt.isfname:append("@-@")                                      

-- Give more space for displaying messages. 
vim.opt.cmdheight = 1       

-- Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable 
-- delays and poor user experience. 
vim.opt.updatetime = 50                                 

-- Don't pass messages to |ins-completion-menu|.       
vim.opt.shortmess:append("c")


vim.opt.colorcolumn = "80"
vim.g.mapleader = " " 

vim.opt.timeoutlen = 1000 
vim.opt.shortmess:append({ I = true })
vim.opt.clipboard = "unnamedplus"


-- Run Nerd Tree on start (Need to create separate file for this)
-- autocmd StdinReadPre * let s:std_in=1
-- autocmd VimEnter * if argc() == 0 && !exists(“s:std_in”) | NERDTree | endif
--
--

-- Telescope Frecency Hotkey
vim.api.nvim_set_keymap("n", "<leader><leader>", "<Cmd>lua require('telescope').extensions.frecency.frecency({ workspace = 'CWD' })<CR>", {noremap = true, silent = true})

