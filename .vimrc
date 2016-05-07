execute pathogen#infect()
autocmd FileType python map <buffer> <F8> :call Flake8()<CR>
syntax on
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set nu
set rtp+=$GOPATH/src/github.com/golang/lint/misc/vim
