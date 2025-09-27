"Update Last Modify Time{{{1
augroup filetype_shell
    "incase of no detection of systemverilog, don't use FileType
    autocmd BufWrite *.sh  call s:UpdateLastModifyTimeShell()
    autocmd BufWrite *.csh call s:UpdateLastModifyTimeShell()
augroup END
function s:UpdateLastModifyTimeShell() "{{{2
    let idx = 0
    for line in getline(1, 30)
        let idx = idx + 1
        if line =~ '# LAST MODIFIED'
            call setline(idx,"# LAST MODIFIED: " . strftime("%Y-%m-%d %H:%M"))
            return
        endif
    endfor
endfunction "}}}2
"}}}1

"Update Last Modify Time{{{1
augroup filetype_shell
    "incase of no detection of systemverilog, don't use FileType
    autocmd BufWrite *.py  call s:UpdateLastModifyTimePython()
augroup END
function s:UpdateLastModifyTimePython() "{{{2
    let idx = 0
    for line in getline(1, 30)
        let idx = idx + 1
        if line =~ '# Last Modified'
            call setline(idx,"# Last Modified: " . strftime("%Y-%m-%d %H:%M"))
            return
        endif
    endfor
endfunction "}}}2
"}}}1

