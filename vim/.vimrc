" Load Vim's sensible defaults (syntax, incsearch, ruler, history, wildmenu,
" backspace, scrolloff, filetype plugin indent on, ...)
unlet! skip_defaults_vim
source $VIMRUNTIME/defaults.vim

set noswapfile
set hlsearch incsearch
set ignorecase smartcase
set tabstop=4 shiftwidth=4 softtabstop=4 expandtab
set number
set mouse=a

" Persistent undo across sessions
set undofile
set undodir=~/.vim/undo//
silent! call mkdir(expand('~/.vim/undo'), 'p')

colorscheme elflord
highlight LineNr ctermfg=DarkGrey

" Clear search highlighting with Esc Esc
nnoremap <silent> <Esc><Esc> :nohlsearch<CR>

augroup my_filetypes
  autocmd!
  autocmd FileType javascript,json,yaml,html,css setlocal sw=2 sts=2 expandtab
augroup END

" Machine-specific overrides (not in the dotfiles repo)
silent! source ~/.vimrc.local
