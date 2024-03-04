vim.keymap.set('t', '<C-v>', 'getreg("")')
vim.keymap.set('n', '<C-p>', ':call FzfOmniFiles()<CR>')

vim.cmd([[
fun! FzfOmniFiles()
  let is_git = system('git status')
  if v:shell_error
    :Files
  else
    :GFiles
  endif
endfun
]])

vim.keymap.set("n", "<c-p>",
  "<cmd>lua require('fzf-lua').files()<CR>", { silent = true })

vim.keymap.set('n', '<C-g>', ':FzfPreviewProjectFilesRpc<CR>')
-- frでカーソル位置の単語をファイル検索する
vim.keymap.set('n', 'fr', ':FzfPreviewProjectFilesRpc <C-R>"<CR>')
-- frで選択した単語をファイル検索する
vim.keymap.set('x', 'fr', 'y:Rg <C-R>"<CR>')
vim.keymap.set('n', 'fr', 'y:Rg')

-- fbでバッファ検索を開く
vim.keymap.set('n', 'fb', ':FzfPreviewAllBuffersRpc<CR>')
-- fpでバッファの中で1つ前に開いたファイルを開く
vim.keymap.set('n', 'fp', ':FzfPreviewAllBuffersRpc<CR><CR>')
-- flで開いているファイルの文字列検索を開く
vim.keymap.set('n', 'fl', ':FzfPreviewLinesRpc<CR>')
-- fmでマーク検索を開く
vim.keymap.set('n', 'fm', ':FzfPreviewMarksRpc<CR>')
-- fhでファイル閲覧履歴検索を開く
vim.keymap.set('n', 'fh', ':History<CR>')
-- fcでコミット履歴検索を開く
vim.keymap.set('n', 'fc', ':FzfPreviewGitLogsRpc<CR>')
