" Config Directories {{{
  let b:config_directory = '~/.config/nvim'
  let b:plugin_directory = b:config_directory . '/plugged'
  let g:python_host_prog = '/usr/local/bin/python'
  let g:python3_host_prog = '/usr/local/bin/python3'
" }}}

" Functions {{{

  " Initialize directories {{{
    function! InitializeDirectories()
      let parent = $HOME
      let prefix = '.config/nvim/'
      let dir_list = {
        \ 'backup': 'backupdir',
        \ 'views': 'viewdir',
        \ 'swap': 'directory' }

      if has('persistent_undo')
        let dir_list['undo'] = 'undodir'
      endif

      let common_dir = parent . '/' . prefix

      for [dirname, settingname] in items(dir_list)
        let directory = common_dir . dirname . '/'
        if exists("*mkdir")
          if !isdirectory(directory)
            call mkdir(directory)
          endif
        endif
        if !isdirectory(directory)
          echo "Warning: Unable to create backup directory: " . directory
          echo "Try: mkdir -p " . directory
        else
          let directory = substitute(directory, " ", "\\\\ ", "g")
          exec "set " . settingname . "=" . directory
        endif
      endfor
    endfunction
    call InitializeDirectories()
  " }}}

  " Strip whitespace {{{
    function! StripTrailingWhitespace()
      " Preparation: save last search, and cursor position.
      let _s=@/
      let l = line(".")
      let c = col(".")
      " do the business:
      %s/\s\+$//e " clean up: restore previous search history, and cursor position
      let @/=_s
      call cursor(l, c)
    endfunction

    augroup trailing-whitespace
      autocmd!
      autocmd FileType c,coffee,cpp,go,java,javascript,json,perl,php,puppet,python,rust,sql,stylus,twig,xml,yaml,vue autocmd BufWritePre <buffer> call StripTrailingWhitespace()
    augroup end
  " }}}

  " Clean JSON formatting {{{
    function! CleanJSON()
      %!jq --monochrome-output .
    endfunction
  " }}}

  " Open Markdown file in Marked.app {{{
    function! s:setupMarkdownPreview()
      nnoremap <leader>md :silent !open -a Marked\ 2.app '%:p'<cr>
    endfunction

    augroup markdown-preview
      autocmd!
      autocmd BufRead,BufNewFile *.{md,markdown,mdown,mkd,mkdn} call s:setupMarkdownPreview()
    augroup end
  " }}}

" }}}

" Commands {{{

  " Clean JSON Formatting {{{
    augroup json-commands
      autocmd!
      autocmd BufRead,BufNewFile *.json command! CleanJSON call CleanJSON()
    augroup end
  " }}}

  " Quickly save and delete a buffer {{{
    command! W :w|bd
  " }}}

" }}}

" Plugins {{{

  call plug#begin(b:plugin_directory)

  " Theme
  Plug 'joshdick/onedark.vim'

  " UI
  "Plug 'justinmk/vim-dirvish'
  "Plug 'tpope/vim-eunuch'
  Plug 'christoomey/vim-tmux-navigator'
  Plug 'kevinkjt2000/tmuxline.vim'
  Plug 'junegunn/vim-peekaboo'
  Plug 'kassio/neoterm'
  Plug 'mbbill/undotree', { 'on': 'UndotreeToggle' }
  Plug 'nathanaelkane/vim-indent-guides'
  Plug 'ryanoasis/vim-devicons' | Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
  Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeFind', 'NERDTreeToggle'] } | Plug 'https://gist.github.com/17057040c94b6b9786a4.git', { 'dir': b:config_directory . '/nerdtree_plugin/coffee_filter.vim' }
  Plug 'vim-airline/vim-airline'

  " Search & Navigation
  Plug 'bronson/vim-visual-star-search'
  Plug 'easymotion/vim-easymotion'
  Plug 'haya14busa/incsearch.vim' | Plug 'haya14busa/incsearch-easymotion.vim'
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all --no-update-rc' } | Plug 'junegunn/fzf.vim'
  Plug 'kshenoy/vim-signature'
  Plug 'brooth/far.vim'

  " Autocomplete
  Plug 'adambiggs/vim-snippets'
  Plug 'fgrsnau/ncm2-otherbuf', { 'branch': 'ncm2' }
  Plug 'ncm2/ncm2' | Plug 'roxma/nvim-yarp'
  Plug 'ncm2/ncm2-bufword'
  Plug 'ncm2/ncm2-cssomni'
  Plug 'ncm2/ncm2-html-subscope'
  Plug 'ncm2/ncm2-path'
  Plug 'ncm2/ncm2-tern',  {'do': 'npm install'}
  Plug 'ncm2/ncm2-tmux'
  Plug 'ncm2/ncm2-ultisnips' | Plug 'SirVer/ultisnips'
  Plug 'ncm2/ncm2-vim' | Plug 'Shougo/neco-vim'
  Plug 'phpactor/ncm2-phpactor' | Plug 'phpactor/phpactor' ,  {'do': 'composer install', 'for': 'php'}

  " Source Control
  Plug 'airblade/vim-gitgutter'
  Plug 'jreybert/vimagit'
  Plug 'tpope/vim-fugitive' | Plug 'junegunn/gv.vim'
  Plug 'tpope/vim-rhubarb'

  " Syntax
  Plug 'ap/vim-css-color', { 'for': ['css', 'stylus', 'sass'] }
  Plug 'kchmck/vim-coffee-script', { 'for': 'coffee' }
  Plug 'posva/vim-vue'
  Plug 'sheerun/vim-polyglot'

  " Workflow
  Plug 'airblade/vim-rooter'
  Plug 'benmills/vimux'
  Plug 'ciaranm/detectindent', { 'on': 'DetectIndent' }
  Plug 'cohama/lexima.vim'
  Plug 'joonty/vdebug', { 'branch': 'master' }
  Plug 'junegunn/vim-easy-align'
  " Plug 'neomake/neomake'
  Plug 'neovim/node-host', { 'do': 'npm install' }
  Plug 'scrooloose/nerdcommenter'
  Plug 'thinca/vim-localrc'
  Plug 'tpope/vim-obsession' | Plug 'dhruvasagar/vim-prosession'
  Plug 'tpope/vim-repeat'
  Plug 'tpope/vim-surround'
  Plug 'vim-scripts/visualrepeat'
  Plug 'w0rp/ale'

  call plug#end()

" }}}

" General {{{

  scriptencoding utf-8
  set shell=/bin/zsh    " Use zsh as shell
  set clipboard=unnamed " Use * register for copy-paste
  set history=1000      " Store a ton of history (default is 50)
  set nohidden          " Get rid of annoying unnamed buffers hanging around.
  set backup            " Backups are nice...
  set undofile          " So is persistent undo...
  set undolevels=1000   " Maximum number of changes that can be undone
  set undoreload=10000  " Maximum number lines to save for undo on a buffer reload
  set updatetime=750
  "set smartindent
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
  if (has('nvim'))
    "For Neovim 0.1.3 and 0.1.4
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif

  if (has('termguicolors'))
    "For Neovim > 0.1.5 and Vim > patch 7.4.1799
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
  set listchars=tab:›\ ,trail:•,extends:#,nbsp:. " Highlight problematic whitespace
  set diffopt=filler,vertical   " Vertical diff view

  highlight clear SignColumn    " SignColumn should match background
  highlight clear LineNr        " Current line number row will have same background color in relative mode

  " User patched Powerline fonts
  set guifont=Source\ Code\ Pro\ for\ Powerline:h13,Menlo\ Regular:h15

  " Highlight column 80
  set colorcolumn=80

  " Colorscheme
  try
    colorscheme onedark
  catch /^Vim\%((\a\+)\)\=:E185/
    " It's ok, we're probably just running the initial installation.
  endtry

  " Tmux
  if exists('$TMUX')
    " Different cursor for insert mode
    let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
    let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
  endif

  if has('cmdline_info')
    set ruler         " Show the ruler
    set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%) " A ruler on steroids
    set showcmd         " Show partial commands in status line and selected characters/lines in visual mode
  endif

  if has('statusline')
    set laststatus=2

    " Broken down into easily includeable segments
    set statusline=%<%f\                     " Filename
    set statusline+=%w%h%m%r                 " Options
    set statusline+=%{fugitive#statusline()} " Git Hotness
    set statusline+=\ [%{&ff}/%Y]            " Filetype
    set statusline+=\ [%{getcwd()}]          " Current dir
    set statusline+=%=%-14.(%l,%c%V%)\ %p%%  " Right aligned file nav info
  endif

" }}}

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

    " CoffeeScript
    autocmd FileType coffee setlocal foldmethod=indent foldlevel=2
    autocmd FileType coffee autocmd BufWritePre <buffer> call StripTrailingWhitespace()

    " JavaScript
    autocmd FileType javascript,javascript.jsx setlocal foldmethod=indent foldlevel=1

    " Vue
    autocmd BufRead,BufNewFile *.vue setlocal filetype=vue.html.javascript.sass foldmethod=syntax
    autocmd FileType vue.html.javascript.sass syntax sync fromstart " Prevent issue where syntax highlighting stops working

    " JSON
    autocmd BufNewFile,BufRead .babelrc,.eslintrc,.tern-project,.jsdoc2mdrc set filetype=json
    autocmd FileType json setlocal conceallevel=0 foldmethod=syntax foldlevel=2 shiftwidth=2 tabstop=2 softtabstop=2

    " Vagrantfile
    autocmd BufRead,BufNewFile Vagrantfile set filetype=ruby

    " Handlebars
    autocmd FileType html.handlebars setlocal foldmethod=indent

    " Stylus
    autocmd FileType stylus setlocal foldmethod=indent

    " PHP
    autocmd FileType php setlocal shiftwidth=4 tabstop=4 softtabstop=4 expandtab

    " Markdown
    autocmd BufNewFile,BufRead *.md setlocal spell

    " Yaml
    autocmd BufNewFile,BufRead *.yml.dist set filetype=yaml

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

" Plugin Config {{{

  " Airline {{{
    if isdirectory(expand(b:plugin_directory . '/vim-airline'))
      let g:airline_exclude_preview = 1
      let g:airline_detect_iminsert = 1
      " let g:airline_detect_crypt = 0 " https://github.com/vim-airline/vim-airline/issues/792
      let g:airline_powerline_fonts = 1
      let g:airline#extensions#tabline#enabled = 1
      let g:airline#extensions#tabline#show_tabs = 1
      let g:airline#extensions#tabline#tab_nr_type = 2 " Show # of splits and tab #
      let g:airline#extensions#tabline#show_tab_type = 1
      let g:airline_theme = 'onedark'
      let g:airline_left_sep = ''
      let g:airline_left_alt_sep = ''
      let g:airline_right_sep = ''
      let g:airline_right_alt_sep = ''

      " Custom symbols
      if !exists('g:airline_symbols')
        let g:airline_symbols = { }
      endif
      let g:airline_symbols.branch   = ''
      let g:airline_symbols.readonly = ''
    endif
  " }}}

  " ALE {{{
    if isdirectory(expand(b:plugin_directory . '/ale'))
      let g:ale_fixers = {
      \   'javascript': ['eslint'],
      \ }
    endif
  " }}}

  " CoffeeScript {{{
    if isdirectory(expand(b:plugin_directory . '/vim-coffee-script'))

      " Config {{{
        let coffee_compile_vert = 1
        let coffee_watch_vert   = 1
        let coffee_run_vert     = 1
      " }}}

      " Mappings {{{
        nnoremap <Leader>cw :CoffeeWatch<CR>
      " }}}

    endif
  " }}}

  " CoffeeTags {{{
    if isdirectory(expand(b:plugin_directory . '/CoffeeTags'))
      let g:CoffeeAutoTagIncludeVars = 1
    endif
  " }}}

  " Dirvish {{{
    if isdirectory(expand(b:plugin_directory . '/vim-dirvish'))

      " Config {{{
        let g:dirvish_relative_paths = 0
      " }}}

      " Mappings {{{
        nnoremap <C-e> :Dirvish<CR>
      " }}}

      " Commands & Plugin Mappings {{{
        augroup dirvish
          autocmd!

          function! s:setupDirvish()
            keeppatterns sort r /[^\/]$/ " Sort folders first

            " Fix EasyMotion
            map <buffer> <Leader>j $T/<Plug>(easymotion-j)
            map <buffer> <Leader>k $T/<Plug>(easymotion-k)

            " Toggle open/close with same mapping
            nmap <buffer> <C-e> <Plug>(dirvish_quit)

            " Navigate to parent directory
            nmap <buffer> .. <Plug>(dirvish_up)

            " Open files in vertical split
            nnoremap <buffer> <C-v> :call dirvish#open('vsplit', 0)<CR>
            xnoremap <buffer> <C-v> :call dirvish#open('vsplit', 0)<CR>

          endfunction

          autocmd FileType dirvish call s:setupDirvish()
        augroup end
      " }}}

    endif
  " }}}

  " EasyAlign {{{
    if isdirectory(expand(b:plugin_directory . '/vim-easy-align'))

      " Start interactive EasyAlign in visual mode (e.g. vip<Enter>)
      vmap <CR> <Plug>(EasyAlign)
      " Start interactive EasyAlign for a motion/text object (e.g. ga<Leader>a)
      nmap <Leader>a <Plug>(EasyAlign)

      " Presets
      vmap <Leader>a: <CR><Right>:
      nmap <Leader>a: vip<Leader>a:
      vmap <Leader>a= <CR>=
      nmap <Leader>a= vip<Leader>a=

    endif
  " }}}

  " EasyMotion {{{
    if isdirectory(expand(b:plugin_directory . '/vim-easymotion'))

      " Config {{{

        " Over window search
        function! s:incsearch_config(...) abort
          return incsearch#util#deepextend(deepcopy({
          \   'modules': [incsearch#config#easymotion#module({'overwin': 1})],
          \   'keymap': {
          \     "\<CR>": '<Over>(easymotion)'
          \   },
          \   'is_expr': 0
          \ }), get(a:, 1, {}))
        endfunction

      " }}}

      " Mappings {{{

        noremap <silent><expr> ?  incsearch#go(<SID>incsearch_config({'command': '?'}))
        noremap <silent><expr> g/ incsearch#go(<SID>incsearch_config({'is_stay': 1}))

        " Use <Leader> as easymotion prefix.
        map <Leader> <Plug>(easymotion-prefix)

        " Search
        nmap s <Plug>(easymotion-sn)
        vmap s <Plug>(easymotion-sn)

        " Vertical line navigation
        map <Leader>j <Plug>(easymotion-j)
        map <Leader>k <Plug>(easymotion-k)

        " Same-line navigation
        map <Leader>h <Plug>(easymotion-linebackward)
        map <Leader>l <Plug>(easymotion-lineforward)

      " }}}

    endif
  " }}}

  " Fugitive {{{
    if isdirectory(expand(b:plugin_directory . '/vim-fugitive'))
      nnoremap <silent> <leader>gs :Gstatus<CR>
      nnoremap <silent> <leader>gd :Gdiff<CR>
      nnoremap <silent> <leader>gc :Gcommit<CR>
      nnoremap <silent> <leader>gb :Gblame<CR>
      nnoremap <silent> <leader>gp :Git push<CR>
      nnoremap <silent> <leader>gr :Gread<CR>
      nnoremap <silent> <leader>gw :Gwrite<CR>
      nnoremap <silent> <leader>ge :Gedit<CR>
      nnoremap <silent> <leader>gi :Git add -p %<CR>
      nnoremap <silent> <leader>gg :SignifyToggle<CR>
    endif
  " }}}

  " FZF {{{
    if isdirectory(expand(b:plugin_directory . '/fzf.vim'))

      " Config {{{

        " Customize fzf colors to match your color scheme
        "let g:fzf_colors =
        "\ { 'fg':      ['fg', 'Normal'],
          "\ 'bg':      ['bg', 'Normal'],
          "\ 'hl':      ['fg', 'Comment'],
          "\ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
          "\ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
          "\ 'hl+':     ['fg', 'Statement'],
          "\ 'info':    ['fg', 'PreProc'],
          "\ 'prompt':  ['fg', 'Conditional'],
          "\ 'pointer': ['fg', 'Exception'],
          "\ 'marker':  ['fg', 'Keyword'],
          "\ 'spinner': ['fg', 'Label'],
          "\ 'header':  ['fg', 'Comment'] }

        " Select buffers with FZF
        " @see https://github.com/junegunn/fzf/wiki/Examples-(vim)#select-buffer
        "function! s:buflist()
          "redir => ls
          "silent ls
          "redir END
          "return split(ls, '\n')
        "endfunction

        "function! s:bufopen(lines)
          "if len(a:lines) < 2 | return | endif

          "let cmd = get({'ctrl-x': 'sbuffer',
            "\ 'ctrl-v': 'vert sbuffer',
            "\ 'ctrl-t': 'tab sb',
            "\ 'ctrl-d': 'bd'}, a:lines[0], 'buffer')
          "let list = a:lines[1:]

          "let first = list[0]
          "execute cmd matchstr(first, '^[ 0-9]*')
        "endfunction

        "nnoremap <silent> <C-@> :call fzf#run({
          "\   'source':  reverse(<sid>buflist()),
          "\   'sink*':    function('<sid>bufopen'),
          "\   'options': '+m --ansi --expect=ctrl-t,ctrl-v,ctrl-x,ctrl-d',
          "\   'down':    len(<sid>buflist()) + 2
          "\ })<CR>

      " }}}

      " Mappings {{{
        nnoremap <silent> <C-Space> :Buffers<CR>
        nnoremap <silent> <C-p> :FZF<CR>
      " }}}

      " Commands {{{

        " Pass commands directly to ag
        command! -nargs=+ -complete=file Ag call fzf#vim#ag_raw(<q-args>)

        " Pass commands directly to rg
        command! -bang -nargs=* Rg
          \ call fzf#vim#grep(
          \   'rg --column --line-number --no-heading --color=always '.<q-args>, 1,
          \   <bang>0 ? fzf#vim#with_preview('up:60%')
          \           : fzf#vim#with_preview('right:50%:hidden', '?'),
          \   <bang>0)

        " Make FZF act more like CtrlP
        augroup fzf
          autocmd!
          autocmd WinEnter \[FZF\] startinsert
          autocmd TermOpen term://*/fzf* tnoremap <buffer> <C-p> <Esc>
          autocmd TermOpen term://*/fzf* tnoremap <buffer> <C-k> <Up>
          autocmd TermOpen term://*/fzf* tnoremap <buffer> <C-j> <Down>
        augroup end

      " }}}

    endif
  " }}}

  " GitGutter {{{
    if isdirectory(expand(b:plugin_directory . '/vim-gitgutter'))
      let g:gitgutter_max_signs = 10000
      let g:gitgutter_map_keys  = 0

      nmap <Leader>g\ :GitGutterLineHighlightsToggle<CR>
      nmap <Leader>gj :GitGutterNextHunk<CR>
      nmap <Leader>gk :GitGutterPrevHunk<CR>
      nmap <Leader>ga :GitGutterStageHunk<CR>
      nmap <Leader>gu :GitGutterUndoHunk<CR>
    endif
  " }}}

  " Gv.vim {{{
    if isdirectory(expand(b:plugin_directory . '/gv.vim'))
      nnoremap <silent> <leader>gl :GV<CR>
    endif
  " }}}

  " Indent Guides {{{
    if isdirectory(expand(b:plugin_directory . '/vim-indent-guides'))
      let g:indent_guides_start_level           = 1
      let g:indent_guides_auto_colors           = 1
      let g:indent_guides_enable_on_vim_startup = 1
      let g:indent_guides_exclude_filetypes     = ['help', 'nerdtree', 'fzf']
    endif
  " }}}

  " LocalRC {{{
    if isdirectory(expand(b:plugin_directory . '/vim-localrc'))
      let g:localrc_filename = '.vimrc.local'
      let g:localrc_filetype = '/^\.vimrc\..*\<%s\>.*\.local$'
    endif
  " }}}

  " Nerd Icons {{{
    if isdirectory(expand(b:plugin_directory . '/vim-devicons'))
      let g:WebDevIconsNerdTreeAfterGlyphPadding  = ' '
      let g:WebDevIconsUnicodeDecorateFolderNodes = 1

      " Fix dots after icons in NERDTree
      " https://github.com/ryanoasis/vim-devicons/issues/110#issue-103801335
      augroup nerdtree
        autocmd!
        autocmd FileType nerdtree setlocal nolist
      augroup end
    endif
  " }}}

  " NERDTree {{{
    if isdirectory(expand(b:plugin_directory . '/nerdtree'))

      " Config {{{
        let NERDTreeAutoCenterThreshold   = 50
        let NERDTreeAutoDeleteBuffer      = 1
        let NERDTreeDirArrows             = 1
        let NERDTreeIgnore                = ['\.py[cd]$', '\~$', '\.swo$', '\.swp$', '\.git', '\.hg', '\.svn', '\.bzr', '\.map$', '.DS_Store']
        let NERDTreeMapOpenVSplit         = 'v'
        let NERDTreeMinimalUI             = 1
        let NERDTreeMouseMode             = 2
        let NERDTreeQuitOnOpen            = 1
        let NERDTreeShowBookmarks         = 1
        let NERDTreeShowHidden            = 1
        let NERDTreeSortHiddenFirst       = 1
        let NERDTreeWinSize               = 35
        let NERDTreeCascadeSingleChildDir = 0

        " File highlighting
        function! NERDTreeHighlightFile(extension, fg, bg)
          exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg
          exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
        endfunction

        " Repo-specific bookmarks
        if isdirectory(expand(".git"))
          let g:NERDTreeBookmarksFile = '.git/.nerdtree-bookmarks'
        endif

      " }}}

      " Mappings {{{
        map <C-e> :NERDTreeToggle<CR>
      " }}}

    endif
  " }}}

  " NERDCommenter {{{
    if isdirectory(expand(b:plugin_directory . '/nerdcommenter'))

      let g:NERDSpaceDelims = 1

      let g:ft = ''
      function! NERDCommenter_before()
        if &ft == 'vue'
          let g:ft = 'vue'
          let stack = synstack(line('.'), col('.'))
          if len(stack) > 0
            let syn = synIDattr((stack)[0], 'name')
            if len(syn) > 0
              exe 'setf ' . substitute(tolower(syn), '^vue_', '', '')
            endif
          endif
        endif
      endfunction
      function! NERDCommenter_after()
        if g:ft == 'vue'
          setf vue
          let g:ft = ''
        endif
      endfunction

    endif
  " }}}

  " Neomake {{{
    if isdirectory(expand(b:plugin_directory . '/neomake'))

      " Generate tags via CoffeeTags
      let g:neomake_coffee_coffeetags_maker = {
        \ 'args': ['--include-vars', '--append', '-f./tags']
        \ }

      let g:neomake_coffee_enabled_makers = ['coffeelint', 'coffeetags']
      let g:neomake_jsx_enabled_makers = ['eslint']

      augroup neomake
        autocmd!
        autocmd BufWritePost * Neomake
      augroup end
    endif
  " }}}

  " Neoterm {{{
    if isdirectory(expand(b:plugin_directory . '/neoterm'))

      let g:neoterm_shell      = "zsh"
      let g:neoterm_autoinsert = 1

      nnoremap <silent> <C-c> :T 
      " hide/close terminal
      nnoremap <silent> <C-x> :call neoterm#close()<cr>
      " clear terminal
      nnoremap <silent> <C-l> :call neoterm#clear()<cr>

    endif
  " }}}

  " NCM2 {{{
    if isdirectory(expand(b:plugin_directory . '/ncm2'))

      autocmd BufEnter * call ncm2#enable_for_buffer() " enable ncm2 for all buffers

      " Press enter key to trigger snippet expansion. The parameters are the same as `:help feedkeys()`
      inoremap <silent> <expr> <CR> ncm2_ultisnips#expand_or("\<CR>", 'n')

      " suppress the annoying 'match x of y', 'The only match' and 'Pattern not found' messages
      set shortmess+=c

      " CTRL-C doesn't trigger the InsertLeave autocmd . map to <ESC> instead.
      inoremap <c-c> <ESC>

      " When the <Enter> key is pressed while the popup menu is visible, it only hides the menu. Use this mapping to close the menu and also start a new line.
      inoremap <expr> <CR> (pumvisible() ? "\<c-y>\<cr>" : "\<CR>")

      " Use <TAB> to select the popup menu:
      inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
      inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

    endif
  " }}}

  " One Dark {{{
    if isdirectory(expand(b:plugin_directory . '/onedark.vim'))
      let g:onedark_terminal_italics = 1
    endif
  " }}}

  " ProSession {{{
  if isdirectory(expand(b:plugin_directory . '/vim-prosession'))
    let g:prosession_dir             = b:config_directory . "/session/"
    let g:prosession_per_branch      = 1
    let g:prosession_default_session = 0
  endif
  " }}}

  " Rooter {{{
    if isdirectory(expand(b:plugin_directory . '/vim-rooter'))
      let g:rooter_change_directory_for_non_project_files = 'current'
      let g:rooter_silent_chdir = 1
    endif
  " }}}

  " Tagbar {{{
    if isdirectory(expand(b:plugin_directory . '/tagbar'))

      " Config {{{
        let g:tagbar_autoshowtag = 1  " Open folds if necessary when navigating to a tag
        let g:tagbar_autoclose   = 1  " Focus cursor inside tagbar when opened, and auto close after navigation
        let g:tagbar_foldlevel   = 1  " Custom fold level
        let g:tagbar_iconchars   = ['▸', '▾']

        " CoffeeScript tags
        let g:tagbar_type_coffee = {
          \   'ctagsbin' : 'coffeetags',
          \   'ctagsargs' : ['--include-vars'],
          \   'kinds' : [
          \     'f:functions',
          \     'c:classes',
          \     'o:object',
          \     'v:variables',
          \     'p:prototypes',
          \     'b:blocks'
          \   ],
          \   'sro' : '.',
          \   'kind2scope' : {
          \     'f' : 'object',
          \     'o' : 'object',
          \   }
          \ }
      " }}}

      " Mappings {{{
        nnoremap <Leader><Leader>t :Tagbar<CR>
      " }}}

    endif
  " }}}

  " Tmuxline {{{
    if isdirectory(expand(b:plugin_directory . '/tmuxline.vim'))
      let g:airline#extensions#tmuxline#enabled = 0
      let g:tmuxline_separators = {
        \ 'left'      : '',
        \ 'left_alt'  : '>',
        \ 'right'     : '',
        \ 'right_alt' : '<',
        \ 'space'     : ' ' }
      let g:tmuxline_preset = {
        \ 'a'    : [' %a %b %e'],
        \ 'b'    : [' %l:%M %p'],
        \ 'c'    : ['#{prefix_highlight}'],
        \ 'win'  : [' #I #W'],
        \ 'cwin' : [' #I #W'],
        \ 'x'    : ['#(~/.dotfiles/scripts/now-playing.sh) '],
        \ 'y'    : [' #{cpu_percentage} #[fg=colour244]#[fg=colour7] #(~/.dotfiles/scripts/battery-icon.sh)'],
        \ 'z'    : ['#(~/.dotfiles/scripts/wifi-signal.sh)'] }
    endif
  " }}}

  " UndoTree {{{
    if isdirectory(expand(b:plugin_directory . '/undotree'))

      " Config {{{
        let g:undotree_SplitWidth         = 35
        let g:undotree_TreeNodeShape      = '◉'
        let g:undotree_SetFocusWhenToggle = 1
      " }}}

      " Mappings {{{
        nnoremap <Leader>u :UndotreeToggle<CR>
      " }}}

    endif
  " }}}

  " Ultisnips {{{
    if isdirectory(expand(b:plugin_directory . '/ultisnips'))

      " Other Ultisnips trigger mappings
      let g:UltiSnipsExpandTrigger = '<Plug>(ultisnips_expand)'
      let g:UltiSnipsJumpForwardTrigger = '<c-j>'
      let g:UltiSnipsJumpBackwardTrigger = '<c-k>'
      let g:UltiSnipsRemoveSelectModeMappings = 0

      " Source extra snippets
      autocmd FileType javascript.jsx UltiSnipsAddFiletypes javascript-mocha-standardjs.javascript-sinon-chai-standardjs

    endif
  " }}}

  " Vdebug {{{
    if isdirectory(expand(b:plugin_directory . '/vdebug'))
      let g:vdebug_options                       = { }
      let g:vdebug_options['server']             = ''
      let g:vdebug_options['break_on_open']      = 0
      let g:vdebug_options['continuous_mode']    = 0
      let g:vdebug_options['watch_window_style'] = 'compact'
    endif
  " }}}

" }}}

" vim:sw=2:ts=2:sts=2:et:foldmethod=marker
