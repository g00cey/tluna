function! SetRestNvim()
  nmap Enter <Plug>RestNvim
endfunction

nnoremap <Plug>RestNvim :lua require('rest-nvim').run()<CR>
autocmd FileType http call s:SetRestNvim()
