call plug#begin()
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sensible'
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
" Use release branch (recommend)
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" vim-solidity
Plug 'tomlion/vim-solidity'

" vim-prettier
Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }

" vim-numbertoogle 
Plug 'jeffkreeftmeijer/vim-numbertoggle'

Plug 'NLKNguyen/papercolor-theme'

call plug#end()

" set colorscheme habamax for all 
" colorscheme  habamax
colorscheme PaperColor 
set background=light 


" Use tab for trigger completion with characters ahead and navigate.
" NOTE: There's always complete item selected by default, you may want to enable
" no select by `"suggest.noselect": true` in your configuration file.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction


" tab config from https://linuxhandbook.com/vim-indentation-tab-spaces/ 
" use tab instead of spaces.
set autoindent noexpandtab tabstop=4 shiftwidth=4

" vim-prettier auto format on save
" https://github.com/prettier/vim-prettier#:~:text=NOTE%20The%20previous%20two%20options%20can%20be%20used%20together%20for%20autoformatting%20files%20on%20save%20without%20%40format%20or%20%40prettier%20tags
let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0
let g:prettier#config#single_quote = 'true'
let g:prettier#config#trailing_comma = 'all'

"vim-airline to display all buffers when there is only one tab. 
let g:airline#extensions#tabline#enabled = 1

" vim-numbertoggle 
:set number 

" not asking to write when I change buffers 
:set hidden

" cycle through buffers https://vim.fandom.com/wiki/Cycle_through_buffers_including_hidden_buffers
:nnoremap <Tab> :bnext<CR>
:nnoremap <S-Tab> :bprevious<CR>

