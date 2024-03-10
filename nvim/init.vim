set number
set relativenumber

set incsearch
set ignorecase 
set smartcase

set laststatus=2
set noshowmode
set guicursor=i:block

set nohlsearch

set scrolloff=5
set wrap
set hidden

" Change the current directory to the directory of the file in the buffer - useful for :find and stuff
nnoremap <leader>cd :cd %:p:h<CR>:pwd<CR>

" Highlight current line with a light grey background
set cursorline
highlight CursorLine ctermbg=darkGrey guibg=darkGrey


highlight Visual cterm=reverse ctermbg=NONE

filetype plugin on
filetype indent on

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.nvim/plugged')

" Make sure you use single quotes

" Any valid git URL is allowed
Plug 'https://github.com/itchyny/lightline.vim'

Plug 'https://github.com/lervag/vimtex'
let g:vimtex_fold_enabled=1
let g:latex_view_method='skim'
let g:vimtex_complete_close_braces=1

set fillchars=fold:\ 

Plug 'JuliaEditorSupport/julia-vim'

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

Plug 'https://github.com/lukas-reineke/indent-blankline.nvim'

" Initialize plugin system
call plug#end()


vnoremap <Leader>p "_dP
nnoremap \ve :Ve<CR><C-w>r
nnoremap \ex :Explore<CR>

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files theme=get_ivy<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Toggle numbers (copy pasta)
nnoremap <leader>nn :exec &nu==&rnu? "se nu!" : "se rnu!"<cr>

set spelllang=en_gb
autocmd BufNewFile,BufRead *.tex set spell
set timeoutlen=1000 ttimeoutlen=0

lua require("bitsnbobs")


set tabstop=4
