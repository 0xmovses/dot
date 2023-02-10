set shell=/bin/bash
set relativenumber

nnoremap <SPACE> <Nop>
let mapleader=" "

call plug#begin()

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

let g:NERDTreeMinimalMenu=1
set encoding=UTF-8

" Using a non-default branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

"vim-go
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
"Plug 'nsf/gocode', { 'rtp': 'vim', 'do': '~/.vim/plugged/gocode/vim/symlink.sh' }

Plug 'neovim/nvim-lspconfig'
"
" Completion framework
Plug 'hrsh7th/nvim-cmp'

" LSP completion source for nvim-cmp
Plug 'hrsh7th/cmp-nvim-lsp'

" Snippet completion source for nvim-cmp
Plug 'hrsh7th/cmp-vsnip'

" Other usefull completion sources
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-buffer'

"rust.vim
Plug 'rust-lang/rust.vim'
let g:rust_format_show_errors = 1
let g:rust_format_show_warnings = 1
let g:rust_format_show_suggestions = 1
let g:rust_format_show_errors_in_quickfix = 1
let g:rust_format_show_warnings_in_quickfix = 1
let g:rust_format_show_suggestions_in_quickfix = 1
let g:rust_format_show_errors_in_statusbar = 1
let g:rust_format_show_warnings_in_statusbar = 1
let g:rust_format_show_return_types = 0

let g:deoplete#enable_at_startup = 1
let g:go_doc_popup_window = 1

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'

"Syntax highlighting for multiple languages
Plug 'sheerun/vim-polyglot'

"Solidity syntax highlighting
Plug 'tomlion/vim-solidity'

"Move syntax highlighting
Plug 'rvmelkonian/move.vim'

"Async ES Lint
Plug 'dense-analysis/ale'

"Themes
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'sainnhe/everforest', {'as': 'everforest'}
Plug 'morhetz/gruvbox', { 'as': 'gruvbox' }
Plug 'AlessandroYorba/Alduin', { 'as': 'alduin' }
Plug 'AlessandroYorba/Despacio', { 'as': 'despacio' }
Plug 'tiagovla/tokyodark.nvim'

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

"Rainbow brackets
Plug 'frazrepo/vim-rainbow'
let g:rainbow_active = 1

"Prettier
Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }
let g:prettier#autoformat_require_pragma = 0

"TS/JS Plugins
Plug 'pangloss/vim-javascript'    " JavaScript support
Plug 'leafgarland/typescript-vim' " TypeScript syntax
Plug 'maxmellon/vim-jsx-pretty'   " JS and JSX syntax
Plug 'peitalin/vim-jsx-typescript'

Plug 'HerringtonDarkholme/yats.vim'

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

Plug 'Xuyuanp/nerdtree-git-plugin'
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }

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

Plug 'gerw/vim-HiLinkTrace'


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
filetype plugin indent on

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

inoremap <C-c> <esc>

" Set nvim to transparent background 
:hi normal guibg=000000

let g:airline_theme='base16_mocha'

noremap <Space> <Leader>

""coc mappings
" These default mappings should either go in your .vimrc or in a file that
" you're going to source from your .vimrc. For example, you can copy this file
" into your ~ directory and then put the following in your .vimrc to source it
"
" coc.nvim lsp mappings
"if filereadable(expand("~/coc-mappings.vim"))
"  source ~/coc-mappings.vim"
"endif
"
"
" If you're curious how to share this or your .vimrc with both vim and nvim,
" you can find a great instructions about this here
" https://neovim.io/doc/user/nvim.html#nvim-from-vim
"
" Finally, keep in mind that these are "suggested" settings. Play around with
" them and change them to your liking.

" If hidden is not set, TextEdit might fail.
set hidden

" Some servers have issues with backup files
set nobackup
set nowritebackup

" You will have a bad experience with diagnostic messages with the default of 4000.
set updatetime=300

" Don't give |ins-completion-menu| messages.
set shortmess+=c

" Always show signcolumns
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by another plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" Used in the tab autocompletion for coc
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" For Neovim only!  Used to expand decorations in worksheets
nmap <Leader>ws <Plug>(coc-metals-expand-decoration)

" This one is badass
" Use K to either doHover or show documentation in preview window
nnoremap <silent> D :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Remap for format selected region
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType scala setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Remap for do codeAction of current line
xmap <leader>a  <Plug>(coc-codeaction-line)
nmap <leader>a  <Plug>(coc-codeaction-line)

" Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocActionAsync('format')

" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" For Neovim only!  Trigger for code actions
" Make sure `"codeLens.enable": true` is set in your coc config
nnoremap <leader>cl :<C-u>call CocActionAsync('codeLensAction')<CR>

" Show all diagnostics
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>

" Notify coc.nvim that <enter> has been pressed.
" Currently used for the formatOnType feature.
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
      \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Toggle panel with Tree Views
nnoremap <silent> <space>t :<C-u>CocCommand metals.tvp<CR>
" Toggle Tree View 'metalsPackages'
nnoremap <silent> <space>tp :<C-u>CocCommand metals.tvp metalsPackages<CR>
" Toggle Tree View 'metalsCompile'
nnoremap <silent> <space>tc :<C-u>CocCommand metals.tvp metalsCompile<CR>
" Toggle Tree View 'metalsBuild'
nnoremap <silent> <space>tb :<C-u>CocCommand metals.tvp metalsBuild<CR>
" Reveal current current class (trait or object) in Tree View 'metalsPackages'
nnoremap <silent> <space>tf :<C-u>CocCommand metals.revealInTreeView metalsPackages<CR>

if has('nvim')
    inoremap <silent><expr> <c-space> coc#refresh()
else
    inoremap <silent><expr> <c-@> coc#refresh()
endif

noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" improves Go syntax highlighting
let g:go_highlight_operators=1
let g:go_highlight_functions=1
let g:go_highlight_function_parameters=0
let g:go_highlight_function_calls=1
let g:go_highlight_types=1
let g:go_highlight_fields=1
