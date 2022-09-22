local Remap = require("custom.keymap")
local nnoremap = Remap.nnoremap
local vnoremap = Remap.vnoremap
local inoremap = Remap.inoremap
local xnoremap = Remap.xnoremap
local nmap = Remap.nmap

nnoremap("<leader>x", ":Ex<CR>")
nnoremap("<leader>u", ":UndotreeShow<CR>")

vnoremap("J", ":m '>+1<CR>gv=gv")
vnoremap("K", ":m '<-2<CR>gv=gv")

nnoremap("Y", "yg$")
nnoremap("n", "nzzzv")
nnoremap("N", "Nzzzv")
nnoremap("J", "mzJ`z")
nnoremap("<C-d>", "<C-d>zz")
nnoremap("<C-u>", "<C-u>zz")


vnoremap("<", "<gv")
vnoremap(">", ">gv")


-- greatest remap ever
-- xnoremap("<leader>p", "\"_dP")

nnoremap ("<leader>ff", "<cmd>lua require('telescope.builtin').find_files()<cr>")
nnoremap ("<leader>fg", "<cmd>lua require('telescope.builtin').live_grep()<cr>")
nnoremap ("<leader>fb", "<cmd>lua require('telescope.builtin').buffers()<cr>")
nnoremap ("<leader>fh", "<cmd>lua require('telescope.builtin').help_tags()<cr>")

-- -- next greatest remap ever : asbjornHaland
-- nnoremap("<leader>y", "\"+y")
-- vnoremap("<leader>y", "\"+y")
-- nmap("<leader>Y", "\"+Y")
-- 
-- nnoremap("<leader>d", "\"_d")
-- vnoremap("<leader>d", "\"_d")
-- 
-- vnoremap("<leader>d", "\"_d")
-- 
-- inoremap("<C-c>", "<Esc>")
-- 
-- nnoremap("Q", "<nop>")
-- nnoremap("<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
-- nnoremap("<leader>f", function()
--    vim.lsp.buf.format()
-- end)
--
--
nnoremap ("k", "gk", { silent = true })
nnoremap ("j", "gj", { silent = true })


------Nerd Tree
nnoremap ("<leader>n", ":NERDTreeToggle<CR>")
nnoremap ("<C-n>", ":NERDTree<CR>")
nnoremap ("<C-t>", ":NERDTreeToggle<CR>")
nnoremap ("<C-f>", ":NERDTreeFind<CR>")
