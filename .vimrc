" Add recently accessed projects menu (project plugin)
set viminfo^=!

map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_
map <C-H> <C-W>h<C-W>_
map <C-L> <C-W>l<C-W>_

" Minibuffer Explorer Settings
"let g:miniBufExplMapWindowNavVim = 1
"let g:miniBufExplMapWindowNavArrows = 1
"let g:miniBufExplMapCTabSwitchBufs = 1
"let g:miniBufExplModSelTarget = 1

" Change which file opens after executing :Rails command
let g:rails_ctags_arguments='--exclude="*.js" "`rvm gemset dir | grep ruby`"'
let g:rails_history_size=100

" For Ack Plugin
let g:ackprg="ack -a -H --nocolor --nogroup --column"

execute pathogen#infect()

"actionscript
au BufNewFile,BufRead *.as         setf actionscript

"colorscheme desert
"syntax enable
set background=light
let g:solarized_termcolors = 256
let g:solarized_contrast="high"
let g:solarized_visibility="high"
colorscheme solarized

set list lcs=tab:·⁖,trail:¶
"autocmd FileType ruby,html,eruby,javascript,yaml,scala autocmd BufWritePre <buffer> :%s/\s\+$//e
"
syntax on
filetype plugin on
filetype indent on
filetype on  " Automatically detect file types.

"set foldmethod=indent "fold based on indent
"set nofoldenable    "dont fold by default

"folding settings
function FoldForCSharp()
    set foldmethod=marker   "fold based on marker
    set foldmarker=#region,#endregion "set the marker to region
    set foldenable        "fold by default
endfunction
autocmd BufNewFile,BufRead *.cs call FoldForCSharp()

"let g:syntastic_mode_map = { 'mode': 'passive' }

set number
set ruler
set shiftwidth=2
set tabstop=2
set expandtab
set showcmd
set hlsearch
set incsearch
set sts=2
set sw=2
set sws=2
set smartindent
"set nocompatible  " We don't want vi compatibility.
