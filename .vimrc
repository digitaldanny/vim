" Compatible with vim only "
set nocompatible
set mouse=a

" Turn on syntax highlighting "
colorscheme focuspoint
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
