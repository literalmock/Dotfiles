"call plug#begin('~/.config/nvim/plugged')
"Plug 'preservim/nerdtree' "File browser inside vim
"Plug 'mbbill/undotree' "Creates an undo tree
"Plug 'ryanoasis/vim-devicons' "Cool icons for nerd tree
"call plug#end()

"Set Settings 

set number
set relativenumber
"syntax on
set mouse=a
"set hlsearch
"set ignorecase
"set smartcase
set termguicolors 
set clipboard=unnamedplus
"set encoding=UTF-8
"highlight CursorLine ctermbg=Yellow cterm=bold guibg=#2b2b2b

"let settings
"let NERDTreeShowHidden=1



" Plugin Shortcuts
"map <C-e> :NERDTreeToggle<CR>
nnoremap <F5> :UndotreeToggle<CR> :UndotreeFocus<CR>
"nnoremap <C-f> :Files!<CR>
"nnoremap <Leader>l :Tabularize /
"let g:better_escape_shortcut = 'jj'
"let g:better_escape_interval = 250

" General Shortcuts
"nnoremap S :%s//g<Left><Left> 
nmap <Leader>r :w<CR>:so %<CR>


"Quick Start with Someones Files

"leader key
let mapleader = " "
"very good command and useful with the d command
set relativenumber

"backup settings
"set backupdir=/tmp
"set directory=~/.vim/tmp,.
"set backup

"tab settings
set tabstop=4 "tabs expand to 4 spaces
set shiftwidth=4
set softtabstop=4
set expandtab

"stop auto commenting, this is hurtful more then it is useful
set formatoptions-=cro

			
"split settings so they are not stupid like defaults
set splitbelow splitright

"persistent undo between opening and closing
set undofile

"very useful for yaml files
"autocmd Filetype yaml set cursorcolumn
"autocmd Filetype yml set cursorcolumn
"autocmd Filetype python set cursorcolumn

"smart search
set ignorecase
set smartcase

"smart wrapping
"set wrap
"set textwidth=79
"set formatoptions=qrn1

"search as characters are entered
set incsearch

"keybindings
"<CR> is a carrige return(?)
"remove highlighting (no highlight is the idea I am going for here)
nnoremap <leader>nh :noh<CR>
"open terminal
let g:toggleterm_terminal_mapping = '<C-t>'
nnoremap <leader>t :term<CR>
"Syntax check php code
"nnoremap <leader>php :!php -l %<CR>

nnoremap <leader>g :Goyo<CR>

" turn spelling off or on
" correct
nnoremap <leader>s :setlocal spell!<CR>

" These two clipboard functions only yank and put to primary X11 clipboard
" yank too system clipboard
"nnoremap <leader>y "*y
"Put from system clipboard
"nnoremap <leader>p "*p

nnoremap <leader>sh <Esc>:syntax sync clear<CR> 

" leader cf to create a file (DANGEROUS, overwrites)
" nnoremap <silent> <leader>cf :call writefile([], expand("<cfile>"), "t")<cr>

"install vimplug
"Should work on not using plugins to  be honest



if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }

Plug 'pearofducks/ansible-vim'

Plug 'mbbill/undotree' "Creates an undo tree

Plug 'akinsho/toggleterm.nvim', {'tag' : '*'}

"Plug 'lervag/vimtex'

"Plug 'chikamichi/mediawiki.vim'

"Plug 'flazz/vim-colorschemes'

Plug 'catppuccin/nvim', { 'as': 'catppuccin' }

Plug 'https://github.com/nathanaelkane/vim-indent-guides'

Plug 'https://github.com/machakann/vim-highlightedyank'

Plug 'https://github.com/junegunn/goyo.vim'

Plug 'diepm/vim-rest-console'

Plug 'scrooloose/nerdtree'

Plug 'https://github.com/pangloss/vim-javascript'

call plug#end()

" Spell check syntax highliting
 
let g:gruvbox_guisp_fallback = "bg"

 
"needed for italics, only works in some terminals
let g:gruvbox_italic=1 
"change to the change coloursheme to whaever I prefer at the time 
colorscheme catppuccin-mocha
set background=dark
"not sure if this is needed or not, or even if it works. Might just be default
"iunno lol
set statusline=%F[%L][%{&ff}]%y[%04l,%04v]


"hide the options in gvim
set guioptions=aci

"spelling 
setlocal spell spelllang=en_us
setlocal spell!

"Abbreviation

ab gt ✅
nnoremap <leader>dt :put=strftime('@@%Y-%m-%d')<CR>
nnoremap <leader>q :close<CR>
nnoremap <leader>w :w!<CR>


"vim file browser remove banner
let g:netrw_banner = 0

" Security options
set nomodeline

" Don't mark word_word as a markdown error
hi link markdownError Normal


"pymode

" This stops that stupid error window popping up everywhere on every buffer
let g:pymode_lint_cwindow = 0
