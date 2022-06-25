call plug#begin()

Plug 'sirver/UltiSnips', { 'do': ':UpdateRemotePlugins' }
Plug 'honza/vim-snippets'

Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'prabirshrestha/asyncomplete-ultisnips.vim'

Plug 'thomasfaingnaert/vim-lsp-snippets'
Plug 'thomasfaingnaert/vim-lsp-ultisnips'

Plug 'mattn/vim-lsp-settings'

Plug 'rust-lang/rust.vim'

Plug 'dracula/vim'
Plug 'tpope/vim-sensible'

Plug 'preservim/nerdtree'

Plug 'vim-airline/vim-airline'
Plug 'rafalbromirski/vim-airlineish'

call plug#end()

inoremap <expr> <Tab>   pumvisible() ? "\<down>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<up>" : "\<S-Tab>"

inoremap <expr> <cr>  pumvisible() ? asyncomplete#close_popup() : "\<cr>"

imap <c-space> <Plug>(asyncomplete_force_refresh)

let g:asyncomplete_auto_completeopt = 0
set completeopt=menuone,noinsert,noselect,preview

autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif

if has('python3')
    let g:UltiSnipsExpandTrigger="<tab>"
    let g:UltiSnipsJumpForwardTrigger="<c-down>"
    let g:UltiSnipsJumpBackwardTrigger="<c-up>"
    call asyncomplete#register_source(asyncomplete#sources#ultisnips#get_source_options({
        \ 'name': 'ultisnips',
        \ 'allowlist': ['*'],
        \ 'completor': function('asyncomplete#sources#ultisnips#completor'),
        \ }))
endif

let g:lsp_document_highlight_enabled = 0
let g:lsp_diagnostics_float_cursor = 1
let g:lsp_diagnostics_float_delay = 150
let g:lsp_diagnostics_signs_enabled = 0
let g:lsp_diagnostics_virtual_text_enabled = 0
let g:lsp_document_code_action_signs_enabled = 0

let g:python3_host_prog='/usr/local/bin/python3.8'

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'

let g:airline_theme='airlineish'

let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1

let g:dracula_colorterm = 0
set termguicolors

syntax enable
filetype plugin indent on
colorscheme dracula

hi Normal guibg=NONE
set guicursor=

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set number

noremap l h
noremap ; l
noremap h ;

nmap <C-down> :wincmd j<CR>
nmap <C-up> :wincmd k<CR>
nmap <C-left> :wincmd h<CR>
nmap <C-right> :wincmd l<CR>

nmap <C-J> :wincmd j<CR>
nmap <C-K> :wincmd k<CR>
nmap <C-L> :wincmd h<CR>

nmap h<Esc> <C-Semicolon>
nnoremap <C-Semicolon> :wincmd l<CR>
imap h<Esc> ;
vmap h<Esc> ;

nmap <C-n> :NERDTreeToggle<CR>

nmap [ :split<CR>
nmap ] :vsplit<CR>

nmap <F11> :wprev<CR>
nmap <F12> :wn<CR>

nmap - :tabp<CR>
nmap = :tabn<CR>

