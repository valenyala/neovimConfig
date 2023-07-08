-- ensure packer is installed
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

ensure_packer()
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
local map = vim.keymap.set;

map('n', "<leader>ev", ":vs ~/.config/nvim/init.lua<cr>", noremap);
map('n', "<leader>sv", ":so ~/.config/nvim/init.lua<cr>", noremap);
map('i', 'kj', '<esc>', noremap);
map('i', 'jk', '<esc>', noremap);
map('i', ';', '<esc>A;<esc>', noremap);
map('n', 'cq', 'ciw', noremap);
map('n', 'dq', 'daw', noremap);
map({'n', 'v'}, '<leader>p', '"+p', noremap);
map({'n', 'v'}, '<leader>P', '"+P', noremap);
map({'n', 'v'}, '<leader>y', '"+y', noremap);
map({'n', 'v'}, '<leader>d', '"+d', noremap);
map({'n', 'v'}, '<leader>x', '"+x', noremap);
map('n', 'go', 'o<esc>', noremap);
map('n', 'gO', 'O<esc>', noremap);
map('n', '<', '<<', noremap);
map('n', '>', '>>', noremap);
map('v', '<', '<gv', noremap);
map('v', '>', '>gv', noremap);
map('n', '<space>;', 'A;<esc>', noremap);
map('n', '<space>n', ":bn<cr>", noremapAndSilent);
map('n', '<space>b', ":bp<cr>", noremapAndSilent);
map('n', '<space>w', ":bd<cr>", noremapAndSilent);
map('n', '<C-h>', "<C-w>h", noremap);
map('n', '<C-l>', "<C-w>l", noremap);
map('n', '<C-j>', "<C-w>j", noremap);
map('n', '<C-k>', "<C-w>k", noremap);
map('n', '0', '^', noremap);
map('n', '-', '$', noremap);

map('n', '<C-y>', '<C-r>', {noremap = true});
map('n', '<leader>o', ':NvimTreeToggle<cr>', {noremap = true});
map('n', '{', 'A<space>{}<left><enter><enter><esc>kcc')
map('i', '{<enter>', '<space>{}<left><enter><enter><esc>kcc', {noremap = true});

map('n', '<space>m', ":Mason<cr>", {noremap = true});

-- map('i', 'DC', 'describe("<space>tests",<space>()<space>=><space>{<enter>});<esc>kf"a', {noremap = true});
-- map('i', 'IT', 'it("Should<space>",<space>async()<space>=><space>{<enter>});<esc>kf<space>a', {noremap = true});
-- map('i', 'TR', '.to.be.revertedWith("");<esc>hhi', {noremap = true});
-- map('i', 'TE', '.to.be.equals();<esc>hi', {noremap = true});
-- map('i', 'EX', 'expect()<esc>i');
-- map('i', 'AE', 'await<space>expect()<esc>i');
-- map('i', 'awa', 'await<space>');

local options = vim.opt;

options.guicursor = "n-v-c-sm:block,i-ci:ver25,r-cr-o:hor20";
options.number = true;
options.relativenumber = true;
options.swapfile = false;
options.hlsearch = false;
options.incsearch = true;
options.tabstop = 4;
options.softtabstop = 0;
options.expandtab = false;
options.shiftwidth = 4;
options.scrolloff = 10;
options.hidden = false;
options.ignorecase = true;
options.smartcase = true;
options.foldmethod = 'expr';
options.foldexpr = 'nvim_treesitter#foldexpr()';
