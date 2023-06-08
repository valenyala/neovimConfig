require('pluginManager');
require('pluginConfigs.colorscheme');
require('pluginConfigs.bufferline');
require('pluginConfigs.telescope');
require('pluginConfigs.treesitter');
require('pluginConfigs.terminal');
require('pluginConfigs.autopair');
require('pluginConfigs.completion');
require('pluginConfigs.nvimtree');
require('pluginConfigs.lsp.mason');
require('pluginConfigs.lsp.handlers').setup();


vim.g.loaded_newrw = 1;
vim.g.loaded_newrwPlugin = 1;

vim.keymap.set('i', 'kj', '<esc>', { noremap = true });
vim.keymap.set('i', 'jk', '<esc>', { noremap = true });
vim.keymap.set('i', ';', '<esc>A;<esc>', { noremap = true });
vim.keymap.set('n', 'cq', 'ciw', { noremap = true });
vim.keymap.set('n', 'dq', 'daw', { noremap = true });
vim.keymap.set({'n', 'v'}, '<leader>p', '"+p', { noremap = true });
vim.keymap.set({'n', 'v'}, '<leader>P', '"+P', { noremap = true });
vim.keymap.set({'n', 'v'}, '<leader>y', '"+y', { noremap = true });
vim.keymap.set({'n', 'v'}, '<leader>d', '"+d', { noremap = true });
vim.keymap.set({'n', 'v'}, '<leader>x', '"+x', { noremap = true });
vim.keymap.set('n', 'go', 'o<esc>', {noremap = true});
vim.keymap.set('n', 'gO', 'O<esc>', {noremap = true});
vim.keymap.set('n', '<', '<<', {noremap = true});
vim.keymap.set('n', '>', '>>', {noremap = true});
vim.keymap.set('v', '<', '<gv', {noremap = true});
vim.keymap.set('v', '>', '>gv', {noremap = true});
vim.keymap.set('n', '<space>;', 'A;<esc>', {noremap = true});
vim.keymap.set('n', '<space>n', ":bn<cr>", {noremap = true});
vim.keymap.set('n', '<space>b', ":bp<cr>", {noremap = true});
vim.keymap.set('n', '<space>w', ":bd<cr>", {noremap = true});
vim.keymap.set('n', '<C-h>', "<C-w>h", {noremap = true});
vim.keymap.set('n', '<C-l>', "<C-w>l", {noremap = true});
vim.keymap.set('n', '<C-j>', "<C-w>j", {noremap = true});
vim.keymap.set('n', '<C-k>', "<C-w>k", {noremap = true});

vim.keymap.set('n', '<C-y>', '<C-r>', {noremap = true});
vim.keymap.set('n', '<leader>e', ':NvimTreeToggle<cr>', {noremap = true});

vim.keymap.set('n', '<space>m', ":Mason<cr>", {noremap = true});

vim.o.guicursor = "n-v-c-sm:block,i-ci:ver25,r-cr-o:hor20";
vim.o.number = true;
vim.o.relativenumber = true;
vim.o.swapfile = false;
vim.o.hlsearch = false;
vim.o.incsearch = true;
vim.o.tabstop = 4;
vim.o.softtabstop = 0;
vim.o.expandtab = false;
vim.o.shiftwidth = 4;
vim.o.scrolloff = 10;
vim.o.hidden = false;

