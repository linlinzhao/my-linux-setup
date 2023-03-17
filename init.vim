set nocompatible
call plug#begin('~/.local/share/nvim/plugged')
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle'  }
"for deoplete to work, pip install pynvim is needed
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins'  }
"Plug 'donRaphaco/neotex', { 'for': 'tex'  }
"Plug 'lervag/vimtex'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'zchee/deoplete-jedi'
Plug 'scrooloose/syntastic'
"Plug 'tmhedberg/SimpylFold'
Plug 'jiangmiao/auto-pairs'  
Plug 'nvie/vim-flake8'       
Plug 'jnurmine/Zenburn'
Plug 'scrooloose/nerdtree' 
Plug 'kien/ctrlp.vim'        
Plug 'ervandew/supertab'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'joshdick/onedark.vim'
"function! BuildComposer(info)
"  if a:info.status != 'unchanged' || a:info.force
"    if has('nvim')
"      !cargo build --release
"    else
"      !cargo build --release --no-default-features --features json-rpc
"    endif
"  endif
"endfunction
"Plug 'euclio/vim-markdown-composer', { 'do': function('BuildComposer') }
call plug#end()

nnoremap <space> za
nmap <F8> :TagbarToggle<CR>
autocmd FileType python nnoremap <leader>y :0,$!yapf<Cr>
autocmd FileType python nnoremap <F5> :exec '!python' shellescape(@%, 1)<cr>
autocmd CompleteDone * pclose " To close preview window of deoplete automagically
autocmd vimenter * NERDTree
"jump to main window
autocmd Vimenter * wincmd p

"colorscheme 'onedark'
set shellslash
set grepprg=grep\ -nH\ $*
set backspace=indent,eol,start
set spell
setlocal spell spelllang=en
hi clear SpellBad
hi SpellBad Cterm=underline,bold

" Folding {{{
set foldenable
set foldlevelstart=10  " default folding level when buffer is opened
set foldnestmax=10     " maximum nested fold
set foldmethod=syntax  " fold based on indentation
" }}} Folding

au BufNewFile,BufRead *.py:
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix

au BufNewFile,BufRead *.js, *.html, *.css:
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2

let g:comfortable_motion_scroll_down_key = "j"
let g:comfortable_motion_scroll_up_key = "k"
"let g:neotex_enabled=2
let g:deoplete#enable_at_startup=1
"let g:python_host_prog='/usr/bin/python2.7'
let g:python3_host_prog='/usr/bin/python'
let g:tex_flavor='latex'
let g:Tex_MultipleCompileFormats='pdf'
let g:Tex_DefaultTargetFormat='pdf'
let python_highlight_all=1
let g:vimtex_fold_enabled = 1
let g:vimtex_compiler_progname ='nvr'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:indent_guides_enable_on_vim_startup = 1
