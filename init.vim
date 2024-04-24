set number
set mouse=a
set numberwidth=4
set clipboard+=unnamedplus
syntax enable
set showcmd
set ruler
set cursorline
set encoding=utf-8
set showmatch
set sw=4
set relativenumber
set laststatus=4
set shiftwidth=2
set shiftwidth=2
set expandtab
set autoindent

" PLUGINS -----------------------------------------------------------------
call plug#begin()

" Theme
Plug 'tomasiser/vim-code-dark'

" Comments
Plug 'preservim/nerdcommenter'

" Nerdtree
Plug 'preservim/nerdtree'

" Lsp support and installer
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'

" Lsp completion
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'

" Lsp snippets luasnip
 Plug 'L3MON4D3/LuaSnip'
 Plug 'saadparwaiz1/cmp_luasnip'

call plug#end()


" MAPPING -----------------------------------------------------------------
let mapleader=" "

nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>

imap <C-v> <C-o>"+p

nmap <CR> A<CR><Esc>

" PLUGINS CONFIG ----------------------------------------------------------
" colors
colorscheme codedark

" comments
map <Leader>/ <plug>NERDCommenterToggle

" toggle nerdtree
nnoremap <C-t> :NERDTreeToggle<CR>

" lsp luasnip
" press <Tab> to expand or jump in a snippet. These can also be mapped separately
" via <Plug>luasnip-expand-snippet and <Plug>luasnip-jump-next.
imap <silent><expr> <Tab> luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>' 
" -1 for jumping backwards.
inoremap <silent> <S-Tab> <cmd>lua require'luasnip'.jump(-1)<Cr>

snoremap <silent> <Tab> <cmd>lua require('luasnip').jump(1)<Cr>
snoremap <silent> <S-Tab> <cmd>lua require('luasnip').jump(-1)<Cr>

" For changing choices in choiceNodes (not strictly necessary for a basic setup).
imap <silent><expr> <C-E> luasnip#choice_active() ? '<Plug>luasnip-next-choice' : '<C-E>'
smap <silent><expr> <C-E> luasnip#choice_active() ? '<Plug>luasnip-next-choice' : '<C-E>'
