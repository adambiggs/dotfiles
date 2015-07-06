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
  Plug 'nathanaelkane/vim-indent-guides'
  Plug 'scrooloose/nerdtree'
  Plug 'https://gist.github.com/17057040c94b6b9786a4.git', { 'dir': '~/.nvim/nerdtree_plugin/coffee_filter.vim' }
  Plug 'vim-scripts/restore_view.vim'
  Plug 'ryanoasis/vim-webdevicons'
  "Plug 'tmux-plugins/vim-tmux-focus-events'
  Plug 'junegunn/vim-peekaboo'

  " Search & Navigation
  Plug 'bronson/vim-visual-star-search'
  Plug 'kshenoy/vim-signature'
  Plug 'Lokaltog/vim-easymotion'
  "Plug 'lukaszkorecki/CoffeeTags' " Currently throws annoying Ruby error...
  Plug 'osyo-manga/vim-over'
  Plug 'haya14busa/incsearch.vim'
  Plug 'haya14busa/incsearch-easymotion.vim'
  "Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': 'yes \| ./install' }
  Plug 'ctrlpvim/ctrlp.vim' " FZF currently broken in NeoVim :(
  Plug 'JazzCore/ctrlp-cmatcher', { 'do': 'CFLAGS=-Qunused-arguments CPPFLAGS=-Qunused-arguments ./install.sh' }
  Plug 'Numkil/ag.nvim'

  " Autocomplete
  "Plug 'marijnh/tern_for_vim'
  Plug 'SirVer/ultisnips'
  Plug 'honza/vim-snippets'
  Plug 'Valloric/YouCompleteMe', { 'do': './install.sh' }

  " Coding
  Plug 'adambiggs/vim-autoclose'
  Plug 'junegunn/vim-easy-align'
  Plug 'scrooloose/nerdcommenter'
  Plug 'tpope/vim-repeat'
  Plug 'vim-scripts/visualrepeat'
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
  Plug 'StanAngeloff/php.vim', { 'for': 'php' }
  Plug 'tmux-plugins/vim-tmux', { 'for': 'tmux' }
  Plug 'wavded/vim-stylus', { 'for': 'stylus' }

  " Building
  Plug 'benekastah/neomake'
  "Plug 'scrooloose/syntastic' " Hopefully can be replaced with neomake

  " Workflow
  Plug 'adambiggs/vdebug', { 'branch': 'ordered-path-maps' }
  Plug 'benmills/vimux'
  Plug 'christoomey/vim-tmux-navigator'
  Plug 'ciaranm/detectindent'
  Plug 'edkolev/tmuxline.vim'
  Plug 'thinca/vim-localrc'
  Plug 'tpope/vim-obsession'
  Plug 'dhruvasagar/vim-prosession'

  call plug#end()

" }

" General {

  scriptencoding utf-8
  set shell=/bin/zsh    " Use zsh as shell
  set clipboard=unnamed " Use * register for copy-paste
  set history=1000      " Store a ton of history (default is 50)
  set hidden            " Allow buffer switching without saving
  set backup            " Backups are nice ...
  set undofile          " So is persistent undo ...
  set undolevels=1000   " Maximum number of changes that can be undone
  set undoreload=10000  " Maximum number lines to save for undo on a buffer reload
  set updatetime=750
  "set smartindent
  set shiftround
  set visualbell
  set gdefault          " Substitute all matches on a line by default
  set noswapfile        " Temp files are annoying when editing the same file in multiple instances of Vim... Just save often instead.
  set viewoptions=cursor,folds

" }

" Vim UI {

  set mousehide                 " Hide the mouse cursor while typing
  set background=dark           " Assume a dark background
  set showmode                  " Display the current mode
  set cursorline                " Highlight current line
  set linespace=0               " No extra spaces between rows
  set nu                        " Line numbers on
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

  highlight clear SignColumn    " SignColumn should match background
  highlight clear LineNr        " Current line number row will have same background color in relative mode

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
    set statusline=%<%f\                     " Filename
    set statusline+=%w%h%m%r                 " Options
    set statusline+=%{fugitive#statusline()} " Git Hotness
    set statusline+=\ [%{&ff}/%Y]            " Filetype
    set statusline+=\ [%{getcwd()}]          " Current dir
    set statusline+=%=%-14.(%l,%c%V%)\ %p%%  " Right aligned file nav info
  endif

  if &term == 'xterm' || &term == 'screen'
    set t_Co=256      " Enable 256 colors to stop the CSApprox warning and make xterm vim shine
  endif

" }

" Formatting {

  set nowrap        " Do not wrap long lines
  set shiftwidth=2  " Use indents of 2 spaces
  set expandtab     " Tabs are spaces, not tabs
  set tabstop=2     " An indentation every four columns
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

  " WebDevIcons {
    if isdirectory(expand("~/.nvim/plugged/vim-webdevicons/"))
      let g:WebDevIconsNerdTreeAfterGlyphPadding  = ' '
      let g:WebDevIconsUnicodeDecorateFolderNodes = 1
    endif
  " }

  " LocalRC {
    if isdirectory(expand("~/.nvim/plugged/vim-localrc/"))
      let g:localrc_filename = '.vimrc.local'
      let g:localrc_filetype = '/^\.vimrc\..*\<%s\>.*\.local$'
    endif
  " }

  " ProSession {
  if isdirectory(expand("~/.nvim/plugged/vim-prosession/"))
    let g:prosession_dir             = "~/.nvim/session/"
    let g:prosession_per_branch      = 1
    let g:prosession_default_session = 0
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
      let g:airline_detect_crypt                     = 0 " https://github.com/bling/vim-airline/issues/792
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

      " CoffeeTags maker
      let g:neomake_coffee_coffeetags_maker = {
        \ 'args': ['--include-vars', '--append', '-f./tags']
        \ }
      let g:neomake_coffee_enabled_makers = ['coffeelint', 'coffeetags']
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

      " NERDTress File highlighting
      function! NERDTreeHighlightFile(extension, fg, bg)
        exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg
        exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
      endfunction
    endif
  " }

  " FZF {
    if isdirectory(expand("~/.fzf/"))

      " Select buffers with FZF
      function! s:buflist()
        redir => ls
        silent ls
        redir END
        return split(ls, '\n')
      endfunction

      function! s:bufopen(e)
        execute 'buffer' matchstr(a:e, '^[ 0-9]*')
      endfunction

      nnoremap <silent> <C-@> :call fzf#run({
      \  'source':  reverse(<sid>buflist()),
      \  'sink':    function('<sid>bufopen'),
      \  'options': '+m',
      \  'down':    len(<sid>buflist()) + 2
      \})<CR>

    endif
  " }

  " CtrlP {
    if isdirectory(expand("~/.nvim/plugged/ctrlp.vim/"))
      let g:ctrlp_user_command = 'ag %s
            \ --ignore-case
            \ --hidden
            \ --files-with-matches
            \ --nocolor
            \ --nogroup
            \ --ignore .git
            \ --ignore .DS_Store
            \ -g ""'
      let g:ctrlp_match_func  = { 'match' : 'matcher#cmatch' } " User cmatcher
      let g:ctrlp_max_files   = 0
      let g:ctrlp_lazy_update = 10
      let g:ctrlp_extensions  = ['tag']
    endif
  " }

  " Ag {
    if isdirectory(expand("~/.nvim/plugged/ag.nvim"))
      let g:ag_highlight = 1
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
      let g:vdebug_options['continuous_mode'] = 1
    endif
  " }

  " GitGutter {
    if isdirectory(expand("~/.nvim/plugged/vim-gitgutter/"))
      let g:gitgutter_max_signs = 10000
      let g:gitgutter_map_keys  = 0
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

  " Incsearch.vim {
    if isdirectory(expand("~/.nvim/plugged/incsearch.vim/"))
      map / <Plug>(incsearch-forward)
      map ? <Plug>(incsearch-backward)
    endif
  " }

  " Incsearch-EasyMotion.vim {
    if isdirectory(expand("~/.nvim/plugged/incsearch-easymotion.vim/"))
      map <Leader>/ <Plug>(incsearch-easymotion-/)
      map <Leader>? <Plug>(incsearch-easymotion-?)
    endif
  " }

  " Tagbar {
    if isdirectory(expand("~/.nvim/plugged/tagbar/"))
      nnoremap <Leader><Leader>t :Tagbar<CR>
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

  " EasyAlign {
    if isdirectory(expand("~/.nvim/plugged/vim-easy-align/"))
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
  " }

  " FZF {
    if isdirectory(expand("~/.fzf/"))
      nnoremap <silent> <C-p> :FZF<CR>
      autocmd WinEnter \[FZF\] startinsert
      autocmd TermOpen term://*/fzf* tnoremap <buffer> <C-p> <Esc>
      autocmd TermOpen term://*/fzf* tnoremap <buffer> <C-k> <Up>
      autocmd TermOpen term://*/fzf* tnoremap <buffer> <C-j> <Down>
    endif
  " }

  " CtrlP {
    if isdirectory(expand("~/.nvim/plugged/ctrlp.vim/"))
      nnoremap <C-@> :CtrlPBuffer<CR>
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
      nnoremap <leader>md :silent !open -a Marked\ 2.app '%:p'<cr>
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
