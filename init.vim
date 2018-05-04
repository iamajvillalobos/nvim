" Package List
packadd minpac
call minpac#init()
call minpac#add('chriskempson/base16-vim')
call minpac#add('k-takata/minpac', {'type': 'opt'})
call minpac#add('pbrisbin/vim-mkdir')
call minpac#add('sheerun/vim-polyglot')
call minpac#add('tpope/vim-endwise')
call minpac#add('tpope/vim-eunuch')
call minpac#add('tpope/vim-projectionist')
call minpac#add('tpope/vim-rails')
call minpac#add('tpope/vim-dispatch')
call minpac#add('radenling/vim-dispatch-neovim')
call minpac#add('janko-m/vim-test')
call minpac#add('w0rp/ale')
call minpac#add('mhinz/vim-grepper')

" minpac shortcuts
command! PacUpdate call minpac#update()
command! PacClean call minpac#clean()

" Leader
let mapleader = " "

" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

" Tabs & Spaces
set tabstop=2
set shiftwidth=2
set shiftround
set expandtab

" Line numbers
set number
set colorcolumn=80

" Colorscheme
if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif

" Keybindings
" map Ctrl+P to open fuzzy search
nnoremap <C-p> :FZF<CR> 

" vim-test mappings
nnoremap <silent> <Leader>t :TestFile<CR>
nnoremap <silent> <Leader>s :TestNearest<CR>
nnoremap <silent> <Leader>a :TestSuite<CR>
let test#strategy = "dispatch"

" ale mappings
nmap <silent> [W <Plug>(ale_first)
nmap <silent> [w <Plug>(ale_previous)
nmap <silent> ]w <Plug>(ale_next)
nmap <silent> ]W <Plug>(ale_last)

" ale settings
let g:ale_lint_on_text_changed = 'never' 
let g:ale_lint_on_save = 1
let g:ale_lint_on_enter = 1
let g:ale_lint_on_filetype_changed = 0

" vim-grepper settings
let g:grepper = {}
let g:grepper.tools = ['rg']
nnoremap <Leader>* :Grepper -cword -noprompt<CR>
nmap gs <plug>(GrepperOperator)
xmap gs <plug>(GrepperOperator)

" terminal mode settings
if has('nvim')
  " normal-insert mode like vim in terminal mode
  tnoremap <Esc> <C-\><C-n>
  tnoremap <C-v><Esc> <Esc>
endif

" add a different color for terminal cursor
highlight! TermCursorNC guibg=red guifg=white ctermbg=1 ctermfg=15
