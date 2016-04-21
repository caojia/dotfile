set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-scripts/vcscommand.vim'
Plugin 'kchmck/vim-coffee-script'
Plugin 'pangloss/vim-javascript'
Plugin 'vim-ruby/vim-ruby'
Plugin 'hynek/vim-python-pep8-indent'
Plugin 'derekwyatt/vim-scala'
Plugin 'tpope/vim-sensible'
Plugin 'slim-template/vim-slim'
call vundle#end()            " required
filetype plugin indent on    " required

syntax enable
set background=light
colorscheme solarized

" Add recently accessed projects menu (project plugin)
set viminfo^=!

map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_
map <C-H> <C-W>h<C-W>_
map <C-L> <C-W>l<C-W>_
