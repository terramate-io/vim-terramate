let s:cpo_save = &cpoptions
set cpoptions&vim

function! terramate#fmt() abort
  silent execute 'w !'.g:terramate_binary_path.' fmt'
  if v:shell_error == 0
    return
  endif
endfunction

function! terramate#commands(ArgLead, CmdLine, CursorPos) abort
  let commands = [
    \ 'list',
    \ 'run',
    \ 'version',
    \ 'create',
    \ 'generate'
  \ ]
  return join(commands, "\n")
endfunction

if !exists("g:os")
  if has("win64") || has("win32") || has("win16")
      let g:os = "Windows"
  else
      let g:os = substitute(system('uname'), '\n', '', '')
  endif
endif

function! terramate#docs() abort
    if &ft =~ "terramate"
      let s:base_url = "https://terramate.io/docs/cli"
      let s:word = expand("<cword>")
      if s:word[0:2] == "tm_"
        let s:type_mapping = {}
        let s:type_mapping["tm_ternary"] = "functions/terramate-builtin"
        let s:type_mapping["tm_hcl_expression"] = "functions/terramate-builtin"
        let s:type_mapping["tm_version_match"] = "functions/terramate-builtin"
        let s:type_mapping["tm_vendor"] = "functions/terramate-builtin"

        let s:type = get(s:type_mapping, s:word, "functions")
        let s:url = join([s:base_url, s:type, s:word], "/")
        if g:os == "Linux"
          silent exec "!xdg-open '".s:url."'"
        else
          silent exec "!open '".s:url."'"
        endif
        silent exec "redra!"
        echo "Documentation: ".s:url
      else
        echo "error: only tm_* functions are supported at the moment"
      endif
      return
    else
      return
    endif
endfunction

let &cpoptions = s:cpo_save
unlet s:cpo_save
