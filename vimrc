call pathogen#infect()
syntax on
filetype plugin indent on

set expandtab
set ts=2 sts=2 sw=2
set nu
set nowrap

syntax enable

colorscheme solarized
if has("gui_running")
  set background=light
else
  set background=dark
endif

" save with W also
:command W w
:command Wq wq
:command WQ wq

" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! w !sudo tee > /dev/null %

" test some stuff
nmap \l :setlocal number!<CR>
nmap \o :set paste!<CR>

" go up/down line-wise
nmap j gj
nmap k gk

" tagbar
nmap \t :TagbarToggle<CR>

" make command line work like bash command line
cnoremap <C-a> <Home>
cnoremap <C-d> <Delete>

" modify search mode a bit
set incsearch
set ignorecase
set smartcase
set hlsearch
nmap \q :nohlsearch<CR>

" go back to the last buffer
nmap <C-e> :e#<CR>
nmap <C-n> :bnext<CR>
nmap <C-p> :bprev<CR>
nmap <C-f> :CtrlP<CR>
                        
" configure ctrlp
nmap ; :CtrlPBuffer<CR>
let g:ctrlp_map = '<Leader>t'
let g:ctrlp_match_window_bottom = 0
let g:ctrlp_match_window_reversed = 0
let g:ctrlp_custom_ignore =  '\v\~$|\.(o|swp|pyc)$|(^|[\//])\.(hg|git|bzr)($|[/\//])|__init__\.py'
let g:ctrlp_working_path_mode = 0
let g:ctrlp_dotfiles = 0
let g:ctrlp_switch_buffer = 0

" nerdtree
nmap \e :NERDTreeToggle<CR>
let NERDTreeIgnore = ['\.pyc$', '__init__\.py$', '__pycache__$']

" set 256 colors
if $TERM == "xterm-256color" || $TERM == "screen-256color" || $COLORTERM == "gnome-terminal"
        set t_Co=256
endif

set laststatus=2

" some python related stuff
if !exists("autocommands_loaded")
  let autocommands_loaded = 1
  autocmd BufRead,BufNewFile,FileReadPost *.py source ~/.vim/vimrc-python
endif

" This beauty remembers where you were the last time you edited the file,
" and returns to the same position.
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

" set a shortcut for symbol list
nmap \s :TagbarOpen<CR>

nmap \l :set list!<CR>
set listchars=tab:▸\ ,eol:¬

" vim-rspec
let g:rspec_command = 'call Send_to_Tmux("rspec {spec}\n")'
map <Leader>r :call RunCurrentSpecFile()<CR>
