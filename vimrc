call plug#begin('~/.vim/plugged')

" Intellisense
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'npm install --frozen-lockfile'}

" Replace delimiters more info one
" https://vimawesome.com/plugin/surround-vim
Plug 'tpope/vim-surround'

" Adds File Tree
Plug 'preservim/nerdtree'


" Git integration for tree
Plug 'Xuyuanp/nerdtree-git-plugin'

Plug 'airblade/vim-gitgutter'


" Formating and syntax highlighter
Plug 'prettier/vim-prettier', { 'do': 'npm install' }

Plug 'sheerun/vim-polyglot'

Plug 'tpope/vim-surround'

" JS and JSX syntax improvements
Plug 'pangloss/vim-javascript'

Plug 'yuezk/vim-js'

Plug 'maxmellon/vim-jsx-pretty'

" TS syntax and compiler
" https://vimawesome.com/plugin/typescript-vim
Plug 'leafgarland/typescript-vim'

" HTML5 additions
Plug 'othree/html5.vim'

" CSS additions
Plug 'hail2u/vim-css3-syntax'

" Previews colors in CSS
Plug 'ap/vim-css-color'

" Fuzzy file search
Plug 'ctrlpvim/ctrlp.vim'


" Adds file footer for info
Plug 'vim-airline/vim-airline'

Plug 'vim-airline/vim-airline-themes'


" Adds git footer and allows git commands with :G
Plug 'tpope/vim-fugitive'

" Comment things out with :gc
Plug 'tpope/vim-commentary'

"Color Scheme 
Plug 'morhetz/gruvbox'
"Plug 'altercation/vim-colors-solarized'

" Colorized brackets
Plug 'vim-scripts/Rainbow-Parenthesis'

" Vertical indent line
Plug 'yggdroot/indentline'

" Auto close brackets 
Plug 'jiangmiao/auto-pairs'

" Auto close tags
Plug 'alvan/vim-closetag'

" Nerd tree dev icons
Plug 'ryanoasis/vim-devicons'

call plug#end()


" Ignores case on search unless search is caps
set ignorecase
set smartcase


"Display line numbers on gutter
set number

" Change footer font
let g:airline_powerline_fonts = 1

" Enables colorized brackets globally 
let g:rainbow_active = 1

" Created indent line
:set listchars=tab:\|\ 
:set list
set expandtab

"Tab selects autocomplete
inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

function! s:check_back_space() abort
	  let col = col('.') - 1
	    return !col || getline('.')[col - 1]  =~# '\s'
    endfunction

    let g:coc_snippet_next = '<tab>'


" Toggles File Tree 

nmap <C-n> :NERDTreeToggle<CR>

" Nerd Tree git icons



" Ignore node modules for file tree
let g:NERDTreeIgnore = ['^node_modules$']


" Shows git changes on lines
set signcolumn=yes
let g:gitgutter_sign_added = '✚'
let g:gitgutter_sign_modified = '✹'
let g:gitgutter_sign_removed = '-'
let g:gitgutter_sign_removed_first_line = '-'
let g:gitgutter_sign_modified_removed = '-'

set smarttab
set cindent
set tabstop=2
set shiftwidth=2


" Color Scheme
let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_italic=1
colorscheme gruvbox
set background=dark 
syntax on

"colorscheme onedark

"syntax enable
"set background=dark
"colorscheme solarized

" Disables arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" Syntastic recommended settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" File types in which close tag is enabled
let g:closetag_filenames = '*.html,*.xhtml,*.phtml, *.js, *.ts'

" Prettier options
let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0

" Run prettier before leaving vim
autocmd BufWritePre *.js Prettier
