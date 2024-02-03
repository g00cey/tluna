-- use lambdalisue/fern-renderer-nerdfont.vim
-- let vimsyn_embed = 'l'
-- hosi vim.g.fern#renderer = 'nerdfont'
-- let g:fern#default_exclude = '^\%(\.git\|\_\_pycache\_\_)$'
-- let g:fern#default_exclude = '^\%(\.git\|\.byebug\)$'
-- hosi vim.g.fern#default_exclude = '^\%(\.git\|__pycache__\)$'
vim.cmd([[
 let g:fern#renderer = 'nerdfont'
 let g:fern#default_exclude = '^\%(\.git\|__pycache__\)$'
]])
vim.keymap.set('n', '<C-n>', ':Fern . -reveal=% -drawer -toggle -width=40<CR>')
