require('pluginManager')
require('colorscheme')
require('telescopeConfig')
require('bufferlineConfig')

vim.g.netwr_banner = 0;

vim.keymap.set('i', 'kj', '<esc>', { noremap = true });
vim.keymap.set('i', 'jk', '<esc>', { noremap = true });
vim.keymap.set('i', ';', '<esc>A;<esc>', { noremap = true });
vim.keymap.set('n', 'cq', 'ciw', { noremap = true });
vim.keymap.set('n', 'dq', 'daw', { noremap = true });
vim.keymap.set({'n', 'v'}, '<leader>p', '"+p', { noremap = true });
vim.keymap.set({'n', 'v'}, '<leader>y', '"+y', { noremap = true });
vim.keymap.set({'n', 'v'}, '<leader>d', '"+d', { noremap = true });
vim.keymap.set({'n', 'v'}, '<leader>x', '"+x', { noremap = true });
vim.keymap.set('n', 'go', 'o<esc>', {noremap = true});
vim.keymap.set('n', 'gO', 'O<esc>', {noremap = true});
vim.keymap.set('n', '<', '<<', {noremap = true});
vim.keymap.set('n', '>', '>>', {noremap = true});
vim.keymap.set('n', '<space>;', 'A;<esc>', {noremap = true});
vim.keymap.set('n', '<space>n', ":bn<cr>", {noremap = true});
vim.keymap.set('n', '<space>b', ":bp<cr>", {noremap = true});
vim.keymap.set('n', '<space>w', ":bd<cr>", {noremap = true});
vim.keymap.set('n', '<C-h>', "<C-w>h", {noremap = true});
vim.keymap.set('n', '<C-l>', "<C-w>l", {noremap = true});

vim.o.guicursor = "n-v-c-sm:block,i-ci:ver25,r-cr-o:hor20";
vim.o.relativenumber = true;
vim.o.swapfile = false;
vim.o.hlsearch = false;
