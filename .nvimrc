" Modeline and Notes {
" vim: set sw=2 ts=2 sts=2 et tw=80 foldmarker=\ {,\ } foldlevel=0 foldmethod=marker spell:
" }

" Plugins {

  call plug#begin('~/.nvim/plugged')

  " Theme
  Plug 'chriskempson/base16-vim'

  " UI
  Plug 'bling/vim-airline'
  Plug 'majutsushi/tagbar'
  Plug 'mbbill/undotree'
  Plug 'mhinz/vim-startify'
  Plug 'nathanaelkane/vim-indent-guides'
  Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
  Plug 'vim-scripts/restore_view.vim'
  "Plug 'tmux-plugins/vim-tmux-focus-events'

  " Search & Navigation
  Plug 'bronson/vim-visual-star-search'
  Plug 'kshenoy/vim-signature'
  Plug 'Lokaltog/vim-easymotion'
  "Plug 'lukaszkorecki/CoffeeTags' " Currently throws annoying Ruby error...
  Plug 'osyo-manga/vim-over'
  Plug 'junegunn/fzf', { 'dir': '~/.dotfiles/libs/fzf', 'do': 'yes \| ./install' }

  " Autocomplete
  "Plug 'marijnh/tern_for_vim'
  Plug 'SirVer/ultisnips'
  Plug 'honza/vim-snippets'
  Plug 'Valloric/YouCompleteMe', { 'do': './install.sh' }

  " Coding
  Plug 'adambiggs/vim-autoclose'
  Plug 'godlygeek/tabular'
  Plug 'scrooloose/nerdcommenter'
  Plug 'tpope/vim-repeat'
  Plug 'tpope/vim-surround'

  " Source Control
  Plug 'tpope/vim-fugitive'
  Plug 'airblade/vim-gitgutter'

  " Syntax
  Plug 'beyondwords/vim-twig', { 'for': 'twig' }
  Plug 'briancollins/vim-jst', { 'for': 'jst' }
  Plug 'cakebaker/scss-syntax.vim', { 'for': 'scss' }
  Plug 'ekalinin/Dockerfile.vim', { 'for': 'dockerfile' }
  Plug 'elzr/vim-json', { 'for': 'json' }
  Plug 'groenewege/vim-less', { 'for': 'less' }
  Plug 'hail2u/vim-css3-syntax', { 'for': 'css' }
  Plug 'jtratner/vim-flavored-markdown', { 'for': 'markdown' }
  Plug 'kchmck/vim-coffee-script', { 'for': 'coffee' }
  Plug 'mustache/vim-mustache-handlebars', { 'for': 'html.handlebars' }
  Plug 'othree/html5.vim', { 'for': 'html' }
  Plug 'othree/xml.vim', { 'for': 'xml' }
  Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
  Plug 'rodjek/vim-puppet', { 'for': 'puppet' }
  Plug 'tmux-plugins/vim-tmux', { 'for': 'tmux' }
  Plug 'wavded/vim-stylus', { 'for': 'stylus' }

  " Building
  "Plug 'benekastah/neomake' " Currently broken. See: https://github.com/benekastah/neomake/issues/72
  Plug 'scrooloose/syntastic' " Hopefully can be replaced with neomake

  " Workflow
  Plug 'adambiggs/vdebug', { 'branch': 'ordered-path-maps' }
  Plug 'benmills/vimux'
  Plug 'christoomey/vim-tmux-navigator'
  Plug 'ciaranm/detectindent'
  Plug 'edkolev/tmuxline.vim'
  Plug 'szw/vim-ctrlspace'
  Plug 'thinca/vim-localrc'

  call plug#end()

" }

" General {

  scriptencoding utf-8
  set shell=/bin/zsh    " Use zsh as shell
  set clipboard=unnamed " Use * register for copy-paste
  set history=1000    " Store a ton of history (default is 50)
  set hidden        " Allow buffer switching without saving
  set backup        " Backups are nice ...
  set undofile      " So is persistent undo ...
  set undolevels=1000   " Maximum number of changes that can be undone
  set undoreload=10000  " Maximum number lines to save for undo on a buffer reload
  "set smartindent
  set autoread " Automatically update buffers when file changes
  set shiftround
  set visualbell
  set gdefault " Substitute all matches on a line by default
  set noswapfile " Temp files are annoying when editing the same file in multiple instances of Vim... Just save often instead.

  " Restore cursor to file position in previous editing session
  " http://vim.wikia.com/wiki/Restore_cursor_to_file_position_in_previous_editing_session
  function! ResCur()
    if line("'\"") <= line("$")
      normal! g`"
      return 1
    endif
  endfunction

  augroup resCur
    autocmd!
    autocmd BufWinEnter * call ResCur()
  augroup END

" }

" Vim UI {

  set mouse=a           " Automatically enable mouse usage
  set mousehide         " Hide the mouse cursor while typing
  set background=dark       " Assume a dark background
  set tabpagemax=15       " Only show 15 tabs
  set showmode          " Display the current mode
  set cursorline          " Highlight current line
  set backspace=indent,eol,start  " Backspace for dummies
  set linespace=0         " No extra spaces between rows
  set nu              " Line numbers on
  set showmatch         " Show matching brackets/parenthesis
  set incsearch         " Find as you type search
  set hlsearch          " Highlight search terms
  set winminheight=0        " Windows can be 0 line high
  set ignorecase          " Case insensitive search
  set smartcase         " Case sensitive when uc present
  set wildmenu          " Show list instead of just completing
  set wildmode=list:longest,full  " Command <Tab> completion, list matches, then longest common part, then all.
  set whichwrap=b,s,h,l,<,>,[,] " Backspace and cursor keys wrap too
  set scrolljump=5        " Lines to scroll when cursor leaves screen
  set scrolloff=3         " Minimum lines to keep above and below cursor
  set foldenable          " Auto fold code
  set list
  set listchars=tab:›\ ,trail:•,extends:#,nbsp:. " Highlight problematic whitespace

  highlight clear SignColumn  " SignColumn should match background
  highlight clear LineNr      " Current line number row will have same background color in relative mode

  " User patched Powerline fonts
  set guifont=Source\ Code\ Pro\ for\ Powerline:h13,Menlo\ Regular:h15

  " Highlight column 80
  set colorcolumn=80

  " Colorscheme
  let base16colorspace=256  " Access colors present in 256 colorspace
  colorscheme base16-eighties

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
    set statusline=%<%f\           " Filename
    set statusline+=%w%h%m%r         " Options
    set statusline+=%{fugitive#statusline()} " Git Hotness
    set statusline+=\ [%{&ff}/%Y]      " Filetype
    set statusline+=\ [%{getcwd()}]      " Current dir
    set statusline+=%=%-14.(%l,%c%V%)\ %p%%  " Right aligned file nav info
  endif

  if &term == 'xterm' || &term == 'screen'
    set t_Co=256      " Enable 256 colors to stop the CSApprox warning and make xterm vim shine
  endif

" }

" Formatting {

  set nowrap      " Do not wrap long lines
  set autoindent    " Indent at the same level of the previous line
  set shiftwidth=2  " Use indents of 2 spaces
  set expandtab   " Tabs are spaces, not tabs
  set tabstop=2   " An indentation every four columns
  set softtabstop=2 " Let backspace delete indent
  set nojoinspaces  " Prevents inserting two spaces after punctuation on a join (J)
  set splitright    " Puts new vsplit windows to the right of the current
  set splitbelow    " Puts new split windows to the bottom of the current

  " JSON syntax settings
  autocmd FileType json setlocal conceallevel=0 foldmethod=syntax foldlevel=1

  " Automatically check for changed files outside Vim
  augroup changes
    autocmd!
    autocmd BufRead,BufEnter,FocusGained * checktime
  augroup END

  " Enable omni-completion.
  autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
  autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
  autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
  autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
  autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
  autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
  autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc

" }

" Syntax {

  " Vagrantfile {
    augroup vagrant
      autocmd!
      autocmd BufRead,BufNewFile Vagrantfile set filetype=ruby
    augroup END
  " }

  " Handlebars {
    autocmd FileType html.handlebars setlocal foldmethod=indent
  " }

  " Stylus {
    autocmd FileType stylus setlocal foldmethod=indent
  " }

  " PHP {
    autocmd FileType php setlocal shiftwidth=4 tabstop=4 softtabstop=4 expandtab
  " }

" }

" Plugin Config {

  " Startify {
    if isdirectory(expand("~/.nvim/plugged/vim-startify/"))

      " Center the header
      function! s:filter_header(lines) abort
          let longest_line   = max(map(copy(a:lines), 'len(v:val)'))
          let centered_lines = map(copy(a:lines),
              \ 'repeat(" ", (&columns / 2) - (longest_line / 2)) . v:val')
          return centered_lines
      endfunction

      " Center section headings with lines
      function! s:filter_heading(lines) abort
          let longest_line   = max(map(copy(a:lines), 'len(v:val)'))
          let space_chars    = ((&columns / 2) - (longest_line / 2)) - 3
          let centered_lines = map(copy(a:lines),
              \ '"   " . repeat("-", space_chars) . v:val . repeat("-", space_chars) . "   "')
          return centered_lines
      endfunction

      " Header
      let g:startify_custom_header = s:filter_header([
              \ '',
              \ '',
              \ '        _/      _/  _/_/_/_/    _/_/    _/      _/  _/_/_/  _/      _/    ',
              \ '       _/_/    _/  _/        _/    _/  _/      _/    _/    _/_/  _/_/     ',
              \ '      _/  _/  _/  _/_/_/    _/    _/  _/      _/    _/    _/  _/  _/      ',
              \ '     _/    _/_/  _/        _/    _/    _/  _/      _/    _/      _/       ',
              \ '    _/      _/  _/_/_/_/    _/_/        _/      _/_/_/  _/      _/        ',
              \ '',
              \ '',
              \ ])
      let g:startify_custom_footer =
            \ s:filter_header(['', '', ''] + map(split(system('nvim --version | head -n2'), '\n'), '"   ". v:val') + [' ', ' ', ' '])
      let g:startify_relative_path      = 0
      let g:startify_change_to_dir      = 0
      let g:startify_change_to_vcs_root = 1
      let g:startify_list_order = [
            \ s:filter_heading(['  Recent files in current directory  ']),
            \ 'dir',
            \ s:filter_heading(['  Recent files everywhere  ']),
            \ 'files',
            \ s:filter_heading(['  Bookmarks  ']),
            \ 'bookmarks',
            \ s:filter_heading(['  Sessions  ']),
            \ 'sessions',
            \ ]
      let g:startify_skiplist = [
            \ 'plugged/.*/doc',
            \ 'nvim/runtime/doc',
            \ '.git/',
            \ ]
      "let g:startify_bookmarks = ['~/Repos/lmpm']

      " Colors
      highlight StartifySection ctermfg=145
      highlight StartifyBracket ctermfg=240
      highlight StartifyFooter  ctermfg=240
      "highlight StartifyHeader  ctermfg=114
      highlight StartifyNumber  ctermfg=215
      highlight StartifyPath    ctermfg=245
      highlight StartifySlash   ctermfg=240
      highlight StartifySpecial ctermfg=240

      autocmd User Startified setlocal colorcolumn=
    endif
  " }

  " LocalRC {
    if isdirectory(expand("~/.nvim/plugged/vim-localrc/"))
      let g:localrc_filename = '.vimrc.local'
      let g:localrc_filetype = '/^\.vimrc\..*\<%s\>.*\.local$'
    endif
  " }

  " Indent Guides {
    if isdirectory(expand("~/.nvim/plugged/vim-indent-guides/"))
      let g:indent_guides_start_level           = 1
      let g:indent_guides_auto_colors           = 0
      let g:indent_guides_enable_on_vim_startup = 1
      let g:indent_guides_exclude_filetypes = ['help', 'nerdtree', 'startify']
      autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=236
      autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=237
    endif
  " }

  " Airline {
    if isdirectory(expand("~/.nvim/plugged/vim-airline/"))
      let g:airline_exclude_preview                  = 1
      let g:airline_detect_iminsert                  = 1
      let g:airline_powerline_fonts                  = 1
      let g:airline#extensions#tabline#enabled       = 1
      let g:airline#extensions#tabline#show_tabs     = 1
      let g:airline#extensions#tabline#tab_nr_type   = 2 " Show # of splits and tab #
      let g:airline#extensions#tabline#show_tab_type = 1
    endif
  " }

  " Tmuxline {
    if isdirectory(expand("~/.nvim/plugged/tmuxline.vim/"))
      "let g:tmuxline_preset = 'crosshair'
      "let g:tmuxline_theme  = 'airline_insert'
      "let g:airline#extensions#tmuxline#enabled = 0
      let g:tmuxline_preset = {
        \'a'    : ['#S'],
        \'b'    : ['#(whoami)'],
        \'win'  : ['#I', '#W'],
        \'cwin' : ['#I', '#W', '#F'],
        \'x'    : ['#(~/.dotfiles/scripts/now-playing.sh)', '#(~/.dotfiles/scripts/cpu-load.py)', '#(~/.dotfiles/scripts/wifi-signal.sh)', '#(battery -t -p)'],
        \'y'    : ['%a %b %e'],
        \'z'    : ['%l:%M %p'] }
    endif
  " }

  " CtrlSpace {
    if isdirectory(expand("~/.nvim/plugged/vim-ctrlspace/"))
      let g:ctrlspace_save_workspace_on_exit = 1
      let g:ctrlspace_ignored_files = '\v(tmp|temp|node_modules)[\/]'
    endif
  " }

  " YouCompleteMe {
    if isdirectory(expand("~/.nvim/plugged/YouCompleteMe/"))
      let g:ycm_min_num_of_chars_for_completion   = 1
      let g:ycm_complete_in_comments          = 1
      let g:ycm_collect_identifiers_from_tags_files = 1
      let g:ycm_seed_identifiers_with_syntax      = 1
      let g:ycm_cache_omnifunc            = 0
      let g:ycm_key_list_previous_completion      = ['<C-Tab>', '<Up>']
    endif
  " }

  " Syntastic {
    if isdirectory(expand("~/.nvim/plugged/syntastic/"))
      let g:syntastic_mode_map = { 'mode': 'active',
        \ 'active_filetypes': [],
        \ 'passive_filetypes': ['html', 'coffee'] }
    endif
  " }

  " Neomake {
    if isdirectory(expand("~/.nvim/plugged/neomake/"))
      autocmd BufWritePost *.coffee Neomake
    endif
  " }

  " UndoTree {
    if isdirectory(expand("~/.nvim/plugged/undotree/"))
      let g:undotree_SplitWidth  = 35
      let g:undotree_TreeNodeShape = '◉'
    endif
  " }

  " NERDTree {
    if isdirectory(expand("~/.nvim/plugged/nerdtree/"))
      "let NERDTreeShowLineNumbers    = 1
      let NERDTreeShowBookmarks       = 0
      let NERDTreeIgnore              = ['\.py[cd]$', '\~$', '\.swo$', '\.swp$', '\.git', '\.hg', '\.svn', '\.bzr', '\.map$', '.DS_Store']
      let NERDTreeMapOpenVSplit       = 'v'
      let NERDTreeAutoCenterThreshold = 50
      let NERDTreeWinSize             = 35
      let NERDTreeAutoDeleteBuffer    = 1
      let NERDTreeChDirMode           = 0
      let NERDTreeQuitOnOpen          = 1
      let NERDTreeMouseMode           = 2
      let NERDTreeShowHidden          = 1
    endif
  " }

  " AutoClose {
    if isdirectory(expand("~/.nvim/plugged/vim-autoclose/"))
      let g:autoclose_vim_commentmode = 1
    endif
  " }

  " CoffeeScript {
    if isdirectory(expand("~/.nvim/plugged/vim-coffee-script/"))
      let coffee_compile_vert = 1
      let coffee_watch_vert   = 1
      let coffee_run_vert     = 1
      autocmd FileType coffee setlocal foldmethod=indent foldlevel=2
      autocmd FileType coffee autocmd BufWritePre <buffer> call StripTrailingWhitespace()
    endif
  " }

  " Over.vim {
    if isdirectory(expand("~/.nvim/plugged/vim-over/"))
      let g:over#command_line#paste_escape_chars = '/.*$^~'
    endif
  " }

  " CoffeeTags {
    if isdirectory(expand("~/.nvim/plugged/CoffeeTags/"))
      let g:CoffeeAutoTagIncludeVars = 1
    endif
  " }

  " Tagbar {
    if isdirectory(expand("~/.nvim/plugged/tagbar/"))
      let g:tagbar_autoshowtag    = 1  " Open folds if necessary when navigating to a tag
      let g:tagbar_autoclose      = 1  " Focus cursor inside tagbar when opened, and auto close after navigation
      let g:tagbar_show_linenumbers = 2  " Show relative line numbers
      let g:tagbar_foldlevel      = 1  " Custom fold level
    endif
  " }

  " Handlebars {
    if isdirectory(expand("~/.nvim/plugged/vim-mustache-handlebars/"))
      let g:mustache_abbreviations = 1
    endif
  " }

  " Vdebug {
    if isdirectory(expand("~/.nvim/plugged/vdebug/"))
      let g:vdebug_options = { }
      let g:vdebug_options['server']          = ''
      let g:vdebug_options['break_on_open']   = 0
      let g:vdebug_options['continuous_mode'] = 0
    endif
  " }

" }

" Key (re)Mappings {

  " General {

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

    " Terminal split navigation
    if has('nvim')
      tmap <C-j> <C-\><C-n><C-j>
      tmap <C-k> <C-\><C-n><C-k>
      tmap <C-h> <C-\><C-n><C-h>
      tmap <C-l> <C-\><C-n><C-l>
      autocmd WinEnter term://* startinsert
    endif

  " }

  " CoffeeScript {
    if isdirectory(expand("~/.nvim/plugged/vim-coffee-script/"))
      nnoremap <Leader>cw :CoffeeWatch<CR>
    endif
  " }

  " Over.vim {
    if isdirectory(expand("~/.nvim/plugged/vim-over/"))
      nnoremap <Leader>o :OverCommandLine<CR>%s/
      nnoremap <Leader>O :OverCommandLine<CR>%s/<C-r><C-w>/
      vnoremap <Leader>O "zy:OverCommandLine<CR>%s/<C-v>/
    endif
  " }

  " EasyMotion {
    if isdirectory(expand("~/.nvim/plugged/vim-easymotion/"))

      " Use <Leader> as easymotion prefix.
      map <Leader> <Plug>(easymotion-prefix)

      " Search
      nmap s <Plug>(easymotion-s2)
      vmap s <Plug>(easymotion-s2)

      " Same-line navigation
      map <Leader>h <Plug>(easymotion-linebackward)
      map <Leader>l <Plug>(easymotion-lineforward)

    endif
  " }

  " Vimux {
    if isdirectory(expand("~/.nvim/plugged/vimux/"))
      "noremap <Leader>tst :call VimuxSendKeys("C-c") <Bar> call VimuxRunCommand("clear; npm test")<CR>
      "noremap <Leader>stt :call VimuxSendKeys("C-c") <Bar> call VimuxRunCommand("clear; npm start")<CR>
      "noremap <Leader>dbg :call VimuxSendKeys("C-c") <Bar> call VimuxRunCommand("clear; npm run debug")<CR>
      "noremap <Leader>grr :call VimuxSendKeys("C-c") <Bar> call VimuxRunCommand("clear; grunt")<CR>
    endif
  " }

  " NERDTree {
    if isdirectory(expand("~/.nvim/plugged/nerdtree/"))
      map <C-e> :NERDTreeToggle<CR>
    endif
  " }

  " Tabularize {
    if isdirectory(expand("~/.nvim/plugged/tabular/"))
      nmap <Leader>a& :Tabularize /&<CR>
      vmap <Leader>a& :Tabularize /&<CR>
      nmap <Leader>a= :Tabularize /^[^=]*\zs=<CR>
      vmap <Leader>a= :Tabularize /^[^=]*\zs=<CR>
      nmap <Leader>a: :Tabularize /^[^:]*\zs:<CR>
      vmap <Leader>a: :Tabularize /^[^:]*\zs:<CR>
      nmap <Leader>a$ :Tabularize /^[^\$]*\zs\$/l1l0<CR>
      vmap <Leader>a$ :Tabularize /^[^\$]*\zs\$/l1l0<CR>
      nmap <Leader>a, :Tabularize /,<CR>
      vmap <Leader>a, :Tabularize /,<CR>
      nmap <Leader>a,, :Tabularize /,\zs<CR>
      vmap <Leader>a,, :Tabularize /,\zs<CR>
      nmap <Leader>a<Bar> :Tabularize /<Bar><CR>
      vmap <Leader>a<Bar> :Tabularize /<Bar><CR>
    endif
  " }

  " FZF {
    if isdirectory(expand("~/.dotfiles/libs/fzf/"))
      nnoremap <silent> <C-p> :FZF<CR>
      autocmd WinEnter \[FZF\] startinsert
      autocmd TermOpen term://*/fzf* tnoremap <buffer> <C-p> <Esc>
      autocmd TermOpen term://*/fzf* tnoremap <buffer> <C-k> <Up>
      autocmd TermOpen term://*/fzf* tnoremap <buffer> <C-j> <Down>
    endif
  " }

  " Fugitive {
    if isdirectory(expand("~/.nvim/plugged/vim-fugitive/"))
      nnoremap <silent> <leader>gs :Gstatus<CR>
      nnoremap <silent> <leader>gd :Gdiff<CR>
      nnoremap <silent> <leader>gc :Gcommit<CR>
      nnoremap <silent> <leader>gb :Gblame<CR>
      nnoremap <silent> <leader>gl :Glog<CR>
      nnoremap <silent> <leader>gp :Git push<CR>
      nnoremap <silent> <leader>gr :Gread<CR>
      nnoremap <silent> <leader>gw :Gwrite<CR>
      nnoremap <silent> <leader>ge :Gedit<CR>
      " Mnemonic _i_nteractive
      nnoremap <silent> <leader>gi :Git add -p %<CR>
      nnoremap <silent> <leader>gg :SignifyToggle<CR>
    endif
  " }

  " YouCompleteMe {
    if isdirectory(expand("~/.nvim/plugged/YouCompleteMe/"))
      let g:acp_enableAtStartup = 0

      " enable completion from tags
      let g:ycm_collect_identifiers_from_tags_files = 1

      " Enable omni completion.
      autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
      autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
      autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
      autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
      autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
      autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
      autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc

      " Haskell post write lint and check with ghcmod
      " $ `cabal install ghcmod` if missing and ensure
      " ~/.cabal/bin is in your $PATH.
      if !executable("ghcmod")
        autocmd BufWritePost *.hs GhcModCheckAndLintAsync
      endif

      " Disable the neosnippet preview candidate window
      " When enabled, there can be too much visual noise
      " especially when splits are used.
      set completeopt-=preview
    endif
  " }

  " UndoTree {
    if isdirectory(expand("~/.nvim/plugged/undotree/"))
      nnoremap <Leader>u :UndotreeToggle<CR>
      " If undotree is opened, it is likely one wants to interact with it.
      let g:undotree_SetFocusWhenToggle=1
    endif
  " }

  " UtilSnips {
    if isdirectory(expand("~/.nvim/plugged/ultisnips"))
      " remap Ultisnips for compatibility for YCM
      let g:UltiSnipsExpandTrigger       = '<C-s>'
      let g:UltiSnipsJumpForwardTrigger  = '<C-n>'
      let g:UltiSnipsJumpBackwardTrigger = '<C-b>'
      let g:UltiSnipsEditSplit           = 'vertical'
    endif
  " }

  " Misc {

    " Markdown preview via Marked.app
    function! s:setupMarkdownPreview()
      nnoremap <leader>md :silent !open -a Marked.app '%:p'<cr>
    endfunction
    autocmd BufRead,BufNewFile *.{md,markdown,mdown,mkd,mkdn} call s:setupMarkdownPreview()

    " Find merge conflict markers
    map <leader>fc /\v^[<\|=>]{7}( .*\|$)<CR>

  " }

" }

" Functions {

  " Initialize directories {
    function! InitializeDirectories()
      let parent = $HOME
      let prefix = 'nvim'
      let dir_list = {
        \ 'backup': 'backupdir',
        \ 'views': 'viewdir',
        \ 'swap': 'directory' }

      if has('persistent_undo')
        let dir_list['undo'] = 'undodir'
      endif

      let common_dir = parent . '/.' . prefix

      for [dirname, settingname] in items(dir_list)
        let directory = common_dir . dirname . '//'
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
  " }

  " Strip whitespace {
    function! StripTrailingWhitespace()
      " Preparation: save last search, and cursor position.
      let _s=@/
      let l = line(".")
      let c = col(".")
      " do the business:
      %s/\s\+$//e
      " clean up: restore previous search history, and cursor position
      let @/=_s
      call cursor(l, c)
    endfunction

    autocmd FileType c,coffee,cpp,java,go,php,javascript,puppet,python,rust,twig,xml,yml,perl,sql autocmd BufWritePre <buffer> call StripTrailingWhitespace()
  " }

" }
