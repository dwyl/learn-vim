
function! <SID>StripTrailingWhitespaces()
  " Preparation: save last search, and cursor position.
  let _s=@/
  let l = line(".")
  let c = col(".")

  " Do the business:
  %s/\s\+$//e

  " Clean up: restore previous search history, and cursor position
  let @/=_s
  call cursor(l, c)
endfunction

autocmd BufWritePre *.rb,*.haml :call <SID>StripTrailingWhitespaces()

autocmd BufRead,BufNewFile {Gemfile,Rakefile,Capfile,*.rake,config.ru}     set ft=ruby
autocmd BufRead,BufNewFile {*.md,*.mkd,*.markdown}                         set ft=markdown
autocmd BufRead,BufNewFile {COMMIT_EDITMSG}                                set ft=gitcommit

autocmd FileType javascript setlocal sw=4 ts=4 sts=4 textwidth=79

