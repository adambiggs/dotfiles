" General {{{

  scriptencoding utf-8
  set shell=/bin/zsh    " Use zsh as shell
  set clipboard=unnamed " Use * register for copy-paste
  set history=1000      " Store a ton of history (default is 50)
  set nohidden          " Get rid of annoying unnamed buffers hanging around.
  set updatetime=750
  set autoread
  set shiftround
  set visualbell
  set gdefault          " Substitute all matches on a line by default
  set noswapfile        " Temp files are annoying when editing the same file in multiple instances of Vim... Just save often instead
  set viewoptions=cursor,folds,slash,unix
  set completeopt=noinsert,menuone,noselect " IMPORTANTE: :help Ncm2PopupOpen for more information
  set foldopen-=block
  set maxmapdepth=100   " Reduce maximum remaps to throw 'recursive mapping' error sooner

" }}}

" Vim UI {{{

  " True color support
  if (has('termguicolors'))
    set termguicolors
  endif

  " Live substitution preview
  if exists('&inccommand')
    set inccommand=split
  endif

  set mouse=a
  set mousehide                 " Hide the mouse cursor while typing
  set background=dark           " Assume a dark background
  set showmode                  " Display the current mode
  set cursorline                " Highlight current line
  set linespace=0               " No extra spaces between rows
  set number                    " Line numbers on
  set showmatch                 " Show matching brackets/parenthesis
  set winminheight=0            " Windows can be 0 line high
  set ignorecase                " Case insensitive search
  set smartcase                 " Case sensitive when uc present
  set whichwrap=b,s,h,l,<,>,[,] " Backspace and cursor keys wrap too
  set scrolljump=5              " Lines to scroll when cursor leaves screen
  set scrolloff=3               " Minimum lines to keep above and below cursor
  set foldenable                " Auto fold code
  set list
  set listchars=tab:-\ ,trail:-,extends:#,nbsp:. " Highlight problematic whitespace
  set diffopt=filler,vertical   " Vertical diff view
  " set pumblend=10               " Transparent popup overlay

  highlight clear SignColumn    " SignColumn should match background
  highlight clear LineNr        " Current line number row will have same background color in relative mode

  " Highlight column 80
  set colorcolumn=80

  " Colorscheme
  try
    colorscheme onedark
  catch /^Vim\%((\a\+)\)\=:E185/
    " Whatever dude
  endtry

" Formatting {{{

  set nowrap        " Do not wrap long lines
  set shiftwidth=2  " Use indents of 2 spaces
  set expandtab     " Tabs are spaces, not tabs
  set tabstop=2     " An indentation every four columns
  set softtabstop=2 " Let backspace delete indent
  set nojoinspaces  " Prevents inserting two spaces after punctuation on a join (J)
  set splitright    " Puts new vsplit windows to the right of the current
  set splitbelow    " Puts new split windows to the bottom of the current

  " Commands {{{
    augroup formatting
      autocmd!

      " Automatically check for changed files outside Vim
      autocmd BufRead,BufEnter,FocusGained * silent! checktime

    augroup end
  " }}}

" }}}

" Syntax {{{

  augroup syntax
    autocmd!

    " JavaScript
    autocmd FileType javascript,javascript.jsx setlocal foldmethod=indent foldlevel=0

    " Vue
    autocmd BufRead,BufNewFile *.vue setlocal filetype=vue.html.javascript.sass foldmethod=syntax
    autocmd FileType vue.html.javascript.sass syntax sync fromstart " Prevent issue where syntax highlighting stops working

    " JSON
    autocmd BufNewFile,BufRead .babelrc,.eslintrc,.tern-project,.jsdoc2mdrc set filetype=json
    autocmd FileType json setlocal conceallevel=0 foldmethod=syntax foldlevel=2 shiftwidth=2 tabstop=2 softtabstop=2

    " Handlebars
    autocmd FileType html.handlebars setlocal foldmethod=indent

    " Stylus
    autocmd FileType stylus setlocal foldmethod=indent

    " Markdown
    autocmd BufNewFile,BufRead *.md setlocal spell

  augroup end

" }}}

" Keymaps {{{

  let mapleader = ','

  " Turn off search highlighting
  nmap <silent> <leader>\ :nohlsearch<CR>

  " Visual shifting (does not exit Visual mode)
  vnoremap < <gv
  vnoremap > >gv

  " Adjust viewports to the same size
  map <Leader>= <C-w>=

  " Zoom current split
  nnoremap <Leader>- <C-W><Bar>
  nnoremap <Leader>_ <C-W>_

  " Wrapped lines goes down/up to next row, rather than next line in file.
  noremap j gj
  noremap k gk

  " Yank from the cursor to the end of the line, to be consistent with C and D.
  nnoremap Y y$

  " Easier horizontal scrolling
  map zl zL
  map zh zH

  " Faster tab switching
  map <C-m> :tabnext<CR>
  map <C-n> :tabprevious<CR>

  " Terminal split navigation
  if has('nvim')
    tmap <C-j> <C-\><C-n><C-j>
    tmap <C-k> <C-\><C-n><C-k>
    tmap <C-h> <C-\><C-n><C-h>
    tmap <C-l> <C-\><C-n><C-l>
    autocmd WinEnter term://* startinsert
  endif

  " Find merge conflict markers
  map <leader>fc /\v^[<\|=>]{7}( .*\|$)<CR>

  " Quick find/replace
  nnoremap <Leader>o :%s/<C-r><C-w>/
  vnoremap <Leader>o "zy:%s/<C-r><C-o>"/

" }}}

" vim:sw=2:ts=2:sts=2:et:foldmethod=marker
