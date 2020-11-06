" Specify a directory for plugins
" " - For Neovim: stdpath('data') . '/plugged'
" " - Avoid using standard Vim directory names like 'plugin'
set number
set clipboard+=unnamedplus
syntax enable
set showcmd
set ruler
set encoding=UTF-8
set showmatch
set sw=2
set relativenumber
set noshowmode
set mouse=a
set laststatus=2
set cursorline


 call plug#begin('~/.vim/plugged')

"temas
Plug 'neoclide/coc.nvim', {'branch':'release'}
Plug 'morhetz/gruvbox'
Plug 'preservim/nerdtree' |
	\ Plug 'Xuyuanp/nerdtree-git-plugin' |
	\ Plug 'ryanoasis/vim-devicons'
Plug 'easymotion/vim-easymotion'
Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}

" " Make sure you use single quotes
"
" " Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
" Plug 'junegunn/vim-easy-align'
"
" " Any valid git URL is allowed
" Plug 'https://github.com/junegunn/vim-github-dashboard.git'
"
" " Multiple Plug commands can be written in a single line using | separators
" Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
"
" " On-demand loading
" Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
"
" " Using a non-default branch
" Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
"
" " Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
" Plug 'fatih/vim-go', { 'tag': '*' }
"
" " Plugin options
" Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }
"
" " Plugin outside ~/.vim/plugged with post-update hook
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
"
" " Unmanaged plugin (manually installed and updated)
" Plug '~/my-prototype-plugin'
"
" " Initialize plugin system
call plug#end()

colorscheme gruvbox
let g:gruvbox_contrast_dark = "hard"

let mapleader=" "

nmap <Leader>s <Plug>(easymotion-s2)
"my Keys 
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
nmap <Leader>p :PlugInstall
nmap <Leader>wq :wq<CR>
nmap <Leader>sr :source init.vim<CR>
nmap <Leader>r :RnvimrToggle<CR>

nmap <up> :resize +5<CR>
nmap <down> :resize -5<CR>
nmap <left> :vertical resize -5<CR>
nmap <right> :vertical resize +5<CR>

map <C-n> :NERDTreeToggle<CR>


