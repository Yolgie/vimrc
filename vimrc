call pathogen#infect()
syntax on
filetype plugin indent on

:set et
:set ts=2

syntax enable
colorscheme solarized

" test some stuff
:nmap \l :setlocal number!<CR>
:nmap \o :set paste!<CR>

" go up/down line-wise
:nmap j gj
:nmap k gk

" make command line work like bash command line
:cnoremap <C-a> <Home>
:cnoremap <C-d> <Delete>

" modify search mode a bit
:set incsearch
:set ignorecase
:set smartcase
:set hlsearch
:nmap \q :nohlsearch<CR>

" go back to the last buffer
:nmap <C-e> :e#<CR>
:nmap <C-n> :bnext<CR>
:nmap <C-p> :bprev<CR>
                        
" configure ctrlp
:nmap ; :CtrlPBuffer<CR>
:let g:ctrlp_map = '<Leader>t'
":let g:ctrlp_match_window_bottom = 0
":let g:ctrlp_match_window_reversed = 0
":let g:ctrlp_custom_ignore =  '\v\~$|\.(o|swp|pyc)$|^|[\//])\.(hg|git|bzr)($|[/\//])|__init__\.py'
:let g:ctrlp_working_path_mode = 0
:let g:ctrlp_dotfiles = 0
:let g:ctrlp_switch_buffer = 0

" nerdtree
:nmap \e :NERDTreeToggle<CR>

" set 256 colors
if $TERM == "xterm-256color" || $TERM == "screen-256color" || $COLORTERM == "gnome-terminal"
        set t_Co=256
endif


