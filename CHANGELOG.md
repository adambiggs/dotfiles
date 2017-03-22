<a name="11.2.0"></a>
# [11.2.0](https://github.com/adambiggs/dotfiles/compare/v11.1.0...v11.2.0) (2017-03-22)


### Features

* **vim:** EasyMotion `j`/`k` motions go to first character of line ([9a3074a](https://github.com/adambiggs/dotfiles/commit/9a3074a))
* **vim:** enable folds for `*.vue` files ([5b101e1](https://github.com/adambiggs/dotfiles/commit/5b101e1))
* **vim:** remove unused `neoman` plugin ([24427d3](https://github.com/adambiggs/dotfiles/commit/24427d3))
* rounded corners ⚫️ ([e56a0b9](https://github.com/adambiggs/dotfiles/commit/e56a0b9))



<a name="11.1.0"></a>
# [11.1.0](https://github.com/adambiggs/dotfiles/compare/v11.0.0...v11.1.0) (2017-03-06)


### Bug Fixes

* **tmux:** zsh plugins not working in Tmux ([2cceb33](https://github.com/adambiggs/dotfiles/commit/2cceb33))
* **zsh:** NVM wasn't getting sourced correctly ([06a63e7](https://github.com/adambiggs/dotfiles/commit/06a63e7))


### Features

* **cli/update:** update Vim plugins ([4141ceb](https://github.com/adambiggs/dotfiles/commit/4141ceb))
* **vim:** enable JSON syntax highlighting for relevant config files ([9811afc](https://github.com/adambiggs/dotfiles/commit/9811afc))
* **vim:** switch from Deoplete to NCM ([e6b8ff3](https://github.com/adambiggs/dotfiles/commit/e6b8ff3))
* **vim:** uninstall `tagbar` plugin that I wasn't using ([fffc036](https://github.com/adambiggs/dotfiles/commit/fffc036))
* **zsh:** remove unused `homebrew` and `node` plugins ([cbce151](https://github.com/adambiggs/dotfiles/commit/cbce151))



<a name="11.0.0"></a>
# [11.0.0](https://github.com/adambiggs/dotfiles/compare/v10.1.1...v11.0.0) (2017-01-24)


### Bug Fixes

* **iterm:** emojis causing rendering issues ([5252ce6](https://github.com/adambiggs/dotfiles/commit/5252ce6))
* **tmux:** tmux clipboard still not syncing with system clipboard ([fc89cc4](https://github.com/adambiggs/dotfiles/commit/fc89cc4))
* **vim:** FZF buffer browsing keymap broken in OSX Sierra ([0724990](https://github.com/adambiggs/dotfiles/commit/0724990))


### Features

* **vim:** install `vimagit` plugin ([13e8c19](https://github.com/adambiggs/dotfiles/commit/13e8c19))
* install nerd-fonts via `caskroom-fonts` and remove Git submodule ([d87a561](https://github.com/adambiggs/dotfiles/commit/d87a561))
* install NVM via Homebrew instead of git submodule ([4d618b5](https://github.com/adambiggs/dotfiles/commit/4d618b5))
* move install/update scripts to `cli/` directory and update readme ([417252b](https://github.com/adambiggs/dotfiles/commit/417252b))
* replaced Karabiner with BetterTouchTool ([f01b425](https://github.com/adambiggs/dotfiles/commit/f01b425))
* switch to Homebrew Ruby ([0d5d610](https://github.com/adambiggs/dotfiles/commit/0d5d610))



<a name="10.1.1"></a>
## [10.1.1](https://github.com/adambiggs/dotfiles/compare/v10.1.0...v10.1.1) (2017-01-03)


### Bug Fixes

* **install:** changing default shell to ZSH doesn't work ([aed5c2c](https://github.com/adambiggs/dotfiles/commit/aed5c2c))
* **install:** deprecation warnings when installing PIP packages ([b0cb73a](https://github.com/adambiggs/dotfiles/commit/b0cb73a))
* **install:** duplicate PIP "already installed" messages are confusing ([096cb63](https://github.com/adambiggs/dotfiles/commit/096cb63))
* **install:** installation of homebrew PHP fails ([e55d684](https://github.com/adambiggs/dotfiles/commit/e55d684))


### Features

* **git:** use SourceTree for diffs ([a27ce58](https://github.com/adambiggs/dotfiles/commit/a27ce58))
* **vim:** enable Neomake for all buffer types ([6e29ecf](https://github.com/adambiggs/dotfiles/commit/6e29ecf))



<a name="10.1.0"></a>
# [10.1.0](https://github.com/adambiggs/dotfiles/compare/v10.0.1...v10.1.0) (2016-12-22)


### Bug Fixes

* **tmux:** navigating between vim panes not working in Tmux ([64c1758](https://github.com/adambiggs/dotfiles/commit/64c1758))
* **update:** `$ zplug clean` command not working with latest version of `zplug` ([01335bf](https://github.com/adambiggs/dotfiles/commit/01335bf))
* **zsh:** Yarn global binary path doesn't use NVM ([35ae680](https://github.com/adambiggs/dotfiles/commit/35ae680))


### Features

* **vim:** add `posva/vim-vue` plugin ([5495c8d](https://github.com/adambiggs/dotfiles/commit/5495c8d))
* **zsh:** add `yarn` completions ([34ab5f0](https://github.com/adambiggs/dotfiles/commit/34ab5f0))
* **zsh:** export new `NPM_PATH` environment variable ([e774999](https://github.com/adambiggs/dotfiles/commit/e774999))
* **zsh:** manage AWS completions with `zplug` ([af89907](https://github.com/adambiggs/dotfiles/commit/af89907))



<a name="10.0.1"></a>
## [10.0.1](https://github.com/adambiggs/dotfiles/compare/v10.0.0...v10.0.1) (2016-12-09)


### Features

* **vim:** enable JavaScript syntax code folding ([705bdc0](https://github.com/adambiggs/dotfiles/commit/705bdc0))
* **vim:** prefix comments with a space (for StandardJS code style) ([9b1bf5f](https://github.com/adambiggs/dotfiles/commit/9b1bf5f))



<a name="10.0.0"></a>
# [10.0.0](https://github.com/adambiggs/dotfiles/compare/9.13.1...v10.0.0) (2016-12-09)


### Bug Fixes

* Docker Compose sometimes times out when launching services ([d848968](https://github.com/adambiggs/dotfiles/commit/d848968))


### Features

* **zsh:** limit `dcl` alias to last 200 lines of container logs ([145dfb3](https://github.com/adambiggs/dotfiles/commit/145dfb3))
* remove trailing whitespace when saving stylus files ([37b3b7f](https://github.com/adambiggs/dotfiles/commit/37b3b7f))
* replace `gulp` with NPM scripts ([2c81b3a](https://github.com/adambiggs/dotfiles/commit/2c81b3a))
* **brew:** install `yarn` ([94e49ff](https://github.com/adambiggs/dotfiles/commit/94e49ff))
* **git:** add `.tern-port` to global ignore ([58e9665](https://github.com/adambiggs/dotfiles/commit/58e9665))
* **vim:** add `deoplete-padawan` plugin ([f169e73](https://github.com/adambiggs/dotfiles/commit/f169e73))
* **vim:** remove `tigris` plugin ([a660660](https://github.com/adambiggs/dotfiles/commit/a660660))
* **vim:** replace `vim-over` with native NeoVim substitution preview ([b6efceb](https://github.com/adambiggs/dotfiles/commit/b6efceb))
* **zsh:** add Java to $PATH ([58dd725](https://github.com/adambiggs/dotfiles/commit/58dd725))
* **zsh:** add Yarn binaries to $PATH ([d215a8d](https://github.com/adambiggs/dotfiles/commit/d215a8d))
* **zsh:** change ruby path ([8355b51](https://github.com/adambiggs/dotfiles/commit/8355b51))
* **zsh:** swap oh-my-zsh plugins for prezto and replace some other plugins ([a8b8362](https://github.com/adambiggs/dotfiles/commit/a8b8362))



<a name="9.13.1"></a>
## [9.13.1](https://github.com/adambiggs/dotfiles/compare/9.13.0...9.13.1) (2016-10-07)


### Bug Fixes

* **update:** shell exits unexpectedly after running update script ([c59aa5c](https://github.com/adambiggs/dotfiles/commit/c59aa5c))


### Features

* **iterm:** switch back to nightly ([63e7d91](https://github.com/adambiggs/dotfiles/commit/63e7d91))
* **vim:** switch from `python json.tool` to `jq` for JSON formatting tool ([4dd4c28](https://github.com/adambiggs/dotfiles/commit/4dd4c28))
* **zsh:** reinstall `composer` plugin ([1fcf779](https://github.com/adambiggs/dotfiles/commit/1fcf779))



<a name="9.13.0"></a>
# [9.13.0](https://github.com/adambiggs/dotfiles/compare/9.12.0...9.13.0) (2016-10-06)


### Bug Fixes

* **zsh:** `zsh-history-substring-search` keybindings broken ([191e2a2](https://github.com/adambiggs/dotfiles/commit/191e2a2))


### Features

* **install:** install `msgpack` and `composer` via Homebrew ([bec5419](https://github.com/adambiggs/dotfiles/commit/bec5419))
* **install:** install Atom ([573f86e](https://github.com/adambiggs/dotfiles/commit/573f86e))
* **vim:** disable NERDTree single child directory cascading ([5b66aba](https://github.com/adambiggs/dotfiles/commit/5b66aba))
* **vim:** install `jspc.vim` and fix Deoplete/Tern omni-completion config ([cece831](https://github.com/adambiggs/dotfiles/commit/cece831))
* **vim:** install `neoterm` ([bb72877](https://github.com/adambiggs/dotfiles/commit/bb72877))
* **vim:** switch to official `neomake/neomake` repo ([6296a4c](https://github.com/adambiggs/dotfiles/commit/6296a4c))
* **zsh:** add Composer bins to PATH ([96bba74](https://github.com/adambiggs/dotfiles/commit/96bba74))
* **zsh:** switch to official `zsh-users/zsh-syntax-highlighting` repo ([027e77a](https://github.com/adambiggs/dotfiles/commit/027e77a))
* **zsh:** update Docker Compose aliases ([21c0b60](https://github.com/adambiggs/dotfiles/commit/21c0b60))



<a name="9.12.0"></a>
# [9.12.0](https://github.com/adambiggs/dotfiles/compare/9.11.0...9.12.0) (2016-09-07)


### Bug Fixes

* **vim:** `termguicolors` option throws errors in older versions of NeoVim ([a699863](https://github.com/adambiggs/dotfiles/commit/a699863))
* **zsh:** `npm` autocomplete plugin errors due to missing cache directory ([1680a4f](https://github.com/adambiggs/dotfiles/commit/1680a4f))


### Features

* **iterm:** change font to Monoid and switch to nightly builds ([18e478d](https://github.com/adambiggs/dotfiles/commit/18e478d))
* **vim:** `airline-onedark` theme merged into main repo ([10607e4](https://github.com/adambiggs/dotfiles/commit/10607e4))
* **vim:** install `tigris.nvim` for intelligent JavaScript syntax highlighting ([019d435](https://github.com/adambiggs/dotfiles/commit/019d435))
* **vim:** only disable `polyglot` for `.js` files if `tigris` is installed ([2545880](https://github.com/adambiggs/dotfiles/commit/2545880))
* **vim:** set `.json` indentation to match `:CleanJSON` command ([3893deb](https://github.com/adambiggs/dotfiles/commit/3893deb))
* update `nvm` submodule ([c4e55e0](https://github.com/adambiggs/dotfiles/commit/c4e55e0))
* update `tpm` submodule ([6af2a4b](https://github.com/adambiggs/dotfiles/commit/6af2a4b))
* update iTerm prefs ([e7e7531](https://github.com/adambiggs/dotfiles/commit/e7e7531))



<a name="9.11.0"></a>
# [9.11.0](https://github.com/adambiggs/dotfiles/compare/9.10.0...9.11.0) (2016-07-26)


### Bug Fixes

* **tmux:** tmux status line breaks after opening Vim ([ce4147a](https://github.com/adambiggs/dotfiles/commit/ce4147a))


### Features

* **vim:** add filetype syntax highlighting for NERDTree ([59d9d43](https://github.com/adambiggs/dotfiles/commit/59d9d43))
* **vim:** added `:CleanJSON` command ([b7a55b8](https://github.com/adambiggs/dotfiles/commit/b7a55b8))



<a name="9.10.0"></a>
# [9.10.0](https://github.com/adambiggs/dotfiles/compare/9.9.0...9.10.0) (2016-06-30)


### Bug Fixes

* **tmux:** startup errors due to deprecated options in config ([aee4830](https://github.com/adambiggs/dotfiles/commit/aee4830))
* **vim:** easy-align plugin sometimes doesn't work on first invocation ([b8b6936](https://github.com/adambiggs/dotfiles/commit/b8b6936))


### Features

* change Vim/iTerm theme from `base16` to `onedark` ([2d9550b](https://github.com/adambiggs/dotfiles/commit/2d9550b))
* **vim:** disable indent guides when they don't make sense ([91c5374](https://github.com/adambiggs/dotfiles/commit/91c5374))
* **vim:** forked `tmuxline.vim` ([a3da164](https://github.com/adambiggs/dotfiles/commit/a3da164))
* **vim:** go back to stock `/` search mapping ([f738952](https://github.com/adambiggs/dotfiles/commit/f738952))
* **vim:** uninstall `vim-stay` ([55156cb](https://github.com/adambiggs/dotfiles/commit/55156cb))



<a name="9.9.0"></a>
# [9.9.0](https://github.com/adambiggs/dotfiles/compare/9.8.0...9.9.0) (2016-06-28)


### Bug Fixes

* **tmux:** vim cursor shape changes not working in tmux ([e5041aa](https://github.com/adambiggs/dotfiles/commit/e5041aa))
* **vim:** `deoplete` errors when editing HTML files ([4ed1073](https://github.com/adambiggs/dotfiles/commit/4ed1073))
* **zsh:** broken Ruby Gem binary path ([631f9f7](https://github.com/adambiggs/dotfiles/commit/631f9f7))
* **zsh:** error on login caused by `osx` plugin ([86275b6](https://github.com/adambiggs/dotfiles/commit/86275b6))


### Features

* **iterm:** remove unused themes, change default directory, some other tweaks ([ee3ac28](https://github.com/adambiggs/dotfiles/commit/ee3ac28))
* enable true color support in tmux and vim ([d1087eb](https://github.com/adambiggs/dotfiles/commit/d1087eb))



<a name="9.8.0"></a>
# [9.8.0](https://github.com/adambiggs/dotfiles/compare/9.7.0...9.8.0) (2016-06-14)


### Bug Fixes

* `tmuxp` shell completions not working ([a0cdce4](https://github.com/adambiggs/dotfiles/commit/a0cdce4))
* **git:** wrong path to global excludes file ([291a661](https://github.com/adambiggs/dotfiles/commit/291a661))
* **install:** always changes default shell, even if already set correctly ([fb68728](https://github.com/adambiggs/dotfiles/commit/fb68728))
* **update:** Homebrew cache path changed ([8c988ae](https://github.com/adambiggs/dotfiles/commit/8c988ae))


### Features

* **git:** add vim buffer options to `gitconfig` ([1e98d62](https://github.com/adambiggs/dotfiles/commit/1e98d62))
* **git:** use new `compactionHeuristic` option in Git 2.9 ([a318543](https://github.com/adambiggs/dotfiles/commit/a318543))
* **install:** install `msgpack` Pecl package ([9d449d0](https://github.com/adambiggs/dotfiles/commit/9d449d0))
* **install:** replace system PHP with PHP 7.0 installed via Homebrew ([9d5a36e](https://github.com/adambiggs/dotfiles/commit/9d5a36e))
* **update:** update Pecl packages ([b9e7e07](https://github.com/adambiggs/dotfiles/commit/b9e7e07))
* **vim:** changed some mappings to fix EasyMotion in Dirvish buffers ([cedde1f](https://github.com/adambiggs/dotfiles/commit/cedde1f))
* **vim:** extra config for `vim-rooter` plugin ([ac5398b](https://github.com/adambiggs/dotfiles/commit/ac5398b))
* **vim:** initial setup of `vim-dirvish` (but still using NERDTree for now) ([33dcb9e](https://github.com/adambiggs/dotfiles/commit/33dcb9e))
* **vim:** installed `neoman.vim` plugin ([8272edb](https://github.com/adambiggs/dotfiles/commit/8272edb))
* **vim:** reduce `maxmapdepth` to catch recursive mappings sooner ([424cd80](https://github.com/adambiggs/dotfiles/commit/424cd80))
* **vim:** set `nohidden` to prevent buildup of unnamed buffers ([3fee1f8](https://github.com/adambiggs/dotfiles/commit/3fee1f8))
* **vim:** switch to `release/1.4.0` branch of `vim-stay` ([4d808d0](https://github.com/adambiggs/dotfiles/commit/4d808d0))
* **vim:** switch to official `easymotion/vim-easymotion` repo ([a047638](https://github.com/adambiggs/dotfiles/commit/a047638))
* **vim:** uninstall `FastFold` plugin ([b608ace](https://github.com/adambiggs/dotfiles/commit/b608ace))
* **zsh:** populate library paths more intelligently ([7926995](https://github.com/adambiggs/dotfiles/commit/7926995))



<a name="9.7.0"></a>
# [9.7.0](https://github.com/adambiggs/dotfiles/compare/9.6.2...9.7.0) (2016-05-17)


### Bug Fixes

* **vim:** folds won't stay open in `init.vim` ([2372332](https://github.com/adambiggs/dotfiles/commit/2372332))
* **vim:** trailing whitespace not removed when saving Yaml files ([f7237aa](https://github.com/adambiggs/dotfiles/commit/f7237aa))


### Features

* **install:** switch from VirtualBox to VMware Fusion ([b8b3333](https://github.com/adambiggs/dotfiles/commit/b8b3333))
* **vim:** `:Ag` command passes arguments directly to `ag` CLI ([c534350](https://github.com/adambiggs/dotfiles/commit/c534350))
* **vim:** enable syntax highlighting for Symfony `*.yml.dist` files ([d7b333a](https://github.com/adambiggs/dotfiles/commit/d7b333a))



<a name="9.6.2"></a>
## [9.6.2](https://github.com/adambiggs/dotfiles/compare/9.6.1...9.6.2) (2016-05-11)


### Bug Fixes

* **zsh:** `zsh-autosuggestions` not showing some history items ([7fe8ac9](https://github.com/adambiggs/dotfiles/commit/7fe8ac9))


### Features

* **zsh:** rename `lmpm-builder` alias to `lmpm` ([4c274d8](https://github.com/adambiggs/dotfiles/commit/4c274d8))



<a name="9.6.1"></a>
## [9.6.1](https://github.com/adambiggs/dotfiles/compare/9.6.0...9.6.1) (2016-05-09)


### Bug Fixes

* **zsh:** path errors after updating `zplug` ([5085901](https://github.com/adambiggs/dotfiles/commit/5085901))


### Features

* **vim:** installed `FastFold` plugin ([7a2cae0](https://github.com/adambiggs/dotfiles/commit/7a2cae0))
* **vim:** load `vim-easy-align` plugin on-demand ([57adc16](https://github.com/adambiggs/dotfiles/commit/57adc16))
* **vim:** update `deoplete` plugin config ([81296ff](https://github.com/adambiggs/dotfiles/commit/81296ff))
* replace `zplug` git submodule with Homebrew formula ([2a57bad](https://github.com/adambiggs/dotfiles/commit/2a57bad))
* **zsh:** alias `l` for `ls -lAh` and enable color output ([52ff703](https://github.com/adambiggs/dotfiles/commit/52ff703))



<a name="9.6.0"></a>
# [9.6.0](https://github.com/adambiggs/dotfiles/compare/9.5.0...9.6.0) (2016-04-28)


### Bug Fixes

* `find-and-replace.sh` not properly escaping search string ([d1f5b82](https://github.com/adambiggs/dotfiles/commit/d1f5b82))
* **zsh:** add `-f` flag to `dlc` alias for newer `docker-compose` versions ([bac74c7](https://github.com/adambiggs/dotfiles/commit/bac74c7))
* **zsh:** command history isn't saved between shell sessions ([8f4818d](https://github.com/adambiggs/dotfiles/commit/8f4818d))


### Features

* **find-and-replace:** escape find/replace params and tell user what's going on ([906da41](https://github.com/adambiggs/dotfiles/commit/906da41))
* **vim:** enable spellcheck for markdown files ([80e7314](https://github.com/adambiggs/dotfiles/commit/80e7314))
* **vim:** more on-demand plugin loading ([2025b16](https://github.com/adambiggs/dotfiles/commit/2025b16))
* **vim:** replace `vim-autoclose` plugin with `lexima.vim` ([4e03906](https://github.com/adambiggs/dotfiles/commit/4e03906))
* update `nerd-fonts` and switch fonts in iTerm ([48951df](https://github.com/adambiggs/dotfiles/commit/48951df))
* **zsh:** update `zplug` to v2 and fix breaking changes in config ([ef19526](https://github.com/adambiggs/dotfiles/commit/ef19526))



<a name="9.5.0"></a>
# [9.5.0](https://github.com/adambiggs/dotfiles/compare/9.4.0...9.5.0) (2016-03-23)


### Bug Fixes

* **update:** `pip` packages sometimes not updated in both Python v2 and v3 ([eb497c8](https://github.com/adambiggs/dotfiles/commit/eb497c8))


### Features

* **vim:** added keymaps for switching tabs ([54a4d65](https://github.com/adambiggs/dotfiles/commit/54a4d65))
* **vim:** disable `vdebug` continuous mode by default ([49e270f](https://github.com/adambiggs/dotfiles/commit/49e270f))
* **vim:** installed `deoplete-ternjs` plugin ([ade7c84](https://github.com/adambiggs/dotfiles/commit/ade7c84))
* **vim:** installed `neoinclude.vim` and `neopairs.vim` ([671c33e](https://github.com/adambiggs/dotfiles/commit/671c33e))
* **vim:** replace `restore_view` plugin with `vim-stay` ([b392670](https://github.com/adambiggs/dotfiles/commit/b392670))
* **vim:** started using `vimux` plugin again ([e4bc853](https://github.com/adambiggs/dotfiles/commit/e4bc853))



<a name="9.4.0"></a>
# [9.4.0](https://github.com/adambiggs/dotfiles/compare/9.3.2...9.4.0) (2016-03-09)


### Bug Fixes

* **tmux:** `tmuxline.vim` plugin breaks TPM plugins ([c80f1ea](https://github.com/adambiggs/dotfiles/commit/c80f1ea))
* **zsh:** zsh theme stopped working ([92b5a75](https://github.com/adambiggs/dotfiles/commit/92b5a75))


### Features

* **tmux:** disable `reattach-to-user-namespace` because I don't need it anymore ([2ed1ac2](https://github.com/adambiggs/dotfiles/commit/2ed1ac2))
* **tmux:** installed `tmux-yank` plugin ([f032813](https://github.com/adambiggs/dotfiles/commit/f032813))
* **tmux:** switch CPU load from custom script to `tmux-cpu` plugin ([b9f84e0](https://github.com/adambiggs/dotfiles/commit/b9f84e0))
* **vim:** installed `fzf.vim` and disabled custom commands ([348a047](https://github.com/adambiggs/dotfiles/commit/348a047))
* **vim:** uninstalled `vim-tmux-focus-events` because NeoVim doesn't need it ([175fcaf](https://github.com/adambiggs/dotfiles/commit/175fcaf))
* **zsh:** make sure all files exist before sourcing them ([ba5e48c](https://github.com/adambiggs/dotfiles/commit/ba5e48c))



<a name="9.3.2"></a>
## [9.3.2](https://github.com/adambiggs/dotfiles/compare/9.3.1...9.3.2) (2016-02-18)


### Bug Fixes

* **zsh:** breaking changes in latest `zsh-autosuggestions` update ([39540f1](https://github.com/adambiggs/dotfiles/commit/39540f1))


### Features

* **iterm:** enable bold fonts ([2bd490a](https://github.com/adambiggs/dotfiles/commit/2bd490a))
* **vim:** update easymotion config ([a8465bc](https://github.com/adambiggs/dotfiles/commit/a8465bc))
* **zsh:** reactivate `fzf` tab completion after `zsh-autosuggestions` bug fix ([14905b2](https://github.com/adambiggs/dotfiles/commit/14905b2))



<a name="9.3.1"></a>
## [9.3.1](https://github.com/adambiggs/dotfiles/compare/9.3.0...9.3.1) (2016-02-09)


### Bug Fixes

* **zsh:** `zsh-autosuggestions` conflicts with `fzf` shell integration ([f085dd8](https://github.com/adambiggs/dotfiles/commit/f085dd8))


### Features

* **fonts:** added script to install/update the icon font I use ([e3edf07](https://github.com/adambiggs/dotfiles/commit/e3edf07))
* **zsh:** updated `zsh-autosuggestions` and fixed path change ([51b5c2a](https://github.com/adambiggs/dotfiles/commit/51b5c2a))



<a name="9.3.0"></a>
# [9.3.0](https://github.com/adambiggs/dotfiles/compare/9.2.0...9.3.0) (2016-02-02)


### Bug Fixes

* **vim:** `vim-airline` readonly icon displays missing character ([daaadfc](https://github.com/adambiggs/dotfiles/commit/daaadfc))
* **vim:** `vim-airline` themes moved to a separate repo ([9eee713](https://github.com/adambiggs/dotfiles/commit/9eee713))


### Features

* **vim:** installed `vim-go` plugin ([04138c2](https://github.com/adambiggs/dotfiles/commit/04138c2))
* **zsh:** export `REPO_PATH` environment variable ([71039ca](https://github.com/adambiggs/dotfiles/commit/71039ca))
* **zsh:** installed `alias-tips` plugin ([f512644](https://github.com/adambiggs/dotfiles/commit/f512644))
* **zsh:** installed `zsh-autosuggestions` plugin ([37ad353](https://github.com/adambiggs/dotfiles/commit/37ad353))
* **zsh:** uninstalled `k` and `bd` plugins ([6e4ca5d](https://github.com/adambiggs/dotfiles/commit/6e4ca5d))



<a name="9.2.0"></a>
# [9.2.0](https://github.com/adambiggs/dotfiles/compare/9.1.0...9.2.0) (2016-01-12)


### Bug Fixes

* **vim:** custom vim snippets not working ([dcb9b4b](https://github.com/adambiggs/dotfiles/commit/dcb9b4b))


### Features

* **vim:** added `context_filetype.vim` plugin ([a114abd](https://github.com/adambiggs/dotfiles/commit/a114abd))
* **vim:** switch from `ultisnips` to `neosnippet` ([3996746](https://github.com/adambiggs/dotfiles/commit/3996746))



<a name="9.1.0"></a>
# [9.1.0](https://github.com/adambiggs/dotfiles/compare/9.0.0...9.1.0) (2015-12-24)


### Features

* **install:** installed python v3 and `pip3` version of `neovim` package ([8d0df08](https://github.com/adambiggs/dotfiles/commit/8d0df08))
* **vim:** switch from `YouCompleteMe` to `deoplete` ([67713de](https://github.com/adambiggs/dotfiles/commit/67713de))



<a name="9.0.0"></a>
# [9.0.0](https://github.com/adambiggs/dotfiles/compare/8.0.1...9.0.0) (2015-12-24)


### Bug Fixes

* **brew:** `cask` is now included with `brew` ([c6fc381](https://github.com/adambiggs/dotfiles/commit/c6fc381))
* **install:** script tries to set `zsh` as default shell when already set ([32b53f1](https://github.com/adambiggs/dotfiles/commit/32b53f1))
* **zsh:** completions not working ([6c1b0dc](https://github.com/adambiggs/dotfiles/commit/6c1b0dc))
* **zsh:** don't add duplicate entries to `$PATH` ([a017622](https://github.com/adambiggs/dotfiles/commit/a017622))
* **zsh:** load `zsh-history-substring-search` after `zsh-syntax-highlighting` ([06c3971](https://github.com/adambiggs/dotfiles/commit/06c3971))


### Features

* **find-and-replace:** run `sed` command on each file separately ([9f772b4](https://github.com/adambiggs/dotfiles/commit/9f772b4))
* **ruby:** switched from `rvm` back to system `ruby` ([18bebaf](https://github.com/adambiggs/dotfiles/commit/18bebaf))
* **update:** clear `zplug` cache after updating ([2fdbf28](https://github.com/adambiggs/dotfiles/commit/2fdbf28))
* **vim:** installed `airblade/vim-rooter` plugin ([15f4d73](https://github.com/adambiggs/dotfiles/commit/15f4d73))
* **vim:** open diffs vertically ([4a3c647](https://github.com/adambiggs/dotfiles/commit/4a3c647))
* **zsh:** added `echopath` alias to print `$PATH` in a nice way ([154b331](https://github.com/adambiggs/dotfiles/commit/154b331))
* **zsh:** added gulp task completion plugin ([b13608e](https://github.com/adambiggs/dotfiles/commit/b13608e))


### BREAKING CHANGES

* brew: you should run `$ brew uninstall brew-cask --force`
* ruby: should run `$ rvm implode` to get rid of `rvm`
* ruby: need to run `./install` script again to reinstall gems



<a name="8.0.1"></a>
## [8.0.1](https://github.com/adambiggs/dotfiles/compare/8.0.0...8.0.1) (2015-12-10)


### Bug Fixes

* **zsh:** `zsh-syntax-highlighting` plugin needs to be loaded last ([05e4369](https://github.com/adambiggs/dotfiles/commit/05e4369))


### Features

* **zsh:** change `zplug` directory to `~/.config/zplug` ([f96bcd6](https://github.com/adambiggs/dotfiles/commit/f96bcd6))
* **zsh:** check for uninstalled plugins on login and prompt to install ([5fa5db8](https://github.com/adambiggs/dotfiles/commit/5fa5db8))



<a name="8.0.0"></a>
# [8.0.0](https://github.com/adambiggs/dotfiles/compare/7.1.1...8.0.0) (2015-12-10)



<a name="7.1.1"></a>
## [7.1.1](https://github.com/adambiggs/dotfiles/compare/7.1.0...7.1.1) (2015-12-10)


### Features

* **install:** added `neovim` ruby gem ([3b6f7e3](https://github.com/adambiggs/dotfiles/commit/3b6f7e3))
* **install:** create symlinks as part of install command ([c293182](https://github.com/adambiggs/dotfiles/commit/c293182))
* **install:** install ZSH plugins ([e0635a8](https://github.com/adambiggs/dotfiles/commit/e0635a8))
* **tmux:** added `tmux-copycat` plugin ([c6fa8d4](https://github.com/adambiggs/dotfiles/commit/c6fa8d4))
* **tmux:** added `tmux-prefix-highlight` plugin to status line ([1651470](https://github.com/adambiggs/dotfiles/commit/1651470))
* **tmux:** installed `tpm` (tmux plugin manager) ([ad503b3](https://github.com/adambiggs/dotfiles/commit/ad503b3))
* **update:** switch from `zgen` to `zplug` ([510d1b7](https://github.com/adambiggs/dotfiles/commit/510d1b7))
* **vim:** added `vim-rhubarb` plugin ([d980ec5](https://github.com/adambiggs/dotfiles/commit/d980ec5))
* **zsh:** add `zplug` submodule ([1b25cc1](https://github.com/adambiggs/dotfiles/commit/1b25cc1))
* **zsh:** switch from `zgen` to `zplug` ([c589093](https://github.com/adambiggs/dotfiles/commit/c589093))


### BREAKING CHANGES

* update: `update` command must be sourced, e.g.: `$ source ~/.dotfiles/update`



<a name="7.1.0"></a>
# [7.1.0](https://github.com/adambiggs/dotfiles/compare/7.0.0...7.1.0) (2015-11-30)


### Bug Fixes

* **update:** `zgen-selfupdate` command fails ([95bdabd](https://github.com/adambiggs/dotfiles/commit/95bdabd))


### Features

* **install:** install `docker` and `docker-machine` with homebrew ([909f787](https://github.com/adambiggs/dotfiles/commit/909f787))
* **vim:** added `vim-css-color` plugin ([63ea644](https://github.com/adambiggs/dotfiles/commit/63ea644))



<a name="7.0.0"></a>
# [7.0.0](https://github.com/adambiggs/dotfiles/compare/6.0.0...7.0.0) (2015-11-23)


### Bug Fixes

* **install:** how do exit code work?? ([088894e](https://github.com/adambiggs/dotfiles/commit/088894e))
* **vim:** `.` character displayed after icons in NERDTree ([2c7e1ef](https://github.com/adambiggs/dotfiles/commit/2c7e1ef))
* **vim:** temp file directory paths configured incorrectly ([02d4c7c](https://github.com/adambiggs/dotfiles/commit/02d4c7c))
* **zsh:** `vimclean` alias doesn't do anything ([b907b33](https://github.com/adambiggs/dotfiles/commit/b907b33))


### Features

* **install:** switch from `iterm2-nightly` to `iterm2-beta` ([1e0cac7](https://github.com/adambiggs/dotfiles/commit/1e0cac7))
* **tmux:** switch to v2.1 stable ([55be3e6](https://github.com/adambiggs/dotfiles/commit/55be3e6))
* **vim:** reactivate `vim-tmux-focus-events` now that NeoVim added support ([8b0bf15](https://github.com/adambiggs/dotfiles/commit/8b0bf15))
* **vim:** use `vdebug` "compact" style watch window ([3b0530b](https://github.com/adambiggs/dotfiles/commit/3b0530b))
* **zsh:** add Go paths to `.zshrc` ([9bdc206](https://github.com/adambiggs/dotfiles/commit/9bdc206))
* updated `nerd-fonts` and fixed broken icons ([5ac93a1](https://github.com/adambiggs/dotfiles/commit/5ac93a1))


### BREAKING CHANGES

* install: You should `$ brew cask uninstall iterm2-nightly` and then run `$ ./install` to make the switch.



<a name="6.0.0"></a>
# [6.0.0](https://github.com/adambiggs/dotfiles/compare/5.0.1...6.0.0) (2015-11-02)


### Bug Fixes

* **install:** already-installed check sometimes fails ([d48d2f9](https://github.com/adambiggs/dotfiles/commit/d48d2f9))
* **vim:** don't throw an error if `colorscheme` isn't found ([1b88383](https://github.com/adambiggs/dotfiles/commit/1b88383))


### Features

* **install:** don't install boot2docker anymore ([ae5bfc9](https://github.com/adambiggs/dotfiles/commit/ae5bfc9))
* **install:** don't try to automatically install patched fonts ([5d90464](https://github.com/adambiggs/dotfiles/commit/5d90464))
* **install:** FZF already installed using `vim-plug` ([b9bfb3f](https://github.com/adambiggs/dotfiles/commit/b9bfb3f))
* **install:** quit Vim after installing plugins ([8608d40](https://github.com/adambiggs/dotfiles/commit/8608d40))
* **vim:** change NeoVim config directory to new XDG path ([44aa0d1](https://github.com/adambiggs/dotfiles/commit/44aa0d1))


### BREAKING CHANGES

* install: Patched fonts should be manually installed for the time
being.
* vim: 1. Run `./link` command
2. Reinstall `vim-plug` at `~/.config/nvim/autoload/plug.vim`
3. Reinstall Vim plugins with `:PlugInstall`
4. Clean up old config: `$ rm -rf ~/.nvim`



<a name="5.0.1"></a>
## [5.0.1](https://github.com/adambiggs/dotfiles/compare/5.0.0...5.0.1) (2015-10-22)


### Bug Fixes

* **tmux:** mouse scrolling broken after tmux v2.1 update ([eabb31c](https://github.com/adambiggs/dotfiles/commit/eabb31c))


### Features

* **tmux:** easily page through shell history ([c02c2ff](https://github.com/adambiggs/dotfiles/commit/c02c2ff))
* **zsh:** remove unused tmux plugin ([f4b7ef4](https://github.com/adambiggs/dotfiles/commit/f4b7ef4))



<a name="5.0.0"></a>
# [5.0.0](https://github.com/adambiggs/dotfiles/compare/4.2.1...5.0.0) (2015-10-15)


### Bug Fixes

* **tmux:** cron job to kill `notifyd` as workaround for El Capitan memory leak ([381413a](https://github.com/adambiggs/dotfiles/commit/381413a))
* **tmux:** deprecated options causing warning messages on session start ([70f4fb6](https://github.com/adambiggs/dotfiles/commit/70f4fb6))
* **tmux:** wifi signal bars empty if signal is exactly `-60` ([0b4fb83](https://github.com/adambiggs/dotfiles/commit/0b4fb83))


### Features

* **tmux:** use latest HEAD version of Tmux ([42d0502](https://github.com/adambiggs/dotfiles/commit/42d0502))
* install `docker-compose` with `pip` ([1d163f5](https://github.com/adambiggs/dotfiles/commit/1d163f5))



<a name="4.2.1"></a>
## [4.2.1](https://github.com/adambiggs/dotfiles/compare/4.2.0...4.2.1) (2015-10-01)


### Features

* **tmux:** minor statusline tweaks ([559e855](https://github.com/adambiggs/dotfiles/commit/559e855))
* **zsh:** change to custom theme ([f992c42](https://github.com/adambiggs/dotfiles/commit/f992c42))



<a name="4.2.0"></a>
# [4.2.0](https://github.com/adambiggs/dotfiles/compare/4.1.0...4.2.0) (2015-10-01)


### Bug Fixes

* **vim:** previous folds aren't remembered when opening `nvimrc` ([59b9bdc](https://github.com/adambiggs/dotfiles/commit/59b9bdc))


### Features

* **iterm:** increased font size ([384c0f7](https://github.com/adambiggs/dotfiles/commit/384c0f7))
* **tmux:** fancy new wifi strength meter ([d6f23ab](https://github.com/adambiggs/dotfiles/commit/d6f23ab))
* **tmux:** status line polish ([5cb77a3](https://github.com/adambiggs/dotfiles/commit/5cb77a3))
* **tmux:** tweaked battery icon percentages ([35716d1](https://github.com/adambiggs/dotfiles/commit/35716d1))
* **update:** keep `pip` up to date ([e0f2f16](https://github.com/adambiggs/dotfiles/commit/e0f2f16))
* **update:** update all gems now that I don't need Compass at work anymore ([97c1476](https://github.com/adambiggs/dotfiles/commit/97c1476))



<a name="4.1.0"></a>
# [4.1.0](https://github.com/adambiggs/dotfiles/compare/4.0.3...4.1.0) (2015-10-01)


### Features

* **tmux:** cleaned up status line & made a fancy custom battery status widget 🔋 ([019f323](https://github.com/adambiggs/dotfiles/commit/019f323))
* **vim:** delete buffers in FZF buffer browser with `ctrl-d` ([1b67490](https://github.com/adambiggs/dotfiles/commit/1b67490))



<a name="4.0.3"></a>
## [4.0.3](https://github.com/adambiggs/dotfiles/compare/4.0.2...4.0.3) (2015-09-14)


### Bug Fixes

* **vim:** NERDTree folder icons not showing up ([c762f2b](https://github.com/adambiggs/dotfiles/commit/c762f2b))


### Features

* **tmux:** swapped some tmux status line icons 💸 ([da72c4d](https://github.com/adambiggs/dotfiles/commit/da72c4d))
* **vim:** automatically keep Tmux theme up to date with Tmuxline changes ([cd0b26e](https://github.com/adambiggs/dotfiles/commit/cd0b26e))
* **vim:** git repo specific NERDTree bookmarks ([36149c3](https://github.com/adambiggs/dotfiles/commit/36149c3))
* **vim:** YouCompleteMe `install.sh` script deprecated in favour of `install.py` ([42b49ff](https://github.com/adambiggs/dotfiles/commit/42b49ff))



<a name="4.0.2"></a>
## [4.0.2](https://github.com/adambiggs/dotfiles/compare/4.0.1...4.0.2) (2015-09-01)


### Features

* **iterm:** switched to iTerm 3 beta ([1cca6c5](https://github.com/adambiggs/dotfiles/commit/1cca6c5))
* **tmux:** added project `tmuxp` layout file ([c151186](https://github.com/adambiggs/dotfiles/commit/c151186))
* **tmux:** more fancy symbols! ✨ ([32ac2c6](https://github.com/adambiggs/dotfiles/commit/32ac2c6))
* **vim:** improved some airline symbols 🔧 ([dcb7144](https://github.com/adambiggs/dotfiles/commit/dcb7144))
* **zsh:** added `gitgraph` alias ([1c1fa9d](https://github.com/adambiggs/dotfiles/commit/1c1fa9d))



<a name="4.0.1"></a>
## [4.0.1](https://github.com/adambiggs/dotfiles/compare/4.0.0...4.0.1) (2015-08-25)


### Features

* **tmux:** fancy CPU monitor icon 😎 ([2e49e48](https://github.com/adambiggs/dotfiles/commit/2e49e48))
* **tmux:** fine-tuned some config settings ([705759f](https://github.com/adambiggs/dotfiles/commit/705759f))
* **tmux:** improved WiFi status line icon 🍕 ([4e4dd67](https://github.com/adambiggs/dotfiles/commit/4e4dd67))
* **zsh:** added `tmuxp` command completion ([29b7083](https://github.com/adambiggs/dotfiles/commit/29b7083))



<a name="4.0.0"></a>
# [4.0.0](https://github.com/adambiggs/dotfiles/compare/3.3.1...4.0.0) (2015-08-24)


### Bug Fixes

* **zsh:** `sudo` doesn't work with aliases ([d0fa593](https://github.com/adambiggs/dotfiles/commit/d0fa593))


### Features

* added `slackshot` script to ease debugging running processes ([3712427](https://github.com/adambiggs/dotfiles/commit/3712427))
* **tmux:** switched from `tmuxinator` to `tmuxp` ([015b73f](https://github.com/adambiggs/dotfiles/commit/015b73f))
* **vim:** don't open folds when navigating to them via block movements ([7ee22a8](https://github.com/adambiggs/dotfiles/commit/7ee22a8))
* **vim:** open buffers in splits/tabs using FZF ([387b702](https://github.com/adambiggs/dotfiles/commit/387b702))
* **vim:** removed unused `neovim-ruby` submodule ([7c83a7a](https://github.com/adambiggs/dotfiles/commit/7c83a7a))
* **vim:** switch (again) from CtrlP to FZF (and live with the daily segfaults) ([67c8394](https://github.com/adambiggs/dotfiles/commit/67c8394))



<a name="3.3.1"></a>
## [3.3.1](https://github.com/adambiggs/dotfiles/compare/3.3.0...3.3.1) (2015-08-12)


### Bug Fixes

* **tmux:** `grunt-concurrent` broken after removing OSX clipboard hack ([2f221b6](https://github.com/adambiggs/dotfiles/commit/2f221b6))


### Features

* **iterm:** updated `nerd-fonts` and changed iTerm fonts ([1579c53](https://github.com/adambiggs/dotfiles/commit/1579c53))
* **tmux:** increase main pane width to make space for GitGutter symbols in Vim ([f210b86](https://github.com/adambiggs/dotfiles/commit/f210b86))
* **tmux:** minor change to Tmuxinator layout ([fd5dfa4](https://github.com/adambiggs/dotfiles/commit/fd5dfa4))
* **tmux:** remove OSX clipboard workaround - issue fixed in Yosemite ([3d4a99f](https://github.com/adambiggs/dotfiles/commit/3d4a99f))
* **vim:** perform `ag` searches from within Vim and narrow results with FZF ([1e143ed](https://github.com/adambiggs/dotfiles/commit/1e143ed))
* **vim:** removed `ag.nvim` plugin ([263a20a](https://github.com/adambiggs/dotfiles/commit/263a20a))


### BREAKING CHANGES

* tmux: Tmux will no longer sync the clipboard with OSX in versions before Yosemite.



<a name="3.3.0"></a>
# [3.3.0](https://github.com/adambiggs/dotfiles/compare/3.2.1...3.3.0) (2015-07-21)


### Features

* removed private repo dependancy for `$ gulp release` task ([1b62e67](https://github.com/adambiggs/dotfiles/commit/1b62e67))
* **vim:** disable `vimux` plugin for now because I wasn't using it ([0aca592](https://github.com/adambiggs/dotfiles/commit/0aca592))
* **vim:** reorganize `nvimrc` for faster launch times ([626c4df](https://github.com/adambiggs/dotfiles/commit/626c4df))



<a name="3.2.1"></a>
## [3.2.1](https://github.com/adambiggs/dotfiles/compare/3.2.0...3.2.1) (2015-07-21)


### Bug Fixes

* **zsh:** no way to disable `--x-smart-recreate` option with `dcu` alias ([2554680](https://github.com/adambiggs/dotfiles/commit/2554680))


### Features

* **iTerm:** switched back to stable `v2.1.1` cuz nightly was totes ridic slow ([d902ef2](https://github.com/adambiggs/dotfiles/commit/d902ef2))
* **tmux:** added dotfiles window back into Tmuxinator template ([ac198bf](https://github.com/adambiggs/dotfiles/commit/ac198bf))
* **tmux:** change back to default `C-b` prefix binding so Vim can use `C-t` ([bc25198](https://github.com/adambiggs/dotfiles/commit/bc25198))
* **vim:** cleaned up & revised YCM config ([5c702a8](https://github.com/adambiggs/dotfiles/commit/5c702a8))
* **vim:** forked `honza/vim-snippets` ([72a1ae2](https://github.com/adambiggs/dotfiles/commit/72a1ae2))
* **vim:** UtilSnips now uses `C-s` to expand snippets *and* jump forward ([3c15ed9](https://github.com/adambiggs/dotfiles/commit/3c15ed9))
* **zsh:** switch to more active fork of `zsh-syntax-highlighting` plugin ([e1ccb8a](https://github.com/adambiggs/dotfiles/commit/e1ccb8a))



<a name="3.2.0"></a>
# [3.2.0](https://github.com/adambiggs/dotfiles/compare/3.1.2...3.2.0) (2015-07-06)


### Features

* renamed linked files ([7e2fc67](https://github.com/adambiggs/dotfiles/commit/7e2fc67))
* **git:** added linked `.gitconfig` file ([ace06d2](https://github.com/adambiggs/dotfiles/commit/ace06d2))
* **git:** added some useful command aliases ([0189308](https://github.com/adambiggs/dotfiles/commit/0189308))
* **tmux:** added icon to wifi status line module ([0965ed2](https://github.com/adambiggs/dotfiles/commit/0965ed2))
* **tmuxinator:** added layout for Docker Machine setup ([52a14cd](https://github.com/adambiggs/dotfiles/commit/52a14cd))
* **vim:** added Incsearch.vim plugin ([596946a](https://github.com/adambiggs/dotfiles/commit/596946a))
* **vim:** renamed `.nvimrc` file and some minor cleanup ([8650120](https://github.com/adambiggs/dotfiles/commit/8650120))
* **zsh:** silence errors in Docker cleanup aliases ([9c13e6e](https://github.com/adambiggs/dotfiles/commit/9c13e6e))
* **zsh:** update `dcu` alias, fix issue with AWS completion, and rename file ([1f9df91](https://github.com/adambiggs/dotfiles/commit/1f9df91))



<a name="3.1.2"></a>
## [3.1.2](https://github.com/adambiggs/dotfiles/compare/3.1.1...3.1.2) (2015-06-22)


### Features

* **vim:** removed options that are now NeoVim defaults ([11a3521](https://github.com/adambiggs/dotfiles/commit/11a3521))
* **zsh:** update git submodules before updating zgen plugins ([eda235a](https://github.com/adambiggs/dotfiles/commit/eda235a))
* iTerm options changed after update ([0b7bf40](https://github.com/adambiggs/dotfiles/commit/0b7bf40))
* updated NVM ([b36b507](https://github.com/adambiggs/dotfiles/commit/b36b507))
* updated patched fonts ([8086375](https://github.com/adambiggs/dotfiles/commit/8086375))
* updated zgen ([0694e49](https://github.com/adambiggs/dotfiles/commit/0694e49))



<a name="3.1.1"></a>
## [3.1.1](https://github.com/adambiggs/dotfiles/compare/3.1.0...3.1.1) (2015-06-08)


### Bug Fixes

* **git:** only globally ignore `tags` in the root of a repo ([2227b55](https://github.com/adambiggs/dotfiles/commit/2227b55))
* **vim:** GitGutter default mappings cause delay with EasyMotion mappings ([cc15926](https://github.com/adambiggs/dotfiles/commit/cc15926))


### Features

* **vim:** change Markdown preview from `Marked.app` to `Marked 2.app` ([2d6d5e9](https://github.com/adambiggs/dotfiles/commit/2d6d5e9))
* **vim:** increase GitGutter max number of signs from `500` to `10000` ([1b715f6](https://github.com/adambiggs/dotfiles/commit/1b715f6))
* updated NVM to latest HEAD ([93e0c02](https://github.com/adambiggs/dotfiles/commit/93e0c02))
* **vim:** reduce `updatetime` to 750ms ([8894998](https://github.com/adambiggs/dotfiles/commit/8894998))
* **zsh:** remove `zsh-notify` plugin cuz it was getting annoying ([ce3fbbf](https://github.com/adambiggs/dotfiles/commit/ce3fbbf))
* **zsh:** uninstall `opp.zsh` - Zsh 5.0.8 has native `textobject` support ([c0f138f](https://github.com/adambiggs/dotfiles/commit/c0f138f))



<a name="3.1.0"></a>
# [3.1.0](https://github.com/adambiggs/dotfiles/compare/3.0.0...3.1.0) (2015-05-21)


### Bug Fixes

* `link` script creates nested `.tmuxinator` symlinks ([6e59706](https://github.com/adambiggs/dotfiles/commit/6e59706))
* `link` script throws an error due to wrong path ([d9006c5](https://github.com/adambiggs/dotfiles/commit/d9006c5))


### Features

* **vim:** activated Vdebug continuous mode by default ([60cc8a6](https://github.com/adambiggs/dotfiles/commit/60cc8a6))
* **vim:** added `ag.nvim` plugin ([87ce4e8](https://github.com/adambiggs/dotfiles/commit/87ce4e8))
* added global `.agignore` file ([026a6b9](https://github.com/adambiggs/dotfiles/commit/026a6b9))
* added global `.gitignore` file ([8a06a41](https://github.com/adambiggs/dotfiles/commit/8a06a41))



<a name="3.0.0"></a>
# [3.0.0](https://github.com/adambiggs/dotfiles/compare/2.2.0...3.0.0) (2015-05-20)


### Bug Fixes

* **vim:** CtrlP plugin config not working ([53c05a4](https://github.com/adambiggs/dotfiles/commit/53c05a4))


### Features

* **tmux:** changed leader mapping from `C-a` to `C-t` for Vim compatability ([e326d71](https://github.com/adambiggs/dotfiles/commit/e326d71))
* **vim:** added `ctrlp-cmatcher` plugin ([7a7cece](https://github.com/adambiggs/dotfiles/commit/7a7cece))
* **vim:** added Ctrl-Space mapping for buffer browsing with CtrlP ([28d071d](https://github.com/adambiggs/dotfiles/commit/28d071d))
* **vim:** enabled CtrlP lazy update and Tag search extension ([bdec2c5](https://github.com/adambiggs/dotfiles/commit/bdec2c5))
* updated `nvm` ([76aaaf7](https://github.com/adambiggs/dotfiles/commit/76aaaf7))
* **vim:** got rid of `vim-startify` because I wasn't using it ([1fd6f81](https://github.com/adambiggs/dotfiles/commit/1fd6f81))
* **vim:** switched `tabular` plugin to `vim-easy-align` ([1665a21](https://github.com/adambiggs/dotfiles/commit/1665a21))



<a name="2.2.0"></a>
# [2.2.0](https://github.com/adambiggs/dotfiles/compare/2.1.1...2.2.0) (2015-05-15)


### Bug Fixes

* **vim:** FZF currently very broken in NeoVim - Switch back to CtrlP for now ([08944cb](https://github.com/adambiggs/dotfiles/commit/08944cb))
* **vim:** remove `options` from `viewoptions` setting ([9aa38d3](https://github.com/adambiggs/dotfiles/commit/9aa38d3))


### Features

* **vim:** installed `vim-peekaboo` plugin ([87002f2](https://github.com/adambiggs/dotfiles/commit/87002f2))
* **vim:** installed `visualrepeat` plugin ([3d1a4a9](https://github.com/adambiggs/dotfiles/commit/3d1a4a9))
* **vim:** installed NERDTree CoffeeScript filter plugin ([214accd](https://github.com/adambiggs/dotfiles/commit/214accd))
* **zsh:** added aliases to help debug NeoVim segfaults ([01b61b1](https://github.com/adambiggs/dotfiles/commit/01b61b1))
* updated `nvm` ([2a2534b](https://github.com/adambiggs/dotfiles/commit/2a2534b))
* updated `nvm` ([a63b2c5](https://github.com/adambiggs/dotfiles/commit/a63b2c5))
* updated `zgen` ([3bdb128](https://github.com/adambiggs/dotfiles/commit/3bdb128))
* updated `zgen` ([4c36faf](https://github.com/adambiggs/dotfiles/commit/4c36faf))



<a name="2.1.1"></a>
## [2.1.1](https://github.com/adambiggs/dotfiles/compare/2.1.0...2.1.1) (2015-05-04)


### Bug Fixes

* **vim:** `fzf` keymaps not working after changing install directory ([c4af63f](https://github.com/adambiggs/dotfiles/commit/c4af63f))


### Features

* **vim:** got Tagbar plugin working again ([ba4ad77](https://github.com/adambiggs/dotfiles/commit/ba4ad77))
* **vim:** switched Syntastic back to NeoMake (no longer broken in NeoVim) ([b36969f](https://github.com/adambiggs/dotfiles/commit/b36969f))
* updated NVM to latest origin commit ([261e980](https://github.com/adambiggs/dotfiles/commit/261e980))



<a name="2.1.0"></a>
# [2.1.0](https://github.com/adambiggs/dotfiles/compare/2.0.0...2.1.0) (2015-05-04)


### Bug Fixes

* **update:** fetch remote before comparing NeoVim commits ([40cb2bc](https://github.com/adambiggs/dotfiles/commit/40cb2bc))
* **update:** OhMyZSH waits for prompt before updating ([4afa1f1](https://github.com/adambiggs/dotfiles/commit/4afa1f1))


### Features

* **update:** reinstall NeoVim from latest HEAD if there are updates available ([c965d40](https://github.com/adambiggs/dotfiles/commit/c965d40))
* removed `fzf` git submodule, install with VimPlug instead ([c893a6a](https://github.com/adambiggs/dotfiles/commit/c893a6a))



<a name="2.0.0"></a>
# [2.0.0](https://github.com/adambiggs/dotfiles/compare/1.6.2...2.0.0) (2015-04-23)


### Bug Fixes

* **update:** wrong path to `colors` script ([83c70dd](https://github.com/adambiggs/dotfiles/commit/83c70dd))


### Features

* install glyph fonts, refactored `install`/`link`/`update` scripts ([e6272ef](https://github.com/adambiggs/dotfiles/commit/e6272ef))
* removed `patched-fonts` submodule ([1d3ba37](https://github.com/adambiggs/dotfiles/commit/1d3ba37))
* **iTerm:** changed font ([d0839a3](https://github.com/adambiggs/dotfiles/commit/d0839a3))
* **tmuxinator:** updated `lmpm.yml` to make better use of `vim-prosession` ([d861233](https://github.com/adambiggs/dotfiles/commit/d861233))
* updated `fzf`, `nvm`, and `zgen` submodules ([8063787](https://github.com/adambiggs/dotfiles/commit/8063787))
* **vim:** installed `php.vim` plugin ([1af6954](https://github.com/adambiggs/dotfiles/commit/1af6954))
* **vim:** installed `vim-prosession` session management plugin ([14cbbb2](https://github.com/adambiggs/dotfiles/commit/14cbbb2))
* **vim:** installed `vim-webdevicons` and glyph patched fonts ([a8f5533](https://github.com/adambiggs/dotfiles/commit/a8f5533))



<a name="1.6.2"></a>
## [1.6.2](https://github.com/adambiggs/dotfiles/compare/1.6.1...1.6.2) (2015-04-17)


### Features

* updated `nvm` ([caf8b80](https://github.com/adambiggs/dotfiles/commit/caf8b80))
* **fzf:** use `--multi` mode by default ([d478f7c](https://github.com/adambiggs/dotfiles/commit/d478f7c))
* **fzf:** use CtrlP mappings in FZF ([7a40234](https://github.com/adambiggs/dotfiles/commit/7a40234))
* **update:** update `zgen` and use it to update `zsh` plugins ([a077f18](https://github.com/adambiggs/dotfiles/commit/a077f18))
* **vim:** browse buffers with FZF and remove CtrlSpace ([212e9ee](https://github.com/adambiggs/dotfiles/commit/212e9ee))



<a name="1.6.1"></a>
## [1.6.1](https://github.com/adambiggs/dotfiles/compare/1.6.0...1.6.1) (2015-04-12)


### Bug Fixes

* **install:** if `brew` already exists, it might install out-of-date packages ([d1a0dbf](https://github.com/adambiggs/dotfiles/commit/d1a0dbf))


### Features

* **vim:** more smarter Utilsnips keymaps ([7a7cec5](https://github.com/adambiggs/dotfiles/commit/7a7cec5))
* updated `fzf` ([d55afc2](https://github.com/adambiggs/dotfiles/commit/d55afc2))
* updated `nvm` ([41bd370](https://github.com/adambiggs/dotfiles/commit/41bd370))



<a name="1.6.0"></a>
# [1.6.0](https://github.com/adambiggs/dotfiles/compare/1.5.4...1.6.0) (2015-04-11)


### Bug Fixes

* **vim:** Handlebars plugin not activating properly ([c0a02c5](https://github.com/adambiggs/dotfiles/commit/c0a02c5))
* **vim:** pane navigation keymaps broken in new NeoVim terminal buffers ([9af92f1](https://github.com/adambiggs/dotfiles/commit/9af92f1))
* **vim:** Utilsnips keymaps not working ([744ea43](https://github.com/adambiggs/dotfiles/commit/744ea43))
* **zsh:** `fzf` keybindings not working ([cd978bf](https://github.com/adambiggs/dotfiles/commit/cd978bf))


### Features

* update fzf ([862b118](https://github.com/adambiggs/dotfiles/commit/862b118))
* **vim:** deactivate Tern plugin till I get around to making shit work right ([b7edb7b](https://github.com/adambiggs/dotfiles/commit/b7edb7b))
* **vim:** remove Unite plugin ([48a82b4](https://github.com/adambiggs/dotfiles/commit/48a82b4))
* **vim:** replace Unite with fzf for CtrlP mapping ([8a6cefa](https://github.com/adambiggs/dotfiles/commit/8a6cefa))
* **vim:** update Airline tabline config ([ab19ae1](https://github.com/adambiggs/dotfiles/commit/ab19ae1))
* **zsh:** get rid of aliases I don't use anymore ([4a741db](https://github.com/adambiggs/dotfiles/commit/4a741db))



<a name="1.5.4"></a>
## [1.5.4](https://github.com/adambiggs/dotfiles/compare/1.5.3...1.5.4) (2015-04-09)


### Bug Fixes

* **install:** don't install `gem` packages with sudo ([55b6e71](https://github.com/adambiggs/dotfiles/commit/55b6e71))
* **update:** don't use sudo when updating `pip` packages ([95b9cbe](https://github.com/adambiggs/dotfiles/commit/95b9cbe))


### Features

* **install:** install brewed `python`, and improved Linux support ([ab4f853](https://github.com/adambiggs/dotfiles/commit/ab4f853))
* **install:** install script updates existing git submodules to latest remote ([3bec295](https://github.com/adambiggs/dotfiles/commit/3bec295))
* **install:** only install `pip` packages that haven't been installed yet ([dedffbf](https://github.com/adambiggs/dotfiles/commit/dedffbf))
* **tmuxinator:** updated lmpm workspace layout ([1b849a0](https://github.com/adambiggs/dotfiles/commit/1b849a0))



<a name="1.5.3"></a>
## [1.5.3](https://github.com/adambiggs/dotfiles/compare/1.5.2...1.5.3) (2015-04-08)


### Bug Fixes

* **vim:** remove `vim-tmux-focus-events` plugin b/c it doesn't work with NeoVim ([64fcba6](https://github.com/adambiggs/dotfiles/commit/64fcba6))


### Features

* **update:** rebase submodules to latest commit in remote tracking branch ([7828dc8](https://github.com/adambiggs/dotfiles/commit/7828dc8))
* **vim:** auto-escape pasted characters in Over.vim commands ([141cfc7](https://github.com/adambiggs/dotfiles/commit/141cfc7))
* **vim:** change Over.vim keymaps and add one to substitute visual selection ([909b851](https://github.com/adambiggs/dotfiles/commit/909b851))
* **vim:** disable `smartindent` b/c it was acting weird in some scenarios ([16e0a1e](https://github.com/adambiggs/dotfiles/commit/16e0a1e))
* **vim:** disable unused Vimux keymappings ([992093f](https://github.com/adambiggs/dotfiles/commit/992093f))
* add `fzf` vim plugin, zsh config, and add it to install script ([c6f37d1](https://github.com/adambiggs/dotfiles/commit/c6f37d1))
* added `fzf` git submodule ([a9ca4aa](https://github.com/adambiggs/dotfiles/commit/a9ca4aa))
* updated `patched-fonts` to latest version ([0d894cf](https://github.com/adambiggs/dotfiles/commit/0d894cf))
* updated NVM to latest version ([0483ba6](https://github.com/adambiggs/dotfiles/commit/0483ba6))



<a name="1.5.2"></a>
## [1.5.2](https://github.com/adambiggs/dotfiles/compare/1.5.1...1.5.2) (2015-03-31)


### Features

* **link:** make link script non-interactive (regenerate links without asking) ([8734d21](https://github.com/adambiggs/dotfiles/commit/8734d21))
* **vim:** expand paths of temp files to avoid filename clashes ([3e36aed](https://github.com/adambiggs/dotfiles/commit/3e36aed))
* **vim:** switch from `vim-signify` to `vim-gitgutter` cuz I only use Git ([e853ee6](https://github.com/adambiggs/dotfiles/commit/e853ee6))
* **vim:** who needs swap files anyway? ([0306137](https://github.com/adambiggs/dotfiles/commit/0306137))



<a name="1.5.1"></a>
## [1.5.1](https://github.com/adambiggs/dotfiles/compare/1.5.0...1.5.1) (2015-03-30)


### Features

* **install:** check if ruby gems are already installed ([4f93c87](https://github.com/adambiggs/dotfiles/commit/4f93c87))
* **install:** install Karabiner ([87bc341](https://github.com/adambiggs/dotfiles/commit/87bc341))



<a name="1.5.0"></a>
# [1.5.0](https://github.com/adambiggs/dotfiles/compare/1.4.0...1.5.0) (2015-03-30)


### Bug Fixes

* **install:** `battery` brew package needs to be tapped ([d56c790](https://github.com/adambiggs/dotfiles/commit/d56c790))
* **install:** shouldn't try to install Mac packages in Linux... ([61872ee](https://github.com/adambiggs/dotfiles/commit/61872ee))
* **update:** `git submodule sync` command seems to leave submodules detached ([7f6415e](https://github.com/adambiggs/dotfiles/commit/7f6415e))


### Features

* **docker:** much improved Dockerfile ([1e99d2a](https://github.com/adambiggs/dotfiles/commit/1e99d2a))
* **install:** install GUI apps using Homebrew Cask ([b4b0fe7](https://github.com/adambiggs/dotfiles/commit/b4b0fe7))
* **install:** install Pip packages ([a05e7c8](https://github.com/adambiggs/dotfiles/commit/a05e7c8))
* **install:** install Ruby gems ([2612689](https://github.com/adambiggs/dotfiles/commit/2612689))
* **install:** update script to install patched Powerline fonts ([3892ecd](https://github.com/adambiggs/dotfiles/commit/3892ecd))
* **vim:** move all neovim plugins to `~/.nvim/plugged` directory ([f6242b9](https://github.com/adambiggs/dotfiles/commit/f6242b9))
* **vim:** switch from VimPlug back to Syntastic due to breaking NeoVim changes ([03bb909](https://github.com/adambiggs/dotfiles/commit/03bb909))
* **vim:** use a single `<Leader>` for all default EasyMotion mappings ([25119bd](https://github.com/adambiggs/dotfiles/commit/25119bd))
* **zsh:** added `zsh-notify` plugin ([41f3837](https://github.com/adambiggs/dotfiles/commit/41f3837))
* added aws cli zsh completions ([d2dcebb](https://github.com/adambiggs/dotfiles/commit/d2dcebb))
* **zsh:** alias `github` to `gitit` ([007df21](https://github.com/adambiggs/dotfiles/commit/007df21))
* added iTerm CLI integration feature ([991e84f](https://github.com/adambiggs/dotfiles/commit/991e84f))
* don't create neovim spellfile symlink. use `:set spell` instead ([d90ce43](https://github.com/adambiggs/dotfiles/commit/d90ce43))
* store custom Karabiner key mappings ([36f876e](https://github.com/adambiggs/dotfiles/commit/36f876e))



<a name="1.4.0"></a>
# [1.4.0](https://github.com/adambiggs/dotfiles/compare/1.3.1...1.4.0) (2015-03-24)


### Bug Fixes

* **vim:** insert mode cursor shape not changing ([6c015e4](https://github.com/adambiggs/dotfiles/commit/6c015e4))
* typo in `install.sh` script ([5126559](https://github.com/adambiggs/dotfiles/commit/5126559))


### Features

* added `nvm` as a submodule ([5a467e8](https://github.com/adambiggs/dotfiles/commit/5a467e8))
* **update:** update git submodules ([16bbe99](https://github.com/adambiggs/dotfiles/commit/16bbe99))
* **vim:** added `sass-syntax` plugin ([48a4ced](https://github.com/adambiggs/dotfiles/commit/48a4ced))
* **vim:** added `vim-tmux` and `vim-tmux-focus-events` plugins ([7501f27](https://github.com/adambiggs/dotfiles/commit/7501f27))
* **vim:** on-demand plugin loading for faster launch ([f298f6f](https://github.com/adambiggs/dotfiles/commit/f298f6f))
* **vim:** set global options for `vdebug` plugin ([c735dfc](https://github.com/adambiggs/dotfiles/commit/c735dfc))
* **vim:** some extra vim config tweaks ([6985f81](https://github.com/adambiggs/dotfiles/commit/6985f81))
* **vim:** switched to my fork of `vdebug` plugin ([2affc76](https://github.com/adambiggs/dotfiles/commit/2affc76))



<a name="1.3.1"></a>
## [1.3.1](https://github.com/adambiggs/dotfiles/compare/1.3.0...1.3.1) (2015-03-24)


### Bug Fixes

* **vim:** Startify config disables IndentGuides plugin globally ([4b216d5](https://github.com/adambiggs/dotfiles/commit/4b216d5))
* **zsh:** only source NVM if it exists ([26a4b5b](https://github.com/adambiggs/dotfiles/commit/26a4b5b))


### Features

* install script now installs Vim plugins ([16930f9](https://github.com/adambiggs/dotfiles/commit/16930f9))
* store iTerm2 preferences in the repo ([4fff5d5](https://github.com/adambiggs/dotfiles/commit/4fff5d5))
* **install:** added `ctags` and `battery` brew packages ([acccc9b](https://github.com/adambiggs/dotfiles/commit/acccc9b))
* **tmux:** tweaked some tmux settings ([a93ab8e](https://github.com/adambiggs/dotfiles/commit/a93ab8e))
* **vim:** added heading for Startify sessions ([dd159f0](https://github.com/adambiggs/dotfiles/commit/dd159f0))
* **vim:** better looking indent guides when not using default 2-spaces ([686772c](https://github.com/adambiggs/dotfiles/commit/686772c))
* **vim:** show NeoVim commit in Startify footer ([6531dd3](https://github.com/adambiggs/dotfiles/commit/6531dd3))



<a name="1.3.0"></a>
# [1.3.0](https://github.com/adambiggs/dotfiles/compare/1.2.4...1.3.0) (2015-03-23)


### Features

* install script ([609ace7](https://github.com/adambiggs/dotfiles/commit/609ace7))
* more better install script ([fa3bac6](https://github.com/adambiggs/dotfiles/commit/fa3bac6))
* update script (wip) ([772dc03](https://github.com/adambiggs/dotfiles/commit/772dc03))
* **vim:** added Startify plugin and customized config ([422ccac](https://github.com/adambiggs/dotfiles/commit/422ccac))
* **zsh:** only source `nvm` if it's been installed ([014893a](https://github.com/adambiggs/dotfiles/commit/014893a))



<a name="1.2.4"></a>
## [1.2.4](https://github.com/adambiggs/dotfiles/compare/1.2.3...1.2.4) (2015-03-20)


### Bug Fixes

* **vim:** `<C-h>` key mapping no longer working due to weird terminal behaviour ([2c1e935](https://github.com/adambiggs/dotfiles/commit/2c1e935))
* **zsh:** `2ds` boot2docker alias not working ([6de4ac4](https://github.com/adambiggs/dotfiles/commit/6de4ac4))


### Features

* **tmuxinator:** added window to work on base Docker images ([b8fd665](https://github.com/adambiggs/dotfiles/commit/b8fd665))
* **tmuxinator:** moved `spine-xp` repo into `lmpm` project directory ([75b5125](https://github.com/adambiggs/dotfiles/commit/75b5125))
* installed `neovim-ruby` submodule ([680fe4f](https://github.com/adambiggs/dotfiles/commit/680fe4f))
* **vim:** changed PHP indentation to use 4 spaces as per PSR-2 ([7dcb4f4](https://github.com/adambiggs/dotfiles/commit/7dcb4f4))
* **zsh:** added Docker Compose zsh completion plugin ([7827062](https://github.com/adambiggs/dotfiles/commit/7827062))
* **zsh:** updated aliases ([cfe0d2c](https://github.com/adambiggs/dotfiles/commit/cfe0d2c))



<a name="1.2.3"></a>
## [1.2.3](https://github.com/adambiggs/dotfiles/compare/1.2.2...1.2.3) (2015-03-06)


### Bug Fixes

* **vim:** highlight isn't re-enabled when performing a search ([1090090](https://github.com/adambiggs/dotfiles/commit/1090090))


### Features

* **lmpm:** updated tmuxinator template a little ([1fe16fd](https://github.com/adambiggs/dotfiles/commit/1fe16fd))
* **vim:** added `vim-visual-star-search` plugin ([0ff4e17](https://github.com/adambiggs/dotfiles/commit/0ff4e17))
* **vim:** added mappings for quick EasyMotion word navigation ([54414a4](https://github.com/adambiggs/dotfiles/commit/54414a4))
* **zgen:** upgraded to latest version ([4809893](https://github.com/adambiggs/dotfiles/commit/4809893))



<a name="1.2.2"></a>
## [1.2.2](https://github.com/adambiggs/dotfiles/compare/1.2.1...1.2.2) (2015-03-02)


### Features

* **tmux:** update status line every 5 seconds ([e2b6dbb](https://github.com/adambiggs/dotfiles/commit/e2b6dbb))
* **tmuxinator:** update to use new window-root feature ([1c6c55f](https://github.com/adambiggs/dotfiles/commit/1c6c55f))
* **zgen:** update to latest version ([fc00be5](https://github.com/adambiggs/dotfiles/commit/fc00be5))
* **zsh:** add `docker-machine` alias ([8684b1c](https://github.com/adambiggs/dotfiles/commit/8684b1c))



<a name="1.2.1"></a>
## [1.2.1](https://github.com/adambiggs/dotfiles/compare/1.2.0...1.2.1) (2015-02-25)


### Features

* added `.zlogin` file ([e402e81](https://github.com/adambiggs/dotfiles/commit/e402e81))
* **tmux:** added CPU meter and now-playing to Tmuxline template ([6e327c8](https://github.com/adambiggs/dotfiles/commit/6e327c8))
* **tmuxinator:** got rid of unnecessary panel from main control window ([03f0c68](https://github.com/adambiggs/dotfiles/commit/03f0c68))



<a name="1.2.0"></a>
# [1.2.0](https://github.com/adambiggs/dotfiles/compare/1.1.1...1.2.0) (2015-02-16)


### Bug Fixes

* **lmpm:** `docker-compose` startup commands take way too long ([430ae0f](https://github.com/adambiggs/dotfiles/commit/430ae0f))
* **vim:** finally found nice looking colors for `vim-indent-guides` plugin ([a7dbac5](https://github.com/adambiggs/dotfiles/commit/a7dbac5))
* **zgen:** `selfupdate` doesn't work ([2014af4](https://github.com/adambiggs/dotfiles/commit/2014af4))


### Features

* added a couple more `Tabular` bindings ([fe89880](https://github.com/adambiggs/dotfiles/commit/fe89880))
* **tux:** custom Tmuxline theme that works outside Vim ([007634f](https://github.com/adambiggs/dotfiles/commit/007634f))
* **vim:** slightly smaller NERDTree window ([d6d88bc](https://github.com/adambiggs/dotfiles/commit/d6d88bc))
* **zsh:** added a few more useful zsh plugins ([87d941d](https://github.com/adambiggs/dotfiles/commit/87d941d))
* **zsh:** added basic find-and-replace `sed` shortcut ([a8a54cb](https://github.com/adambiggs/dotfiles/commit/a8a54cb))
* **zsh:** removed some unused aliases ([b622064](https://github.com/adambiggs/dotfiles/commit/b622064))



<a name="1.1.1"></a>
## [1.1.1](https://github.com/adambiggs/dotfiles/compare/1.1.0...1.1.1) (2015-02-11)


### Bug Fixes

* **vim:** Airline patched fonts not working in NeoVim ([52bd64c](https://github.com/adambiggs/dotfiles/commit/52bd64c))


### Features

* **zsh:** switched from `antigen` to `zgen` ([44b3e39](https://github.com/adambiggs/dotfiles/commit/44b3e39))



<a name="1.1.0"></a>
# [1.1.0](https://github.com/adambiggs/dotfiles/compare/1.0.2...1.1.0) (2015-02-11)


### Features

* added `base16` terminal themes as submodules ([80d11e7](https://github.com/adambiggs/dotfiles/commit/80d11e7))
* **vim:** let Airline choose it's theme automatically based on Vim theme ([aa88726](https://github.com/adambiggs/dotfiles/commit/aa88726))
* added powerline patched fonts as submodule ([9c09c67](https://github.com/adambiggs/dotfiles/commit/9c09c67))
* switched theme from `solarized` to `eighties` (using `base16` library) ([7e1a16b](https://github.com/adambiggs/dotfiles/commit/7e1a16b))



<a name="1.0.2"></a>
## [1.0.2](https://github.com/adambiggs/dotfiles/compare/1.0.1...1.0.2) (2015-02-11)


### Bug Fixes

* cursor not changing shape in insert mode ([714972d](https://github.com/adambiggs/dotfiles/commit/714972d))
* **tmuxinator:** can't do that there... ([b98e187](https://github.com/adambiggs/dotfiles/commit/b98e187))
* did I just refer to myself in the 3rd person? ([9404d86](https://github.com/adambiggs/dotfiles/commit/9404d86))
* link script creating weird nested links if run multiple times ([6191f48](https://github.com/adambiggs/dotfiles/commit/6191f48))
* **vim:** spell file errors when opening certain files ([b908db5](https://github.com/adambiggs/dotfiles/commit/b908db5)), closes [#1](https://github.com/adambiggs/dotfiles/issues/1)



<a name="1.0.1"></a>
## [1.0.1](https://github.com/adambiggs/dotfiles/compare/1.0.0...1.0.1) (2015-02-06)


### Bug Fixes

* always use absolute path of `link.sh` script when creating symlinks ([fe9d3d2](https://github.com/adambiggs/dotfiles/commit/fe9d3d2))


### Features

* added tmuxinator config to the repo ([a8c5070](https://github.com/adambiggs/dotfiles/commit/a8c5070))



<a name="1.0.0"></a>
# [1.0.0](https://github.com/adambiggs/dotfiles/compare/7b3c08f...1.0.0) (2015-02-06)


### Features

* **lmpm:** added LMPM build script alias ([c4f329b](https://github.com/adambiggs/dotfiles/commit/c4f329b))
* **vim:** added `.nvimrc` file ([5b5c738](https://github.com/adambiggs/dotfiles/commit/5b5c738))
* **vim:** clean up NeoVim temp files with `vimclean` alias ([4c25268](https://github.com/adambiggs/dotfiles/commit/4c25268))
* added gulp release task ([8820c77](https://github.com/adambiggs/dotfiles/commit/8820c77))
* added some Docker aliases ([1769b1a](https://github.com/adambiggs/dotfiles/commit/1769b1a))
* don't source AWS SSH key for every new terminal ([b4db8e3](https://github.com/adambiggs/dotfiles/commit/b4db8e3))
* initial commit ([7b3c08f](https://github.com/adambiggs/dotfiles/commit/7b3c08f))
* uninstalled PHP via Brew. No need for extra stuff in `$PATH` ([6261cd9](https://github.com/adambiggs/dotfiles/commit/6261cd9))



