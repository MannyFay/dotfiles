" ~/.vimrc

"------------------------------------------------------------------------------
"  Vim Plug Plugin Manager
"------------------------------------------------------------------------------

" Auto install Vim Plug and plugins if not installed:
if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif



"------------------------------------------------------------------------------
"  Plugins
"------------------------------------------------------------------------------

call plug#begin('~/.vim/plugged')
    " Universal set of Vim defaults:
    Plug 'tpope/vim-sensible'

    " NERDTree file explorer:
    Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' } |
        \ Plug 'Xuyuanp/nerdtree-git-plugin' |
        \ Plug 'ryanoasis/vim-devicons' |
        \ Plug 'tiagofumo/vim-nerdtree-syntax-highlight' |
        \ Plug 'scrooloose/nerdtree-project-plugin' |
        \ Plug 'PhilRunninger/nerdtree-visual-selection'

    " Vim Maximizer to maximize and restore current window:
    Plug 'szw/vim-maximizer'

    " PlantUML previewer:
    Plug 'aklt/plantuml-syntax'
    Plug 'tyru/open-browser.vim'
    Plug 'weirongxu/plantuml-previewer.vim'
    au FileType plantuml let g:plantuml_previewer#plantuml_jar_path = get(
        \  matchlist(system('cat `which plantuml` | grep plantuml.jar'), '\v.*\s[''"]?(\S+plantuml\.jar).*'),
        \  1,
        \  0
        \)

    " Markdown previewer:
    Plug 'instant-markdown/vim-instant-markdown', { 'for': 'markdown', 'do': 'yarn install' }

    " Set and use .editorconfig file:
    Plug 'editorconfig/editorconfig-vim'

    " CSS Color name highlighter:
    Plug 'ap/vim-css-color', {'branch': 'master'}

    " NERD Commenter to comment in/out content quickly:
    Plug 'preservim/nerdcommenter'

    " Easy Motion:
    Plug 'easymotion/vim-easymotion'

    " fzf command line fuzzy finder:
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    " Enable fzf for Vim:
    Plug 'junegunn/fzf.vim'








    " Surround.vim to surround marked content with specific signs:
    Plug 'tpope/vim-surround'




    " Coc auto completion engine:
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Multi Cursor Plugin:
"https://github.com/mg979/vim-visual-multi

" Down under it goes next..

    " PHPStan
    Plug 'yaegassy/coc-phpstan', {'do': 'yarn install --frozen-lockfile'}
    " Intelephense
    Plug 'yaegassy/coc-intelephense', {'do': 'yarn install --frozen-lockfile'}
    Plug 'yaegassy/coc-tailwindcss3'
    Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
call plug#end()
"so ~/.vim/plugins/plugins.vim
" Load plugins from plugins.vim file.
" To install plugins use: :PlugInstall


" Install coc-tabnine extension maybe that is only for Nvim?!
"if !exists('*coc#util#has_provider')
  "echoerr 'Coc.nvim is not installed or coc.nvim version is lower 0.0.70'
"else
  "CocInstall coc-tabnine
"endif

"------------------------------------------------------------------------------
" Auto Commands
"------------------------------------------------------------------------------

" Auto save file everytime something has changed:
autocmd TextChanged,TextChangedI <buffer> silent write

" Automatically source .vimrc on safe:
augroup autosourcing
    autocmd!
    autocmd BufWritePost .vimrc source %
augroup END



"------------------------------------------------------------------------------
" Appereance
"------------------------------------------------------------------------------

"-------------------------------------------------------------
"-- Colors

" Set the color scheme of Vim:
colorscheme mannydark

" Show color flag of marked content ( cf):
nmap <Leader>cf :echo synIDattr(synID(line("."), col("."), 1), "name")

" Use guifg and guibg color attributes:
set termguicolors

" Highlight matching braces:
set showmatch

" Set specific text highlights in case of the file type:
filetype plugin indent on

" Use 256 colors for Terminal Vim:
"set t_CO=256

" Syntax highlighting in case of file type:
syntax enable





" Set font and font size (only MacVim, for terminal do it in terminal preferences):
:set guifont=MesloLGSNerdFont:h15





" Disable overwriting from VI to Vim:
set nocompatible

" Display line numbers on the left:
set number


"-------------------------------------------------------------
"-- Searching

" Highlight search results:
"set hlsearch
" set hlsearch ...must be disabled for easymotion because of marking.

" Search ignores case:
set ignorecase

" Do not ignore case if the search pattern has uppercase:
set smartcase

" Search while typing:
set incsearch


"-------------------------------------------------------------
"-- Sound

" Turn off all errorbells:
set noerrorbells
set belloff=all

" Set the size of tab in spaces:
set tabstop=4
set softtabstop=4

" Set the size of tab in spaces in insert mode:
set shiftwidth=4

" Set indent size, also used by = < >:
set expandtab
" Google that again !!!

" Text will not wrap:
set nowrap

" Auto write buffer if focus changes:
set autowrite
set autowriteall

" Wrap text in Markdown and text files:
autocmd BufRead,BufNewFile *.md,*.txt setlocal wrap

" Don't create a swap file:
"set noswapfile

" Enable mouse on all modes:
set mouse=a

" Use the OS clipboard:
set clipboard=unnamed,unnamedplus



" Open new horizontal split to the right:
set splitright

" Open new vertical split below:
set splitbelow

set list lcs=tab:\|\
" Here is a space (google that again !!! ).
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"
" Make cursor a line in insert mode.

" Keep visual mode after indent with > or <
vmap < <gv
vmap > >gv

" Move visual blocks with J and K:
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" Remember last editing position:
augroup vimrc-remember-cursor-position
  autocmd!
  autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
augroup END

" Languages for intellisense:
" https://github.com/neoclide/coc.nvim/wiki/Using-coc-extensions#implemented-coc-extensions
let g:coc_global_extensions = [
    \ 'coc-blade',
    \ 'coc-css',
    \ 'coc-cssmodules',
    \ 'coc-dash-complete',
    \ 'coc-diagnostic',
    \ 'coc-docker',
    \ 'coc-emmet',
    \ 'coc-explorer',
    \ 'coc-fzf-preview',
    \ 'coc-git',
    \ 'coc-highlight',
    \ 'coc-html',
    \ 'coc-html-css-support',
    \ 'coc-htmlhint',
    \ 'coc-json',
    \ 'coc-markdownlint',
    \ 'coc-phpactor',
    \ 'coc-phpls',
    \ 'coc-php-cs-fixer',
    \ 'coc-prettier',
    \ 'coc-psalm',
    \ 'coc-python',
    \ 'coc-rome',
    \ 'coc-sh',
    \ 'coc-stylelintplus',
    \ 'coc-stylelint',
    \ 'coc-snippets',
    \ 'coc-spell-checker',
    \ 'coc-sql',
    \ 'coc-sqlfluff',
    \ 'coc-stylua',
    \ 'coc-sumneko-lua',
    \ 'coc-svg',
    \ 'coc-swagger',
    \ 'coc-tasks',
    \ 'coc-translator',
    \ 'coc-tsserver',
    \ 'coc-webview',
    \ 'coc-xml',
    \ 'coc-yaml',
    \ 'coc-yank',
    \]


" Set linespacings (only MacVim, for terminal do it in terminal preferences):
set linespace=15

"nor
"set relativenumber
" Display the relative line number before and above the actual line.
" Are both active, they become hybrid.


" Number of command line history entries:
set history=1000

" Start to scroll if there is a space of n lines:
set scrolloff=3

" Show a line with autocomplete opportunities (shift + tab to walk):
set wildmenu

" Show a column for folding sections on the right hand:
set foldcolumn=1

" Safe undo steps over reboot:
set undofile

" Mount undo directory:
set undodir=$HOME/vimundo/

" Number of safed undo steps:
set undolevels=1000


" Set line endings to Unix format:
set fileformat=unix

"set RltvNmbr

" Set cursor on a line wrap automatically into indent level:
set autoindent

" Activates Unicode UTF-8 encoding:
set encoding=utf-8


"set tw=72
" Set text wrap automatically at sign number ...
" 72 is perfect size for GitLab and GitHub.

" Delete with backspace in insert mode.
set backspace=indent,eol,start







"------------------------------------------------------------------------------
"-- Key Mappings
"------------------------------------------------------------------------------

" Set <Leader> to space (standard is \):
let mapleader = " "

" Clear search highlights ( nh):
nmap <Leader>nh :nohl<CR>

" Delete single character without copying into register:
"nmap x _x

" Redo last action:
nmap U <C-r>

" Visual block mode:
nmap vb <C-v>

"-------------------------------------------------------------
"-- Terminal Keymaps

" Open terminal in horizontal buffer below ( tb):
nmap <Leader>tb :split term://zsh<CR>i

" Open terminal in vertical buffer to the next ( tn):
nmap <Leader>tn :vsplit term://zsh<CR>i



"------------------------------------------------------------------------------
"-- Window Management
"------------------------------------------------------------------------------

"-------------------------------------------------------------
"-- Splits (Buffer)

" Split buffer vertically (y-axis) ( y):
nmap <Leader>y <C-w>v

" Split buffer horizontally (x-axis) ( x):
nmap <Leader>x <C-w>s

" Go to right split ( l):
nmap <Leader>l <C-w>l

" Go to left split ( h):
nmap <Leader>h <C-w>h

" Go to split below ( j):
nmap <Leader>j <C-w>j

" Go to split above ( k):
nmap <Leader>k <C-w>k

" Equalize width and height for all splits ( es):
nmap <Leader>es <C-w>=

" Grow split vertical ( gv):
nmap <Leader>gv :vertical resize +5<CR>

" Shrink split vertical ( sv):
nmap <Leader>sv :vertical resize +5<CR>

" Grow split horizontally ( gh):
nmap <Leader>gh :resize +5

" Shrink split horizontally ( sh):
nmap <Leader>sh :resize -5


"-------------------------------------------------------------
"-- Tabs

" Open new tab ( ot):
nmap <Leader>ot :tabnew<CR>

" Exit current tab: ( et):
nmap <Leader>et :tabclose<CR>

" Go to next tab ( nt):
nmap <Leader>nt :tabn<CR>

" Go to previous tab ( pt):
nmap <Leader>pt :tabp<CR>

"nmap <Leader>vrc :tabedit $MYVIMRC<cr>
" ovrc is open ~/.vimrc file.



"------------------------------------------------------------------------------
"-- NERDTree
"------------------------------------------------------------------------------
" https://github.com/preservim/nerdtree
" https://github.com/Xuyuanp/nerdtree-git-plugin
" https://github.com/ryanoasis/vim-devicons
" https://github.com/tiagofumo/vim-nerdtree-syntax-highlight
" https://github.com/scrooloose/nerdtree-project-plugin
" https://github.com/PhilRunninger/nerdtree-visual-selection

let NERDTreeMinimalUI=1

" Show folding arrows:
let NERDTreeDirArrows=1

" Initial tree width:
let g:NERDTreeWinSize=46

" Show hidden files by default:
let NERDTreeShowHidden=1

" Start NERDTree if Vim starts.
autocmd VimEnter * NERDTree | wincmd p

" Toggle tree ( tt):
nmap <Leader>tt :NERDTreeToggle<CR>

" Explore tree ( ee):
nmap <Leader>ee :NERDTreeFocus<CR>

" Find actual file in tree ( ft):
nmap <Leader>ft :NERDTreeFind<CR>

" Open in new split but stay in tree:
nmap go s<CR><leader>sf


"-------------------------------------------------------------
"-- NERDTree Git Plugin

" Use NerdFonts for Git status:
let g:NERDTreeGitStatusUseNerdFonts = 1

" Hide [ ] in tree:
let g:NERDTreeGitStatusConcealBrackets = 1


"-------------------------------------------------------------
"-- Vim NERDTree Syntax Highlight

" Activate color for unmatched folders:
let g:WebDevIconsDisableDefaultFolderSymbolColorFromNERDTreeDir = 1

" Activate color for unmatched files:
let g:WebDevIconsDisableDefaultFileSymbolColorFromNERDTreeFile = 1



"------------------------------------------------------------------------------
"-- Easy Motion
"------------------------------------------------------------------------------
" https://github.com/easymotion/vim-easymotion

" Commands (press <Leader><Leader>command)
"+-----+-------------------------------+-----+-------------------------------+
"|  j  |  jump down to line            |  k  |  jump up to line              |
"+-----+-------------------------------+-----+-------------------------------+
"|  s  |  search in file               |  /  |  search forward               |
"+-----+-------------------------------+-----+-------------------------------+
"|  ?  |  search backward              |  w  |  forward to start of words    |
"+-----+-------------------------------+-----+-------------------------------+
"|  W  |  forw. to start of words (ws) |  b  |  backward to start of words   |
"+-----+-------------------------------+-----+-------------------------------+
"|  B  |  backw. to start of w. (ws)   |  e  |  forward to end of words      |
"+-----+-------------------------------+-----+-------------------------------+
"|  ge |  backward to end of words     |     |                               |
"+-----+-------------------------------+-----+-------------------------------+

map <Leader><Leader>. <Plug>(easymotion-repeat)
map <Leader><Leader>c <Plug>(easymotion-fl)
map <Leader><Leader>w <Plug>(easymotion-overwin-w)
map <Leader><Leader>l <Plug>(easymotion-overwin-line)




"------------------------------------------------------------------------------
" NERDCommenter
"------------------------------------------------------------------------------

" Comment line/marked out ( oo):
nmap <Leader>oo <Leader>cc

" Comment line/marked in ( ii):
nmap <Leader>ii <Leader>cu

" Comment block in/out ( bb):
nmap <Leader>bb <Leader>c<Leader>



"------------------------------------------------------------------------------
"-- Vim Maximizer
"------------------------------------------------------------------------------

" Toggle in all modes:
nnoremap <silent><F3> :MaximizerToggle<CR>
vnoremap <silent><F3> :MaximizerToggle<CR>gv
inoremap <silent><F3> <C-o>:MaximizerToggle<CR>



"------------------------------------------------------------------------------
"-- Fuzzy File Finder
"------------------------------------------------------------------------------

" Add fzf to runtime path:
set rtp+=/usr/local/opt/fzf

" Search everywhere:
nnoremap <Leader>se :Files!<CR>

" Show recent files (buffers):
nmap <Leader>sr :Buffers<CR>

" Search in files:
nmap <Leader>sif :Ag<CR>
" You have to install https://github.com/ggreer/the_silver_searcher

" Show Git index:
nmap <Leader>sgi :GFiles<CR>

" Show Git status:
nmap <Leader>sgs :GFiles?<CR>

" Search for content in lines:
nmap <Leader>sil :Lines<CR>

" Set modal size to 90% of the viewport:
"let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.9 } }

" Set the right half of modal on 60% of the modal:
"let $FZF_DEFAULT_OPTS="--ansi --preview-window 'right:60%' --margin=1,4"

"ctrl k = Move up
"ctrl j = Move down
"ctrl v = open file in vertical split
"ctrl x = open file in horizontal split





"------------------------------------------------------------------------------
"-- Vim Surround
"------------------------------------------------------------------------------
" https://github.com/tpope/vim-surround

" cs<given><new>







