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
require('pluginConfigs.surround');
require('pluginConfigs.commentConfig');
require('pluginConfigs.nvim-ts-autotag');

vim.g.loaded_newrw = 1;
vim.g.loaded_newrwPlugin = 1;

noremap = { noremap = true };
noremapAndSilent = { noremap = true, silent = true };

vim.keymap.set('n', "<leader>ev", ":vs ~/.config/nvim/init.lua<cr>", noremap);
vim.keymap.set('n', "<leader>sv", ":so ~/.config/nvim/init.lua<cr>", noremap);
vim.keymap.set('i', 'kj', '<esc>', noremap);
vim.keymap.set('i', 'jk', '<esc>', noremap);
vim.keymap.set('i', ';', '<esc>A;<esc>', noremap);
vim.keymap.set('n', 'cq', 'ciw', noremap);
vim.keymap.set('n', 'dq', 'daw', noremap);
vim.keymap.set({'n', 'v'}, '<leader>p', '"+p', noremap);
vim.keymap.set({'n', 'v'}, '<leader>P', '"+P', noremap);
vim.keymap.set({'n', 'v'}, '<leader>y', '"+y', noremap);
vim.keymap.set({'n', 'v'}, '<leader>d', '"+d', noremap);
vim.keymap.set({'n', 'v'}, '<leader>x', '"+x', noremap);
vim.keymap.set('n', 'go', 'o<esc>', noremap);
vim.keymap.set('n', 'gO', 'O<esc>', noremap);
vim.keymap.set('n', '<', '<<', noremap);
vim.keymap.set('n', '>', '>>', noremap);
vim.keymap.set('v', '<', '<gv', noremap);
vim.keymap.set('v', '>', '>gv', noremap);
vim.keymap.set('n', '<space>;', 'A;<esc>', noremap);
vim.keymap.set('n', '<space>n', ":bn<cr>", noremapAndSilent);
vim.keymap.set('n', '<space>b', ":bp<cr>", noremapAndSilent);
vim.keymap.set('n', '<space>w', ":bd<cr>", noremapAndSilent);
vim.keymap.set('n', '<C-h>', "<C-w>h", noremap);
vim.keymap.set('n', '<C-l>', "<C-w>l", noremap);
vim.keymap.set('n', '<C-j>', "<C-w>j", noremap);
vim.keymap.set('n', '<C-k>', "<C-w>k", noremap);
vim.keymap.set('n', '0', '^', noremap);
vim.keymap.set('n', '-', '$', noremap);

vim.keymap.set('n', '<C-y>', '<C-r>', {noremap = true});
vim.keymap.set('n', '<leader>o', ':NvimTreeToggle<cr>', {noremap = true});
vim.keymap.set('n', '{', 'A<space>{}<left><enter><enter><esc>kcc')
vim.keymap.set('i', '{<enter>', '<space>{}<left><enter><enter><esc>kcc', {noremap = true});

vim.keymap.set('n', '<space>m', ":Mason<cr>", {noremap = true});

-- vim.keymap.set('i', 'DC', 'describe("<space>tests",<space>()<space>=><space>{<enter>});<esc>kf"a', {noremap = true});
-- vim.keymap.set('i', 'IT', 'it("Should<space>",<space>async()<space>=><space>{<enter>});<esc>kf<space>a', {noremap = true});
-- vim.keymap.set('i', 'TR', '.to.be.revertedWith("");<esc>hhi', {noremap = true});
-- vim.keymap.set('i', 'TE', '.to.be.equals();<esc>hi', {noremap = true});
-- vim.keymap.set('i', 'EX', 'expect()<esc>i');
-- vim.keymap.set('i', 'AE', 'await<space>expect()<esc>i');
-- vim.keymap.set('i', 'awa', 'await<space>');

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
vim.o.ignorecase = true;
vim.o.smartcase = true;
