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


if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

let g:deoplete#enable_at_startup = 1
let g:go_doc_popup_window = 1

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

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
Plug 'tpope/vim-fugitive'
Plug 'github/copilot.vim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'

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
command F FZF

let $FZF_DEFAULT_COMMAND='find . \( -name node_modules -o -name .git \) -prune -o -print'

"bind F9 to toggle floaterm
let g:floaterm_keymap_toggle = '<F9>'

" CoC extensions
let g:coc_global_extensions = ['coc-tsserver']
let g:auto_save = 1  " enable AutoSave on Vim startup

"Toggle NerdTree file window
nmap <F8> :NERDTreeToggle<CR>
"Allows copying to clipboard and pasting outside of Vim
set clipboard=unnamed
set mouse+=a
set autoread
" Initialize plugin system
call plug#end()
let g:rainbow_active = 1
colorscheme gruvbox 

" Set nvim to transparent background 
:hi normal guibg=000000


let g:airline_theme='base16'
syntax on 
