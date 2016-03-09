" Modeline and Notes {{
"   vim: set sw=2 ts=2 sts=2 et tw=80 foldmarker={{,}} foldmethod=marker foldlevel=0 spell:
" }}

" Config Directories {{
  let b:config_directory = '~/.config/nvim'
  let b:plugin_directory = b:config_directory . '/plugged'
" }}

" Functions {{

  " Update NeoVim remote plugins {{
    function! UpdateRPlugin(info)
      if has('nvim')
        silent UpdateRemotePlugins
        echomsg 'rplugin updated: ' . a:info['name'] . ', restart vim for changes'
      endif
    endfunction
  " }}

  " Initialize directories {{
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
  " }}

  " Strip whitespace {{
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
  " }}

  " Open Markdown file in Marked.app {{
    function! s:setupMarkdownPreview()
      nnoremap <leader>md :silent !open -a Marked\ 2.app '%:p'<cr>
    endfunction
    autocmd BufRead,BufNewFile *.{md,markdown,mdown,mkd,mkdn} call s:setupMarkdownPreview()
  " }}

" }}

" Plugins {{

  call plug#begin(b:plugin_directory)

  " Theme
  Plug 'chriskempson/base16-vim'

  " UI
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'majutsushi/tagbar'
  Plug 'mbbill/undotree'
  Plug 'nathanaelkane/vim-indent-guides'
  Plug 'scrooloose/nerdtree'
  Plug 'https://gist.github.com/17057040c94b6b9786a4.git', { 'dir': b:config_directory . '/nerdtree_plugin/coffee_filter.vim' }
  Plug 'vim-scripts/restore_view.vim'
  Plug 'ryanoasis/vim-devicons'
  Plug 'tmux-plugins/vim-tmux-focus-events'
  Plug 'junegunn/vim-peekaboo'

  " Search & Navigation
  Plug 'bronson/vim-visual-star-search'
  Plug 'kshenoy/vim-signature'
  Plug 'Lokaltog/vim-easymotion'
  "Plug 'lukaszkorecki/CoffeeTags' " Currently throws annoying Ruby error...
  Plug 'osyo-manga/vim-over'
  Plug 'haya14busa/incsearch.vim'
  Plug 'haya14busa/incsearch-easymotion.vim'
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all --no-update-rc' }
  "Plug 'ctrlpvim/ctrlp.vim'
  "Plug 'tacahiroy/ctrlp-funky'
  "Plug 'JazzCore/ctrlp-cmatcher', { 'do': 'CFLAGS=-Qunused-arguments CPPFLAGS=-Qunused-arguments ./install.sh' }

  " Autocomplete
  "Plug 'marijnh/tern_for_vim'
  "Plug 'SirVer/ultisnips'
  "Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
  Plug 'Shougo/neosnippet'
  Plug 'Shougo/neosnippet-snippets'
  Plug 'adambiggs/vim-snippets'
  Plug 'Shougo/context_filetype.vim'
  Plug 'Shougo/deoplete.nvim', { 'do': function('UpdateRPlugin') }

  " Coding
  Plug 'adambiggs/vim-autoclose'
  Plug 'junegunn/vim-easy-align'
  Plug 'scrooloose/nerdcommenter'
  Plug 'tpope/vim-repeat'
  Plug 'vim-scripts/visualrepeat'
  Plug 'tpope/vim-surround'

  " Source Control
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-rhubarb'
  Plug 'airblade/vim-gitgutter'

  " Syntax
  Plug 'ap/vim-css-color', { 'for': ['css', 'stylus', 'sass'] }
  Plug 'beyondwords/vim-twig', { 'for': 'twig' }
  Plug 'briancollins/vim-jst', { 'for': 'jst' }
  Plug 'cakebaker/scss-syntax.vim', { 'for': 'scss' }
  Plug 'ekalinin/Dockerfile.vim', { 'for': 'dockerfile' }
  Plug 'elzr/vim-json', { 'for': 'json' }
  Plug 'fatih/vim-go', { 'for': 'go' }
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
  Plug 'airblade/vim-rooter'
  Plug 'joonty/vdebug', { 'branch': 'master' }
  "Plug 'benmills/vimux'
  Plug 'christoomey/vim-tmux-navigator'
  Plug 'ciaranm/detectindent'
  Plug 'edkolev/tmuxline.vim'
  Plug 'thinca/vim-localrc'
  Plug 'tpope/vim-obsession'
  Plug 'dhruvasagar/vim-prosession'

  call plug#end()

" }}

" General {{

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
  set autoread
  set shiftround
  set visualbell
  set gdefault          " Substitute all matches on a line by default
  set noswapfile        " Temp files are annoying when editing the same file in multiple instances of Vim... Just save often instead.
  set viewoptions=cursor,folds
  set foldopen-=block

" }}

" Vim UI {{

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
  let base16colorspace=256  " Access colors present in 256 colorspace
  try
    colorscheme base16-eighties
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

  if &term == 'xterm' || &term == 'screen'
    set t_Co=256      " Enable 256 colors to stop the CSApprox warning and make xterm vim shine
  endif

" }}

" Formatting {{

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

" }}

" Syntax {{

  " Vagrantfile {{
    augroup vagrant
      autocmd!
      autocmd BufRead,BufNewFile Vagrantfile set filetype=ruby
    augroup END
  " }}

  " Handlebars {{
    autocmd FileType html.handlebars setlocal foldmethod=indent
  " }}

  " Stylus {{
    autocmd FileType stylus setlocal foldmethod=indent
  " }}

  " PHP {{
    autocmd FileType php setlocal shiftwidth=4 tabstop=4 softtabstop=4 expandtab
  " }}

" }}

" Keymaps {{

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

  " Find merge conflict markers
  map <leader>fc /\v^[<\|=>]{7}( .*\|$)<CR>

" }}

" Plugin Config {{

  " Nerd Icons {{
    if isdirectory(expand(b:plugin_directory . '/vim-devicons'))
      let g:WebDevIconsNerdTreeAfterGlyphPadding  = ' '
      let g:WebDevIconsUnicodeDecorateFolderNodes = 1

      " Fix dots after icons in NERDTree
      " https://github.com/ryanoasis/vim-devicons/issues/110#issue-103801335
      autocmd FileType nerdtree setlocal nolist
    endif
  " }}

  " LocalRC {{
    if isdirectory(expand(b:plugin_directory . '/vim-localrc'))
      let g:localrc_filename = '.vimrc.local'
      let g:localrc_filetype = '/^\.vimrc\..*\<%s\>.*\.local$'
    endif
  " }}

  " ProSession {{
  if isdirectory(expand(b:plugin_directory . '/vim-prosession'))
    let g:prosession_dir             = b:config_directory . "/session/"
    let g:prosession_per_branch      = 1
    let g:prosession_default_session = 0
  endif
  " }}

  " Indent Guides {{
    if isdirectory(expand(b:plugin_directory . '/vim-indent-guides'))
      let g:indent_guides_start_level           = 1
      let g:indent_guides_auto_colors           = 0
      let g:indent_guides_enable_on_vim_startup = 1
      let g:indent_guides_exclude_filetypes     = ['help', 'nerdtree', 'startify']
      autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=236
      autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=237
    endif
  " }}

  " Airline {{
    if isdirectory(expand(b:plugin_directory . '/vim-airline'))
      let g:airline_exclude_preview                  = 1
      let g:airline_detect_iminsert                  = 1
      let g:airline_detect_crypt                     = 0 " https://github.com/vim-airline/vim-airline/issues/792
      let g:airline_powerline_fonts                  = 1
      let g:airline#extensions#tabline#enabled       = 1
      let g:airline#extensions#tabline#show_tabs     = 1
      let g:airline#extensions#tabline#tab_nr_type   = 2 " Show # of splits and tab #
      let g:airline#extensions#tabline#show_tab_type = 1

      " Custom symbols
      if !exists('g:airline_symbols')
        let g:airline_symbols = { }
      endif
      let g:airline_symbols.branch   = ''
      let g:airline_symbols.readonly = ''
    endif
  " }}

  " Tmuxline {{
    if isdirectory(expand(b:plugin_directory . '/tmuxline.vim'))
      let g:airline#extensions#tmuxline#enabled       = 0
      let g:airline#extensions#tmuxline#snapshot_file = "~/.dotfiles/tmuxline.conf"
      let g:tmuxline_preset = {
        \'a'    : ['   %a %b %e'],
        \'b'    : ['  %l:%M %p'],
        \'c'    : ['   #S #{prefix_highlight}'],
        \'win'  : [' #I #W'],
        \'cwin' : [' #I #W'],
        \'x'    : ['#(~/.dotfiles/scripts/now-playing.sh) '],
        \'y'    : [' #{cpu_percentage} #[fg=colour244]  #[fg=colour7] #(~/.dotfiles/scripts/battery-icon.sh) '],
        \'z'    : ['#(~/.dotfiles/scripts/wifi-signal.sh) '] }
    endif
  " }}

  " YouCompleteMe {{
    if isdirectory(expand(b:plugin_directory . '/YouCompleteMe'))

      " Config {{
        let g:ycm_min_num_of_chars_for_completion               = 1
        let g:ycm_complete_in_comments                          = 1
        let g:ycm_cache_omnifunc                                = 0
        let g:ycm_collect_identifiers_from_tags_files           = 1 " enable completion from tags
        let g:ycm_collect_identifiers_from_comments_and_strings = 1
        let g:ycm_seed_identifiers_with_syntax                  = 1
        let g:ycm_add_preview_to_completeopt                    = 1
        let g:ycm_autoclose_preview_window_after_completion     = 1
        let g:ycm_disable_for_files_larger_than_kb              = 5000

        " Enable omni completion.
        autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
        autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
        autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
        autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
        autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
        autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
        autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc
      " }}

      " Mappings {{
        let g:ycm_key_list_previous_completion = ['<C-Tab>', '<Up>']
      " }}

    endif
  " }}

  " Deoplete {{
    if isdirectory(expand(b:plugin_directory . '/deoplete.nvim'))

      " Config {{
        let g:deoplete#enable_at_startup = 1
      " }}

      " Mappings {{
        inoremap <silent><expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
        inoremap <silent><expr><s-tab> pumvisible() ? "\<c-p>" : "\<s-tab>"
      " }}

    endif
  " }}

  " Neosnippet {{
    if isdirectory(expand(b:plugin_directory . '/neosnippet'))

      " Config {{
        let g:neosnippet#snippets_directory = b:plugin_directory . '/vim-snippets/snippets'
      " }}

      " Mappings {{
        imap <C-s> <Plug>(neosnippet_expand_or_jump)
        smap <C-s> <Plug>(neosnippet_expand_or_jump)
        xmap <C-s> <Plug>(neosnippet_expand_target)
      " }}

    endif
  " }}

  " Syntastic {{
    if isdirectory(expand(b:plugin_directory . '/syntastic'))
      let g:syntastic_mode_map = { 'mode': 'active',
        \ 'active_filetypes': [],
        \ 'passive_filetypes': ['html', 'coffee'] }
    endif
  " }}

  " Neomake {{
    if isdirectory(expand(b:plugin_directory . '/neomake'))
      autocmd BufWritePost *.coffee Neomake

      " Generate tags via CoffeeTags
      let g:neomake_coffee_coffeetags_maker = {
        \ 'args': ['--include-vars', '--append', '-f./tags']
        \ }

      let g:neomake_coffee_enabled_makers = ['coffeelint', 'coffeetags']
    endif
  " }}

  " UndoTree {{
    if isdirectory(expand(b:plugin_directory . '/undotree'))

      " Config {{
        let g:undotree_SplitWidth         = 35
        let g:undotree_TreeNodeShape      = '◉'
        let g:undotree_SetFocusWhenToggle = 1
      " }}

      " Mappings {{
        nnoremap <Leader>u :UndotreeToggle<CR>
      " }}

    endif
  " }}

  " NERDTree {{
    if isdirectory(expand(b:plugin_directory . '/nerdtree'))

      " Config {{
        let NERDTreeAutoCenterThreshold = 50
        let NERDTreeAutoDeleteBuffer    = 1
        let NERDTreeDirArrows           = 1
        let NERDTreeIgnore              = ['\.py[cd]$', '\~$', '\.swo$', '\.swp$', '\.git', '\.hg', '\.svn', '\.bzr', '\.map$', '.DS_Store']
        let NERDTreeMapOpenVSplit       = 'v'
        let NERDTreeMinimalUI           = 1
        let NERDTreeMouseMode           = 2
        let NERDTreeQuitOnOpen          = 1
        let NERDTreeShowBookmarks       = 1
        let NERDTreeShowHidden          = 1
        let NERDTreeSortHiddenFirst     = 1
        let NERDTreeWinSize             = 35

        " File highlighting
        function! NERDTreeHighlightFile(extension, fg, bg)
          exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg
          exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
        endfunction

        " Repo-specific bookmarks
        if isdirectory(expand(".git"))
          let g:NERDTreeBookmarksFile = '.git/.nerdtree-bookmarks'
        endif

      " }}

      " Mappings {{
        map <C-e> :NERDTreeToggle<CR>
      " }}

    endif
  " }}

  " FZF {{
    if isdirectory(expand("~/.fzf/"))

      " Config {{
        " Select buffers with FZF
        " @see https://github.com/junegunn/fzf/wiki/Examples-(vim)#select-buffer
        function! s:buflist()
          redir => ls
          silent ls
          redir END
          return split(ls, '\n')
        endfunction

        function! s:bufopen(lines)
          if len(a:lines) < 2 | return | endif

          let cmd = get({'ctrl-x': 'sbuffer',
            \ 'ctrl-v': 'vert sbuffer',
            \ 'ctrl-t': 'tab sb',
            \ 'ctrl-d': 'bd'}, a:lines[0], 'buffer')
          let list = a:lines[1:]

          let first = list[0]
          execute cmd matchstr(first, '^[ 0-9]*')
        endfunction

        nnoremap <silent> <C-@> :call fzf#run({
          \   'source':  reverse(<sid>buflist()),
          \   'sink*':    function('<sid>bufopen'),
          \   'options': '+m --ansi --expect=ctrl-t,ctrl-v,ctrl-x,ctrl-d',
          \   'down':    len(<sid>buflist()) + 2
          \ })<CR>


        " Narrow Ag results within Vim
        " @see https://github.com/junegunn/fzf/wiki/Examples-(vim)#narrow-ag-results-within-vim
        function! s:ag_to_qf(line)
          let parts = split(a:line, ':')
          return {'filename': parts[0], 'lnum': parts[1], 'col': parts[2],
            \ 'text': join(parts[3:], ':')}
        endfunction

        function! s:ag_handler(lines)
          if len(a:lines) < 2 | return | endif

          let cmd = get({'ctrl-x': 'split',
            \ 'ctrl-v': 'vertical split',
            \ 'ctrl-t': 'tabe'}, a:lines[0], 'e')
          let list = map(a:lines[1:], 's:ag_to_qf(v:val)')

          let first = list[0]
          execute cmd escape(first.filename, ' %#\')
          execute first.lnum
          execute 'normal!' first.col.'|zz'

          if len(list) > 1
            call setqflist(list)
            copen
            wincmd p
          endif
        endfunction

        command! -nargs=* Ag call fzf#run({
        \   'source':  printf('ag --nogroup --column --color %s', <q-args>),
        \   'sink*':    function('<sid>ag_handler'),
        \   'options': '--ansi --expect=ctrl-t,ctrl-v,ctrl-x --delimiter : --nth 4.. '.
        \              '--multi --bind ctrl-a:select-all,ctrl-d:deselect-all '.
        \              '--color hl:68,hl+:110',
        \   'down':    '50%'
        \ })
      " }}

      " Mappings {{
        nnoremap <silent> <C-p> :FZF<CR>
        autocmd WinEnter \[FZF\] startinsert
        autocmd TermOpen term://*/fzf* tnoremap <buffer> <C-p> <Esc>
        autocmd TermOpen term://*/fzf* tnoremap <buffer> <C-k> <Up>
        autocmd TermOpen term://*/fzf* tnoremap <buffer> <C-j> <Down>
      " }}

    endif
  " }}

  " CtrlP {{
    if isdirectory(expand(b:plugin_directory . '/ctrlp.vim'))

      " Config {{
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
      " }}

      " Mappings {{
        nnoremap <C-@> :CtrlPBuffer<CR>
      " }}

    endif
  " }}

  " AutoClose {{
    if isdirectory(expand(b:plugin_directory . '/vim-autoclose'))
      let g:autoclose_vim_commentmode = 1
    endif
  " }}

  " CoffeeScript {{
    if isdirectory(expand(b:plugin_directory . '/vim-coffee-script'))

      " Config {{
        let coffee_compile_vert = 1
        let coffee_watch_vert   = 1
        let coffee_run_vert     = 1
        autocmd FileType coffee setlocal foldmethod=indent foldlevel=2
        autocmd FileType coffee autocmd BufWritePre <buffer> call StripTrailingWhitespace()
      " }}

      " Mappings {{
        nnoremap <Leader>cw :CoffeeWatch<CR>
      " }}

    endif
  " }}

  " Over.vim {{
    if isdirectory(expand(b:plugin_directory . '/vim-over'))

      " Config {{
        let g:over#command_line#paste_escape_chars = '/.*$^~'
      " }}

      " Mappings {{
        nnoremap <Leader>o :OverCommandLine<CR>%s/
        nnoremap <Leader>O :OverCommandLine<CR>%s/<C-r><C-w>/
        vnoremap <Leader>O "zy:OverCommandLine<CR>%s/<C-v>/
      " }}

    endif
  " }}

  " CoffeeTags {{
    if isdirectory(expand(b:plugin_directory . '/CoffeeTags'))
      let g:CoffeeAutoTagIncludeVars = 1
    endif
  " }}

  " Tagbar {{
    if isdirectory(expand(b:plugin_directory . '/tagbar'))

      " Config {{
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
      " }}

      " Mappings {{
        nnoremap <Leader><Leader>t :Tagbar<CR>
      " }}

    endif
  " }}

  " EasyMotion {{
    if isdirectory(expand(b:plugin_directory . '/vim-easymotion'))

      " Config {{

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

        noremap <silent><expr> /  incsearch#go(<SID>incsearch_config())
        noremap <silent><expr> ?  incsearch#go(<SID>incsearch_config({'command': '?'}))
        noremap <silent><expr> g/ incsearch#go(<SID>incsearch_config({'is_stay': 1}))

      " }}

      " Mappings {{

        " Use <Leader> as easymotion prefix.
        map <Leader> <Plug>(easymotion-prefix)

        " Over window motions
        nmap <Leader>f <Plug>(easymotion-overwin-f2)
        "nmap <Leader>w <Plug>(easymotion-overwin-w)

        " Search
        nmap s <Plug>(easymotion-sn)
        vmap s <Plug>(easymotion-sn)

        " Same-line navigation
        map <Leader>h <Plug>(easymotion-linebackward)
        map <Leader>l <Plug>(easymotion-lineforward)

      " }}

    endif
  " }}

  " Handlebars {{
    if isdirectory(expand(b:plugin_directory . '/vim-mustache-handlebars'))
      let g:mustache_abbreviations = 1
    endif
  " }}

  " Vdebug {{
    if isdirectory(expand(b:plugin_directory . '/vdebug'))
      let g:vdebug_options                       = { }
      let g:vdebug_options['server']             = ''
      let g:vdebug_options['break_on_open']      = 0
      let g:vdebug_options['continuous_mode']    = 1
      let g:vdebug_options['watch_window_style'] = 'compact'
    endif
  " }}

  " GitGutter {{
    if isdirectory(expand(b:plugin_directory . '/vim-gitgutter'))
      let g:gitgutter_max_signs = 10000
      let g:gitgutter_map_keys  = 0
    endif
  " }}

  " EasyAlign {{
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
  " }}

  " Fugitive {{
    if isdirectory(expand(b:plugin_directory . '/vim-fugitive'))
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
  " }}

  " UtilSnips {{
    if isdirectory(expand(b:plugin_directory . '/ultisnips'))

      " Config {{
        let g:UltiSnipsEditSplit = 'vertical'
      " }}

      " Mappings {{
        " Change default UltiSnips mappings for compatibility with YCM
        let g:UltiSnipsExpandTrigger       = '<C-s>'
        let g:UltiSnipsJumpForwardTrigger  = '<C-s>'
        let g:UltiSnipsJumpBackwardTrigger = '<C-b>'
      " }}

    endif
  " }}

" }}
