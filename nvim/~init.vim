lua -- Set a bunch of options using lua
lua vim.opt.number = true
lua vim.opt.relativenumber = true
lua vim.opt.incsearch = true
lua vim.opt.ignorecase = true
lua vim.opt.smartcase = true
lua vim.opt.laststatus = 2
lua vim.opt.guicursor = "i:block"
lua vim.opt.hlsearch = false
lua vim.opt.showmode = false
lua vim.opt.wrap = true
lua vim.opt.hidden = true
lua vim.opt.scrolloff = 5



lua -- Change the current directory to the directory of the file in the buffer - useful for :find and stuff
lua vim.keymap.set('n', '<leader>cd', ':cd %:p:h<CR>:pwd<CR>')

lua -- Highlight current line with a light grey background
lua vim.api.nvim_command('highlight CursorLine ctermbg=darkGrey guibg=darkGrey')
lua vim.opt.cursorline = true


lua vim.opt.filetype = 'on'
lua vim.opt.filetype = 'indent'


" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
lua Plug = vim.fn['plug#']
lua vim.call('plug#begin')


lua Plug('https://github.com/itchyny/lightline.vim')
lua Plug('https://github.com/lervag/vimtex')
lua Plug('JuliaEditorSupport/julia-vim')
lua Plug('nvim-lua/plenary.nvim')
lua Plug('nvim-telescope/telescope.nvim')
lua Plug('nvim-telescope/telescope-fzy-native.nvim')
lua Plug('nvim-treesitter/nvim-treesitter')
lua Plug('https://github.com/lukas-reineke/indent-blankline.nvim')
lua Plug('https://github.com/tpope/vim-fugitive')

" Initialize plugin system
lua vim.call('plug#end')

let g:vimtex_fold_enabled=1
let g:latex_view_method='skim'
let g:vimtex_complete_close_braces=1

" lua vim.opt.fillchars = 'fold:\ '

" Configure lightline to show git branch

let g:lightline = {
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }

lua vim.keymap.set('v', '<leader>p', '"_dP')
lua vim.keymap.set('n', '<leader>ve', ':Ve<CR><C-w>r')
lua vim.keymap.set('n', '<leader>ex', ':Explore<CR>')

" lua builtin = require('telescope.builtin')
lua vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
lua vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
lua vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
lua vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

lua -- Toggle numbers (copy pasta)
lua vim.keymap.set('n', '<leader>nn', ':exec &nu==&rnu? "se nu!" : "se rnu!"<cr>')

lua vim.opt.spelllang = 'en_gb'
lua vim.opt.spell = true
lua vim.opt.timeoutlen = 1000
lua vim.opt.ttimeoutlen = 0
lua vim.opt.tabstop = 4

lua require("bitsnbobs")
