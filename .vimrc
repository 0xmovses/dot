set shell=/bin/bash
set relativenumber

call plug#begin()
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'ryanoasis/vim-devicons'
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }


" Using a non-default branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

"vim-go
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'nsf/gocode', { 'rtp': 'vim', 'do': '~/.vim/plugged/gocode/vim/symlink.sh' }

"rust.vim
Plug 'rust-lang/rust.vim'
let g:rust_format_on_save = 1
let g:rust_format_show_errors = 1
let g:rust_format_show_warnings = 1
let g:rust_format_show_suggestions = 1
let g:rust_format_show_errors_in_quickfix = 1
let g:rust_format_show_warnings_in_quickfix = 1
let g:rust_format_show_suggestions_in_quickfix = 1
let g:rust_format_show_errors_in_statusbar = 1
let g:rust_format_show_warnings_in_statusbar = 1


if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

let g:deoplete#enable_at_startup = 1
let g:go_doc_popup_window = 1

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'

"Syntax highlighting for multiple languages
Plug 'sheerun/vim-polyglot'

"Solidity syntax highlighting
Plug 'tomlion/vim-solidity'

"Async ES Lint
Plug 'dense-analysis/ale'

"Themes
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'sainnhe/everforest', {'as': 'everforest'}
Plug 'morhetz/gruvbox', { 'as': 'gruvbox' }

"Rainbow brackets
Plug 'frazrepo/vim-rainbow'

"Prettier
Plug 'prettier/vim-prettier'

"TS/JS Plugins
Plug 'pangloss/vim-javascript'    " JavaScript support
Plug 'leafgarland/typescript-vim' " TypeScript syntax
Plug 'maxmellon/vim-jsx-pretty'   " JS and JSX syntax
Plug 'peitalin/vim-jsx-typescript'

"JSON helper
Plug 'elzr/vim-json'

"Autosave
Plug '907th/vim-auto-save' 

"autocomplete CoC
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Cadence CoC
Plug 'lucklyric/coc-cadence', {'do': 'yarn install --frozen-lockfile'}

"pope-time
Plug 'github/copilot.vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'

imap <silent><script><expr> <C-e> copilot#Accept('\<CR>')
let g:copilot_no_tab_map = v:true

"Telescope and required + optional dependencies
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

"Telescope mappings
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
"
"Fixes E523 error caused by conflicted autocomplete
autocmd FileType TelescopePrompt
       \ call deoplete#custom#buffer_option('auto_complete', v:false)

Plug 'rmagatti/goto-preview'

"goto-preview mappings
nnoremap gpd <cmd>lua require('rvmelkonian').goto_preview_definition()<CR>
nnoremap gpi <cmd>lua require('rvmelkonian').goto_preview_implementation()<CR>
nnoremap gP <cmd>lua require('rvmelkonian').close_all_win()<CR>
" Only set if you have telescope installed
nnoremap gpr <cmd>lua require('rvmelkonian.goto-preview').goto_preview_references()<CR>

"vim airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'voldikss/vim-floaterm'
Plug 'rking/ag.vim'

Plug 'Cian911/vim-cadence'

"language-server
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-cmp'

"My Custom keymappings
command P Prettier 

"FloatTerm bindings
let g:floaterm_keymap_new    = '<F12>'
let g:floaterm_keymap_prev   = '<F10>'
let g:floaterm_keymap_next   = '<F11>'
let g:floaterm_keymap_toggle = '<F9>'
let g:floaterm_keymap_kill = '<C-\>'

" CoC extensions
let g:coc_global_extensions = ['coc-tsserver']
let g:auto_save = 1  " enable AutoSave on Vim startup

"Toggle NerdTree file window
nmap <F8> :NERDTreeToggle<CR>
"Allows copying to clipboard and pasting outside of Vim
set clipboard=unnamed
set mouse+=a
set autoread
set number
set guicursor=a:blinkon100

" Initialize plugin system
call plug#end()
let g:rainbow_active = 1
colorscheme gruvbox 
autocmd InsertEnter,InsertLeave * set cul!

if exists('$TMUX')
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

:autocmd InsertEnter * set cul
:autocmd InsertLeave * set nocul
""disable arrow keys!
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>

inoremap <Up> <nop>
inoremap <Down> <nop>
inoremap <Left> <nop>
inoremap <Right> <nop>

inoremap <C-c> <esc>

" Set nvim to transparent background 
:hi normal guibg=000000

let g:airline_theme='base16'
syntax on 



