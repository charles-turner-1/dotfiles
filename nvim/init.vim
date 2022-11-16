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
set tabstop=4


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
"let g:vimtex_compiler_progname = 'nvr'
"let g:Tex_MultipleCompileFormats='pdf,bib,pdf'

set fillchars=fold:\ 

Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
"let g:UltiSnipsSnippetDirectories = [$HOME.'/.nvim/plugged/vim-snippets/UltiSnips']

Plug 'JuliaEditorSupport/julia-vim'

Plug 'nvim-lua/plenary.nvim'
" Plug 'Shougo/deoplete.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Initialize plugin system
call plug#end()


vnoremap <Leader>p "_dP
inoremap <C-e> <C-o>$
inoremap <C-a> <C-o>0
nnoremap \ve :Ve<CR><C-w>r
nnoremap \ex :Explore<CR>
nnoremap \he :He<CR><C-w>r
nnoremap <Leader>e :enew<CR><CR>



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
