autocmd BufNewFile,BufRead * if getline(1) =~ '#!\s*/bin/dash' | setf sh | endif
