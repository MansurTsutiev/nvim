" -------------------------------------------------------
" plugins:
" -------------------------------------------------------
call plug#begin('~/.nvim/plugged')
 Plug 'w0rp/ale'
 Plug 'drewtempelmeyer/palenight.vim'
 Plug 'junegunn/fzf'
 Plug 'scrooloose/nerdtree'
 Plug 'scrooloose/nerdcommenter'
 Plug 'tpope/vim-fugitive' "Gfiles etc
 Plug 'joukevandermaas/vim-ember-hbs'
 Plug 'tpope/vim-rhubarb' " enables :Gbrowse for fugitive
 Plug 'vim-airline/vim-airline'
 Plug 'mileszs/ack.vim'
 Plug 'HerringtonDarkholme/yats.vim'
 Plug 'maxmellon/vim-jsx-pretty'
call plug#end()

" -------------------------------------------------------
" airline configuration:
" -------------------------------------------------------
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#left_alt_sep = '●'
let g:airline_powerline_fonts = 1
" -------------------------------------------------------
" ALE configuration:
" -------------------------------------------------------
let g:ale_linters = {
    \ 'javascript': ['eslint'],
    \ 'ruby': ['rubocop'],
    \ 'handlebars': ['prettier'],
    \ }
let g:ale_fixers = {
   \ '*': ['remove_trailing_lines', 'trim_whitespace'],
   \ 'javascript': ['prettier', 'eslint'],
   \ 'ruby': ['rubocop'],
   \ 'handlebars': ['prettier'],
   \ }
let g:ale_linter_aliases = {'jsx': ['css', 'javascript']}
let g:ale_linters = {}

let g:ale_lint_on_text_changed = 'never'
let g:ale_sign_error = '❌'
let g:ale_sign_warning = '⚠️ '
"let g:ale_completion_enabled = 1
let g:ale_fix_on_save = 1
let g:ale_lint_on_insert_leave = 0
let g:ale_lint_on_enter = 0
let g:ale_set_highlights = 0
" -------------------------------------------------------
" nvim configuration:
" -------------------------------------------------------
let mapleader = ","
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeShowHidden=1
syntax on
set autoindent
set expandtab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set autoread
set ignorecase
set splitbelow
set number
set splitright
set mouse=a
set spell spelllang=en_us
set hlsearch
hi clear SpellBad
hi SpellBad cterm=underline
hi Search ctermbg=LightYellow
hi Search ctermfg=Red
set statusline=''
set wrap linebreak nolist
set nofixeol

" -------------------------------------------------------
" custom mappings:
" -------------------------------------------------------
inoremap jj <Esc>
nnoremap <silent> <leader>f :FZF<cr>
nnoremap <silent> <leader>F :FZF ~<cr>
nnoremap <leader>sv :source $MYVIMRC<CR>
nnoremap <leader>r :vertical resize +20<CR>
nnoremap <leader>rr :vertical resize -20<CR>
nnoremap <leader>v :resize +10<CR>
nnoremap <leader>vv :resize -10<CR>
nnoremap <leader>ns :set nospell<CR>
nnoremap ss i<space><esc>
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>
nnoremap <Leader>s :%s/\<<C-r><C-w>\>/
noremap <C-j> <C-W>j
noremap <C-k> <C-W>k
noremap <C-h> <C-W>h
noremap <C-l> <C-W>l
noremap <C-n> :NERDTreeToggle<CR>
noremap <C-m> :NERDTreeFind <CR>
noremap <leader>gb :Git blame<cr>
noremap <leader>x :x<cr>
noremap <leader>z <C-z>
noremap <leader><c-u> viwU
nnoremap <leader>ev :split ~/.config/nvim/init.vim<cr>
nnoremap <leader>td :split ~/.mans_box/todo.md<cr>
nnoremap <leader>es :source $MYVIMRC<cr>
" surround word in quotes
nnoremap <leader>q viw<esc>a"<esc>bi"<esc>lel
" un_surround quotes in word
nnoremap <leader>qq viw<esc>lxbhxe
" surround selected text in quotes
vnoremap <leader>q <ESC>`>a"<ESC>`<i"<ESC>
" go to the beginning of the line
nnoremap H ^
" go the end of the current line
nnoremap L $
" delete inside parenthesis: works as dp and cp
onoremap p i(
noremap <C-c> :Cp<CR>

" -------------------------------------------------------
" custom abbreviations:
" -------------------------------------------------------
iabbrev raa return assert.async();
iabbrev bp binding.pry
iabbrev bb binding.break
iabbrev vv ✔
iabbrev cc ●
iabbrev nn ★
iabbrev erb <% %>
iabbrev erbb <%= %>

" -------------------------------------------------------
" theme settings:
" -------------------------------------------------------
set background=dark
colorscheme palenight
let g:lightline = { 'colorscheme': 'palenight' }
let g:airline_theme = "palenight"
if (has("nvim"))
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif
if (has("termguicolors"))
  set termguicolors
endif
let g:palenight_terminal_italics=1

" -------------------------------------------------------
" custom commands & functions:
" -------------------------------------------------------
set clipboard=unnamedplus
"command! Cp call system("pbcopy",@")
command! Kb %bd|e#

set regexpengine=1
set noshowcmd
set synmaxcol=200
