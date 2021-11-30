if !has('nvim-0.5') || exists('g:loaded_drex') | finish | endif

command! -nargs=? -complete=dir Drex lua require('drex').open_directory_buffer("<args>")
command! DrexDrawerOpen lua require('drex.drawer').open()
command! DrexDrawerClose lua require('drex.drawer').close()
command! DrexDrawerToggle lua require('drex.drawer').toggle()
command! DrexDrawerFindFile lua require('drex.drawer').find_element('%', false, true)
command! DrexDrawerFindFileAndFocus lua require('drex.drawer').find_element('%', true, true)

command! -range DrexMark lua require('drex.actions').mark(<line1>, <line2>)
command! -range DrexUnmark lua require('drex.actions').unmark(<line1>, <line2>)
command! -range DrexToggle lua require('drex.actions').toggle(<line1>, <line2>)

highlight default link DrexDir Directory     " differentiate directories from regular files
highlight default link DrexMarked Substitute " explicitly marked elements
highlight default link DrexSelected Visual   " highlighting for indirectly selected items

let g:loaded_drex = 1
