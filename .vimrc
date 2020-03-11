" Syntax highlighting in putty "
if has("terminfo")
  let &t_Co=16
  let &t_AB="\<Esc>[%?%p1%{8}%<%t%p1%{40}%+%e%p1%{92}%+%;%dm"
  let &t_AF="\<Esc>[%?%p1%{8}%<%t%p1%{30}%+%e%p1%{82}%+%;%dm"
else
  let &t_Co=16
  let &t_Sf="\<Esc>[3%dm"
  let &t_Sb="\<Esc>[4%dm"
endif

" Use 2 spaces as tabs "
set softtabstop=2
set tabstop=2
set shiftwidth=2
set expandtab

" Compatible with vim only "
set nocompatible
set mouse=a

" Set tab equal to 4 spaces "
set tabstop=4

" Turn on syntax highlighting "
colorscheme ron
syntax on

" For plug-ins to load correctly "
filetype plugin indent on

" Fixes common backspace problems "
set backspace=indent,eol,start

" Show line numbers "
set number

" Highlight matching search patterns
set hlsearch

" Enable incremental search "
set incsearch

" Include matching uppercase and lowercase letters in search "
set ignorecase

" Include only uppercase words with uppercase search term "
set smartcase

" Map the <Space> key to toggle a selected fold open/closed "
nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
vnoremap <Space> zf

" Add the plug-in file as the plug in source "
if filereadable(expand("~/.vimrc.plug"))
	source ~/.vimrc.plug
endif
