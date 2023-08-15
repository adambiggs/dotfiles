# [13.0.0](https://github.com/adambiggs/dotfiles/compare/v12.3.0...v13.0.0) (2023-08-15)


### Bug Fixes

* remove missing git submodule ([66753dd](https://github.com/adambiggs/dotfiles/commit/66753dd550e814d2dde5f0cddc8b509f626a3fc2))


### Features

* no longer manage `.gitconfig` ([952f73e](https://github.com/adambiggs/dotfiles/commit/952f73ee4479931c76f07238b194b62992accf2a))
* no longer manage `.zlogin` ([cfe1341](https://github.com/adambiggs/dotfiles/commit/cfe1341a4e06842039c8d05f6bfc5399f4c844c5))
* no longer manage global `.gitignore` ([550805b](https://github.com/adambiggs/dotfiles/commit/550805b9a7eff50389063b5cd96d4265398fa2a9))
* out with the old, in with the new - bye nvim/tmux, you served me well but you're too high maintenance for my current needs ([b964b44](https://github.com/adambiggs/dotfiles/commit/b964b444338b699d0df29359520de23a72bdbfa6))
* update to latest Homebrew install method ([c9243d4](https://github.com/adambiggs/dotfiles/commit/c9243d48de2bd3f0f7f4e7163e4e75a453ee076e))



# [12.3.0](https://github.com/adambiggs/dotfiles/compare/v12.2.0...v12.3.0) (2021-11-24)


### Features

* remove awscli v1 - v2 now installed via mac OS installer ([6f27c5a](https://github.com/adambiggs/dotfiles/commit/6f27c5a50866d62df0645136cf3a0161c03b253c))
* use PHP 7.4 ([f7a6fe2](https://github.com/adambiggs/dotfiles/commit/f7a6fe26d96685bb3799f23454d212e222619f1f))



# [12.2.0](https://github.com/adambiggs/dotfiles/compare/v12.1.0...v12.2.0) (2021-04-20)


### Bug Fixes

* **zsh:** this fixes something... can't remember what though 🤔 ([19c26d2](https://github.com/adambiggs/dotfiles/commit/19c26d2d4898f13434a3d44bd773a6fb65f28db7))


### Features

* **cli/install:** install PHP 7.4 ([6f898f9](https://github.com/adambiggs/dotfiles/commit/6f898f9ad64053146bbd160534fa801731ffd5b6))
* **cli/install:** no longer install Yarn via Homebrew - it's now recommended to install via npm ([b4b1bfb](https://github.com/adambiggs/dotfiles/commit/b4b1bfb631a830fdfeb13eedb34464df0ee99702))
* **git:** automatically push local tags when pushing code ([d1ed111](https://github.com/adambiggs/dotfiles/commit/d1ed111b93c8aa5dfdb65bf27bd7e99850c6ec28))
* new scripts to mount/unmount RAM disks ([096b2a0](https://github.com/adambiggs/dotfiles/commit/096b2a0bb9dbca77eb400ffe82687e708d469559))
* update `battery-status` ([a206939](https://github.com/adambiggs/dotfiles/commit/a2069397add1e37856500e5977be17a9526abcb4))
* update `tpm` ([1207fba](https://github.com/adambiggs/dotfiles/commit/1207fba8b31a49d183737bb4b40607c22de4b323))
* **zsh:** add NVM config to `.zshrc` ([86638ce](https://github.com/adambiggs/dotfiles/commit/86638ce47ffbe4874cc27a6f4172cd3aea56b91c))
* **zsh:** remove Serverless framework tab completions ([9cf0e15](https://github.com/adambiggs/dotfiles/commit/9cf0e159a28df5e40ec6d1b53568e442fab760db))
* **zsh:** remove unused `2d`/`2ds`/`dm` aliases ([792d209](https://github.com/adambiggs/dotfiles/commit/792d209ae3d320bacaa24527153dc6cd03ffd509))



# [12.1.0](https://github.com/adambiggs/dotfiles/compare/v12.0.0...v12.1.0) (2020-07-31)


### Features

* **iterm:** update iTerm prefs ([66c2859](https://github.com/adambiggs/dotfiles/commit/66c2859d47c8706ded09a0bc1572a1c29b005f32))
* only install python pacakges using `pip3` ([9fe9b64](https://github.com/adambiggs/dotfiles/commit/9fe9b64f25441409439b8db84d7e94e49b5537c2))
* update PHP to v7.2 ([33c1a7a](https://github.com/adambiggs/dotfiles/commit/33c1a7ae09504d43da3d3443a073edf0936f7934))
* **vim:** add `CleanJSONSorted()` function ([e93aa92](https://github.com/adambiggs/dotfiles/commit/e93aa925662ae7fdd7654d08b0e9b0af0466abd9))



# [12.0.0](https://github.com/adambiggs/dotfiles/compare/v11.6.0...v12.0.0) (2019-10-21)


### Bug Fixes

* **vim:** whitespace highlight characters sometimes cause problems ([21ea3eb](https://github.com/adambiggs/dotfiles/commit/21ea3ebb056cb0eb0f8c058609941317b4a638fe))


### Features

* **iterm:** update prefs ([039c9f5](https://github.com/adambiggs/dotfiles/commit/039c9f55249c199b12e2d2856fbdb80353fa024c))
* **tmux:** get vim-tmux-navigator key bindings from tmux plugin ([ff2fb8e](https://github.com/adambiggs/dotfiles/commit/ff2fb8ed553fac0d7ba6b64e3c6f27a20bae6276))
* **tmux:** remove `reattach-to-user-namespace` clipboard workaround ([674f31f](https://github.com/adambiggs/dotfiles/commit/674f31fd4cfa0790278abb52f716ef314627e1e5))
* update git submodules ([61e3dda](https://github.com/adambiggs/dotfiles/commit/61e3dda651fa4b93b8e87dd95b07208f935f281f))
* **vim:** install `vim-package-info` plugin ([4ef58d1](https://github.com/adambiggs/dotfiles/commit/4ef58d19ff0d2a8e98727291b042e3ac9506b2ba))
* **vim:** remove true color config for old versions of NeoVim ([531ed31](https://github.com/adambiggs/dotfiles/commit/531ed3183ea0f948e66ac08fd638cea1629f6681))
* **vim:** replace `far.vim` with `ctrlsf.vim` ([05257c4](https://github.com/adambiggs/dotfiles/commit/05257c4d25ef8d4fe40922a7e9c60aacbfd4702c))
* **vim:** replace `ncm2` with `coc.nvim` ([e3ff997](https://github.com/adambiggs/dotfiles/commit/e3ff997461e7636e91527063b57f6f6ea18ffe36))
* **vim:** replace `vim-easymotion` with `vim-sneak` ([d66e868](https://github.com/adambiggs/dotfiles/commit/d66e868daafd0724da40092c56a593c02f4cbbe2))
* **vim:** uninstall `ale` plugin ([0e5a1a9](https://github.com/adambiggs/dotfiles/commit/0e5a1a98e439f102252996a0b0a300260ce243a4))
* **vim:** uninstall `neoterm` plugin ([46d26b7](https://github.com/adambiggs/dotfiles/commit/46d26b73d60e2dbaa7cb9dce459f96d37ae0a203))
* **vim:** uninstall `vim-peekaboo` plugin ([bb26acf](https://github.com/adambiggs/dotfiles/commit/bb26acfad0e1673f8cc49e93dfec5e3f40c19098))
* **zsh:** add Serverless framework tab completion sources ([efc20fb](https://github.com/adambiggs/dotfiles/commit/efc20fbc9bf305eef4c826a487677adf87228b39))
* **zsh:** remove `fr` script ([8d01dbb](https://github.com/adambiggs/dotfiles/commit/8d01dbb201bd9f9379c5dcb4f513be84817a8aae))
* **zsh:** update `PATH` to point to PHP 7.2 `bin` and add path to `sbin` ([3d54ba6](https://github.com/adambiggs/dotfiles/commit/3d54ba6eceab59063412e9e247ff675578222563))



# [11.6.0](https://github.com/adambiggs/dotfiles/compare/v11.5.0...v11.6.0) (2018-12-21)


### Bug Fixes

* **cli/update:** homebrew no longer accepts `--HEAD` flag when reinstalling packages ([6b2615b](https://github.com/adambiggs/dotfiles/commit/6b2615b1d5a0e0175976a74dcc807a44bc7b9c78))


### Features

* **cli/install:** switch to stable version of neovim ([9a9432a](https://github.com/adambiggs/dotfiles/commit/9a9432aef320848a52e5f5e51ee40a69ccc0291f))
* **vim:** add python host paths ([dd6c4c6](https://github.com/adambiggs/dotfiles/commit/dd6c4c67387fb9993946d4ebc3d6c348ded591e8))
* **vim:** reduce default fold level for js/coffee files ([7ecef8c](https://github.com/adambiggs/dotfiles/commit/7ecef8c42c3c1ba2f24ae23cd1fcf6132c4b22e7))
* **vim:** update to neovim completion manager 2 ([d0ae510](https://github.com/adambiggs/dotfiles/commit/d0ae510e4d27a8ffc4f2e8472e9230ba9c3b8202))
* **zsh:** add php bin to path ([d765235](https://github.com/adambiggs/dotfiles/commit/d765235f9384a20d9c081490621dfbeeaf365cf3))
* **zsh:** include hidden files in FZF command ([e5a11d4](https://github.com/adambiggs/dotfiles/commit/e5a11d4f6b872c07a817d0d20a9a61b0f24881c8))
* **zsh:** remove `gulp` completions ([0101d27](https://github.com/adambiggs/dotfiles/commit/0101d27b512ec9062a0b9ce480a6964196e13e84))
* **zsh:** rename `gitgraph` alias to `glg` ([d334128](https://github.com/adambiggs/dotfiles/commit/d334128c8990c36d8bcd04de27655f021ab7be57))



# [11.5.0](https://github.com/adambiggs/dotfiles/compare/v11.4.0...v11.5.0) (2018-02-02)


### Bug Fixes

* **vim:** mouse events not working ([d9504ea](https://github.com/adambiggs/dotfiles/commit/d9504ea1a6304bc2f16c9a6e5279275c87affe7f))


### Features

* **vim:** add extra GitGutter mappings ([ae4b0b4](https://github.com/adambiggs/dotfiles/commit/ae4b0b49ba55a082e9676162ffc7ee5a5b103a0b))
* **vim:** add new `:Rg` command for searching with `ripgrep` instead of `ag` ([09650bb](https://github.com/adambiggs/dotfiles/commit/09650bb9f8f3eaa978044c6d928e128ed75762da))
* **vim:** install `gv.vim` plugin ([d726425](https://github.com/adambiggs/dotfiles/commit/d726425aeca5d7389f76c0778e4fb52fdf707210))
* **zsh:** install `awslogs` and `apilogs` ([400c93e](https://github.com/adambiggs/dotfiles/commit/400c93ecc25aac0df4c7cb4861bfd62951118d63))
* **zsh:** install `ripgrep` and configure FZF to use `rg` instead of `ag` ([a996381](https://github.com/adambiggs/dotfiles/commit/a996381a68da4601f89ccd3cbb0b8dd1d75ecdc6))
* **zsh:** remove `lmpm` alias ([b8581dc](https://github.com/adambiggs/dotfiles/commit/b8581dc5033e2096f03cc29b186dd3e40be6e944))



# [11.4.0](https://github.com/adambiggs/dotfiles/compare/v11.3.0...v11.4.0) (2017-12-15)


### Bug Fixes

* **tmux:** fix deprecated config syntax ([95e52e9](https://github.com/adambiggs/dotfiles/commit/95e52e924833cbabc7a61ad445eefa76bf04c5a7))


### Features

* **cli/install:** install Yarn with `--without-node` flag ([efe690d](https://github.com/adambiggs/dotfiles/commit/efe690dd5b6165309e31c44df2f8b39268976d27))
* **vim:** switch from `neomake` to `ale` ([76ded61](https://github.com/adambiggs/dotfiles/commit/76ded614260118ebadad6094a24bc971ade98142))



# [11.3.0](https://github.com/adambiggs/dotfiles/compare/v11.2.1...v11.3.0) (2017-10-25)


### Bug Fixes

* **vim:** syntax highlighting sometimes stops working for `.vue` files ([f245ad8](https://github.com/adambiggs/dotfiles/commit/f245ad8a3a21630dff3c102a0eca6be5803eded5))


### Features

* **git:** change email address ([927e0c4](https://github.com/adambiggs/dotfiles/commit/927e0c4e29d7b244d00472583abc1a113a44c330))
* update `battery-status` ([c2d1f46](https://github.com/adambiggs/dotfiles/commit/c2d1f46d38cd0ae6192181e1de110238a91d0706))
* update `tpm` ([48694cf](https://github.com/adambiggs/dotfiles/commit/48694cf0931a2ac32c28a9e683359423923012bb))
* **vim:** add JSON syntax highlighting for `.jsdoc2mdrc` files ([2670763](https://github.com/adambiggs/dotfiles/commit/2670763c0d7386abd3e78d1ca32517a247825b14))
* **vim:** change default fold level for JSON files ([7545b66](https://github.com/adambiggs/dotfiles/commit/7545b663698672719b171505890e573dde046e5b))
* **vim:** install `far.vim` find-and-replace plugin ([f013c1a](https://github.com/adambiggs/dotfiles/commit/f013c1a8e528aad37779574d30760f80ea7e754a))
* **vim:** new `:W` command to quickly save and delete a buffer ([a8de8ce](https://github.com/adambiggs/dotfiles/commit/a8de8cef87a75622e15abf7c66ffdb6477140e9e))
* **zsh:** disable `git-it-on` plugin ([4db7506](https://github.com/adambiggs/dotfiles/commit/4db75064ccdb4a6adb5ea5e65b3d3bc1e75bedf1))
* **zsh:** install NVM via `zsh-nvm` plugin instead of Homebrew ([04cd11e](https://github.com/adambiggs/dotfiles/commit/04cd11eae96b813854722d0e62032804fcbf0faa))



## [11.2.1](https://github.com/adambiggs/dotfiles/compare/v11.2.0...v11.2.1) (2017-05-16)


### Bug Fixes

* **vim:** folds no longer enabled in `.vue` files ([713d18b](https://github.com/adambiggs/dotfiles/commit/713d18b565ec7897d87a2d8a2c39efc0931bee2f))


### Features

* **tmux:** fix tmuxline colors by switching to active fork of `tmuxline.vim` and clean up some formatting ([04086d4](https://github.com/adambiggs/dotfiles/commit/04086d4124dea530358ec4f54e9ee2c0d0e5d47d))
* **vim:** add `neco-vim` plugin ([1a118da](https://github.com/adambiggs/dotfiles/commit/1a118dabe4a6bd2be7e77832ec1fea79c1321fe7))
* **vim:** add syntax highlighting for `.eslintrc` files ([04fee48](https://github.com/adambiggs/dotfiles/commit/04fee48366b63948a8e83de9ad3f830d6c074f6d))
* **vim:** enable NERDCommenter for all different syntaxes in `.vue` files ([e41cd89](https://github.com/adambiggs/dotfiles/commit/e41cd894f2ee4923f72bc63067d107944033d9bc))
* **vim:** strip trailing whitespace when saving `.vue` files ([97102ba](https://github.com/adambiggs/dotfiles/commit/97102ba41fe888fc42b15f874f57fee8221e0e34))



# [11.2.0](https://github.com/adambiggs/dotfiles/compare/v11.1.0...v11.2.0) (2017-03-22)


### Features

* rounded corners ⚫️ ([e56a0b9](https://github.com/adambiggs/dotfiles/commit/e56a0b962856a753b45b4b8efe8437c0b1e4ad50))
* **vim:** EasyMotion `j`/`k` motions go to first character of line ([9a3074a](https://github.com/adambiggs/dotfiles/commit/9a3074a0ad9b213f0d18e622c51e726d27a95a70))
* **vim:** enable folds for `*.vue` files ([5b101e1](https://github.com/adambiggs/dotfiles/commit/5b101e1fa1d16f51410e46ed525b11b1e245fa48))
* **vim:** remove unused `neoman` plugin ([24427d3](https://github.com/adambiggs/dotfiles/commit/24427d37f73feabd31c17c38275afde05b9a6036))



# [11.1.0](https://github.com/adambiggs/dotfiles/compare/v11.0.0...v11.1.0) (2017-03-06)


### Bug Fixes

* **tmux:** zsh plugins not working in Tmux ([2cceb33](https://github.com/adambiggs/dotfiles/commit/2cceb338675561a377b3befa4446d19704f62af7))
* **zsh:** NVM wasn't getting sourced correctly ([06a63e7](https://github.com/adambiggs/dotfiles/commit/06a63e7eae221bcaea0107225c7480aceae1858a))


### Features

* **cli/update:** update Vim plugins ([4141ceb](https://github.com/adambiggs/dotfiles/commit/4141ceb234880a883528aa2a0869edf4080a7552))
* **vim:** enable JSON syntax highlighting for relevant config files ([9811afc](https://github.com/adambiggs/dotfiles/commit/9811afc77fd90d2495b73cdf9028afcbe68c69e0))
* **vim:** switch from Deoplete to NCM ([e6b8ff3](https://github.com/adambiggs/dotfiles/commit/e6b8ff39fcc6a6712375d593617220e312f0a948))
* **vim:** uninstall `tagbar` plugin that I wasn't using ([fffc036](https://github.com/adambiggs/dotfiles/commit/fffc036c0c4d8132069dd7cf10e601df8f1064cf))
* **zsh:** remove unused `homebrew` and `node` plugins ([cbce151](https://github.com/adambiggs/dotfiles/commit/cbce15111968e3fa00d4c9e7d4203c78cb0df229))



# [11.0.0](https://github.com/adambiggs/dotfiles/compare/v10.1.1...v11.0.0) (2017-01-24)


### Bug Fixes

* **iterm:** emojis causing rendering issues ([5252ce6](https://github.com/adambiggs/dotfiles/commit/5252ce6983cb1052e7328007295e10684fafd479))
* **tmux:** tmux clipboard still not syncing with system clipboard ([fc89cc4](https://github.com/adambiggs/dotfiles/commit/fc89cc420be3483c86f64ddc81ea167e35a45e98))
* **vim:** FZF buffer browsing keymap broken in OSX Sierra ([0724990](https://github.com/adambiggs/dotfiles/commit/0724990b0a85cdc7cfe88b3b1761c7ea36a71cb2))


### Features

* install nerd-fonts via `caskroom-fonts` and remove Git submodule ([d87a561](https://github.com/adambiggs/dotfiles/commit/d87a5610460eab0159c1e154e7cc896ea432306e))
* install NVM via Homebrew instead of git submodule ([4d618b5](https://github.com/adambiggs/dotfiles/commit/4d618b59dd61d3c7ffa73baeb8ce8b498d2a4fc6))
* move install/update scripts to `cli/` directory and update readme ([417252b](https://github.com/adambiggs/dotfiles/commit/417252b434079950daa8529ffe45295b993e859a))
* replaced Karabiner with BetterTouchTool ([f01b425](https://github.com/adambiggs/dotfiles/commit/f01b425b6af74dac7be0526b27ba02bb6ab3920e))
* switch to Homebrew Ruby ([0d5d610](https://github.com/adambiggs/dotfiles/commit/0d5d61044bd45302d50a1871a010253b70a033b3))
* **vim:** install `vimagit` plugin ([13e8c19](https://github.com/adambiggs/dotfiles/commit/13e8c19aa52c4393b60a8d86c09ef77b325cc7ad))



## [10.1.1](https://github.com/adambiggs/dotfiles/compare/v10.1.0...v10.1.1) (2017-01-03)


### Bug Fixes

* **install:** changing default shell to ZSH doesn't work ([aed5c2c](https://github.com/adambiggs/dotfiles/commit/aed5c2c31ebf7f8fe099b6f929e2dde9653736f0))
* **install:** deprecation warnings when installing PIP packages ([b0cb73a](https://github.com/adambiggs/dotfiles/commit/b0cb73aa77f1940e71428c09644641c98a5965e2))
* **install:** duplicate PIP "already installed" messages are confusing ([096cb63](https://github.com/adambiggs/dotfiles/commit/096cb637a7665d8fa477cb9a91e9ed0fa3fed0b3))
* **install:** installation of homebrew PHP fails ([e55d684](https://github.com/adambiggs/dotfiles/commit/e55d6843a0e9e1cf4ca3086b2043ab1f2e08d377))


### Features

* **git:** use SourceTree for diffs ([a27ce58](https://github.com/adambiggs/dotfiles/commit/a27ce58e6238e4a33c9d0c8a01c4c72729562e49))
* **vim:** enable Neomake for all buffer types ([6e29ecf](https://github.com/adambiggs/dotfiles/commit/6e29ecf8c06732df56ab61d36b4c67f61a687a97))



# [10.1.0](https://github.com/adambiggs/dotfiles/compare/v10.0.1...v10.1.0) (2016-12-22)


### Bug Fixes

* **tmux:** navigating between vim panes not working in Tmux ([64c1758](https://github.com/adambiggs/dotfiles/commit/64c1758c1ea364d2ce7e364e4ad97e6dc1bfea9e))
* **update:** `$ zplug clean` command not working with latest version of `zplug` ([01335bf](https://github.com/adambiggs/dotfiles/commit/01335bfab290268424cd06b4ce9d8243b151dd53))
* **zsh:** Yarn global binary path doesn't use NVM ([35ae680](https://github.com/adambiggs/dotfiles/commit/35ae68046bbc5d2485bdc363d58ff11a90b62bc4))


### Features

* **vim:** add `posva/vim-vue` plugin ([5495c8d](https://github.com/adambiggs/dotfiles/commit/5495c8d16d2ab0dc11e0144fd2611ba37f640b3d))
* **zsh:** add `yarn` completions ([34ab5f0](https://github.com/adambiggs/dotfiles/commit/34ab5f01f8de2d5a8841fe46281b8da14d72be9e))
* **zsh:** export new `NPM_PATH` environment variable ([e774999](https://github.com/adambiggs/dotfiles/commit/e774999d20bcdf9fc44a781b715460eb1f41a5be))
* **zsh:** manage AWS completions with `zplug` ([af89907](https://github.com/adambiggs/dotfiles/commit/af89907f756fdaeab2ce76883a46236c7b900d6f))



## [10.0.1](https://github.com/adambiggs/dotfiles/compare/v10.0.0...v10.0.1) (2016-12-09)


### Features

* **vim:** enable JavaScript syntax code folding ([705bdc0](https://github.com/adambiggs/dotfiles/commit/705bdc0d70f1036f09b6c42a1f2c66a507455768))
* **vim:** prefix comments with a space (for StandardJS code style) ([9b1bf5f](https://github.com/adambiggs/dotfiles/commit/9b1bf5ffc472d0b382ff3df30c2221682ca065ae))



# [10.0.0](https://github.com/adambiggs/dotfiles/compare/9.13.1...v10.0.0) (2016-12-09)


### Bug Fixes

* Docker Compose sometimes times out when launching services ([d848968](https://github.com/adambiggs/dotfiles/commit/d8489684cd0a288806dee97a0839699d410b1e0b))


### Features

* **brew:** install `yarn` ([94e49ff](https://github.com/adambiggs/dotfiles/commit/94e49ff3258b36ef9497c7c5f320df0eea383b15))
* **git:** add `.tern-port` to global ignore ([58e9665](https://github.com/adambiggs/dotfiles/commit/58e9665b0e52b5447baf4c517148584891fe12e8))
* remove trailing whitespace when saving stylus files ([37b3b7f](https://github.com/adambiggs/dotfiles/commit/37b3b7f5a6447d273f8ecff87a0bd10bd6c17cec))
* replace `gulp` with NPM scripts ([2c81b3a](https://github.com/adambiggs/dotfiles/commit/2c81b3a453284b3afbd789fa40393fec13371e02))
* **vim:** add `deoplete-padawan` plugin ([f169e73](https://github.com/adambiggs/dotfiles/commit/f169e73c9913d9d2b24767252b6188d1922ddff2))
* **vim:** remove `tigris` plugin ([a660660](https://github.com/adambiggs/dotfiles/commit/a6606600986064f00132933ffec7793e456d4f36))
* **vim:** replace `vim-over` with native NeoVim substitution preview ([b6efceb](https://github.com/adambiggs/dotfiles/commit/b6efceb5b70d98cd852822f5f2717a60021ad193))
* **zsh:** add Java to $PATH ([58dd725](https://github.com/adambiggs/dotfiles/commit/58dd725933f7daa17b73bb5cfd3a5ff9804f109c))
* **zsh:** add Yarn binaries to $PATH ([d215a8d](https://github.com/adambiggs/dotfiles/commit/d215a8de875c1b9f02b9bc0557be341e6e4e690e))
* **zsh:** change ruby path ([8355b51](https://github.com/adambiggs/dotfiles/commit/8355b51143b2895becd67ef6db5b65d3232f7da2))
* **zsh:** limit `dcl` alias to last 200 lines of container logs ([145dfb3](https://github.com/adambiggs/dotfiles/commit/145dfb3ac8d1c8615a05ebae43e80e2cf4d71ef0))
* **zsh:** swap oh-my-zsh plugins for prezto and replace some other plugins ([a8b8362](https://github.com/adambiggs/dotfiles/commit/a8b8362ae14e409f5cd2a0e78893e0b01a115227))



## [9.13.1](https://github.com/adambiggs/dotfiles/compare/9.13.0...9.13.1) (2016-10-07)


### Bug Fixes

* **update:** shell exits unexpectedly after running update script ([c59aa5c](https://github.com/adambiggs/dotfiles/commit/c59aa5cc526becd1c4d4cbb09a50ad08e2ed7201))


### Features

* **iterm:** switch back to nightly ([63e7d91](https://github.com/adambiggs/dotfiles/commit/63e7d910ac06cdc64a5292f2b78a09035834ff50))
* **vim:** switch from `python json.tool` to `jq` for JSON formatting tool ([4dd4c28](https://github.com/adambiggs/dotfiles/commit/4dd4c28080f56e576d533f0962b064695557d08f))
* **zsh:** reinstall `composer` plugin ([1fcf779](https://github.com/adambiggs/dotfiles/commit/1fcf7792b4c0e834b9723d5a8e8fd07a6d9a22c2))



# [9.13.0](https://github.com/adambiggs/dotfiles/compare/9.12.0...9.13.0) (2016-10-06)


### Bug Fixes

* **zsh:** `zsh-history-substring-search` keybindings broken ([191e2a2](https://github.com/adambiggs/dotfiles/commit/191e2a2dd11c38774c2fa8f2042502d0d3ec7478))


### Features

* **install:** install `msgpack` and `composer` via Homebrew ([bec5419](https://github.com/adambiggs/dotfiles/commit/bec54199f70a4345ed3416f1a3864ee61175a180))
* **install:** install Atom ([573f86e](https://github.com/adambiggs/dotfiles/commit/573f86eeb931b05d65caf1d03b76e75947788e42))
* **vim:** disable NERDTree single child directory cascading ([5b66aba](https://github.com/adambiggs/dotfiles/commit/5b66aba0c0c6fd8153726bb8f7d320c1fbc1fa51))
* **vim:** install `jspc.vim` and fix Deoplete/Tern omni-completion config ([cece831](https://github.com/adambiggs/dotfiles/commit/cece831ccc014c87f61c802424709560d686aba6))
* **vim:** install `neoterm` ([bb72877](https://github.com/adambiggs/dotfiles/commit/bb7287772be63104248f4ad159175a468e66a880))
* **vim:** switch to official `neomake/neomake` repo ([6296a4c](https://github.com/adambiggs/dotfiles/commit/6296a4cd27b55494b34f0bb306ae7c325b47193c))
* **zsh:** add Composer bins to PATH ([96bba74](https://github.com/adambiggs/dotfiles/commit/96bba74b0f1c1cd8333fd21b540ef947288190fd))
* **zsh:** switch to official `zsh-users/zsh-syntax-highlighting` repo ([027e77a](https://github.com/adambiggs/dotfiles/commit/027e77a2894fd8c7c5c3efaf4bde019b0354a83c))
* **zsh:** update Docker Compose aliases ([21c0b60](https://github.com/adambiggs/dotfiles/commit/21c0b603bf2fece364f285720b9b40ff1d9a45e5))



# [9.12.0](https://github.com/adambiggs/dotfiles/compare/9.11.0...9.12.0) (2016-09-07)


### Bug Fixes

* **vim:** `termguicolors` option throws errors in older versions of NeoVim ([a699863](https://github.com/adambiggs/dotfiles/commit/a699863ea44bee5683dbb095d1413a8a11f8d99a))
* **zsh:** `npm` autocomplete plugin errors due to missing cache directory ([1680a4f](https://github.com/adambiggs/dotfiles/commit/1680a4f2969295ddd30a60eaba5de2a18a822fa3))


### Features

* **iterm:** change font to Monoid and switch to nightly builds ([18e478d](https://github.com/adambiggs/dotfiles/commit/18e478db5dab68236a79156e04a2fe6c6928e78c))
* update `nvm` submodule ([c4e55e0](https://github.com/adambiggs/dotfiles/commit/c4e55e0635a084e3393c280650d466d64708edb1))
* update `tpm` submodule ([6af2a4b](https://github.com/adambiggs/dotfiles/commit/6af2a4b848849ffa815238bb8df5b989c4964446))
* update iTerm prefs ([e7e7531](https://github.com/adambiggs/dotfiles/commit/e7e7531b9bcd2315f6fbbd92b2099877a3c3f03e))
* **vim:** `airline-onedark` theme merged into main repo ([10607e4](https://github.com/adambiggs/dotfiles/commit/10607e4091fb8ff45b6300fe51fdc77b71266d73))
* **vim:** install `tigris.nvim` for intelligent JavaScript syntax highlighting ([019d435](https://github.com/adambiggs/dotfiles/commit/019d4352074cfdaff254cf2f0c1d9ca8fb3ce247))
* **vim:** only disable `polyglot` for `.js` files if `tigris` is installed ([2545880](https://github.com/adambiggs/dotfiles/commit/2545880ae903e822d92bddec85438950784676d2))
* **vim:** set `.json` indentation to match `:CleanJSON` command ([3893deb](https://github.com/adambiggs/dotfiles/commit/3893deb9ff7eeb2a3750f2e8e1b58b45be4cc2cd))



# [9.11.0](https://github.com/adambiggs/dotfiles/compare/9.10.0...9.11.0) (2016-07-26)


### Bug Fixes

* **tmux:** tmux status line breaks after opening Vim ([ce4147a](https://github.com/adambiggs/dotfiles/commit/ce4147ad64db76b4d6ed4315e10fc5e07f7427c6))


### Features

* **vim:** add filetype syntax highlighting for NERDTree ([59d9d43](https://github.com/adambiggs/dotfiles/commit/59d9d43223e5a0be6ab3e037ae28549f23f8fc0a))
* **vim:** added `:CleanJSON` command ([b7a55b8](https://github.com/adambiggs/dotfiles/commit/b7a55b88ee6ae444c1504a395817ac368ad6abc9))



# [9.10.0](https://github.com/adambiggs/dotfiles/compare/9.9.0...9.10.0) (2016-06-30)


### Bug Fixes

* **tmux:** startup errors due to deprecated options in config ([aee4830](https://github.com/adambiggs/dotfiles/commit/aee4830a362ad6cb6a58a14cc2df2e064299e8fa))
* **vim:** easy-align plugin sometimes doesn't work on first invocation ([b8b6936](https://github.com/adambiggs/dotfiles/commit/b8b69363b84ee1556a9d98f60314ebb6dc05ccb7))


### Features

* change Vim/iTerm theme from `base16` to `onedark` ([2d9550b](https://github.com/adambiggs/dotfiles/commit/2d9550ba4c6289af44ba0996bb857487ce0c632a))
* **vim:** disable indent guides when they don't make sense ([91c5374](https://github.com/adambiggs/dotfiles/commit/91c5374d9f456191e726d4475dad6385f11beb70))
* **vim:** forked `tmuxline.vim` ([a3da164](https://github.com/adambiggs/dotfiles/commit/a3da164f44af3f2f97aea35f0814dcb0130e7cab))
* **vim:** go back to stock `/` search mapping ([f738952](https://github.com/adambiggs/dotfiles/commit/f738952bd887da97c4ef32f22e012d24909fcf34))
* **vim:** uninstall `vim-stay` ([55156cb](https://github.com/adambiggs/dotfiles/commit/55156cb15f19d6e62777ff2e888a0543784c6e32))



# [9.9.0](https://github.com/adambiggs/dotfiles/compare/9.8.0...9.9.0) (2016-06-28)


### Bug Fixes

* **tmux:** vim cursor shape changes not working in tmux ([e5041aa](https://github.com/adambiggs/dotfiles/commit/e5041aa68fc3092b69bbc3b8a92be59d93caeec5))
* **vim:** `deoplete` errors when editing HTML files ([4ed1073](https://github.com/adambiggs/dotfiles/commit/4ed10733a6aa60acbee1df44b6e47b3bd876ce2c))
* **zsh:** broken Ruby Gem binary path ([631f9f7](https://github.com/adambiggs/dotfiles/commit/631f9f745b4aad6577ccc033746f912423e9310d))
* **zsh:** error on login caused by `osx` plugin ([86275b6](https://github.com/adambiggs/dotfiles/commit/86275b66feebb5c916465a71e2c1af1465374d6a))


### Features

* enable true color support in tmux and vim ([d1087eb](https://github.com/adambiggs/dotfiles/commit/d1087ebaf01dfa5a5e8bcc6f9776ac2e61c7e9b0))
* **iterm:** remove unused themes, change default directory, some other tweaks ([ee3ac28](https://github.com/adambiggs/dotfiles/commit/ee3ac289749ed367ef7762d3848567ac743c9025))



# [9.8.0](https://github.com/adambiggs/dotfiles/compare/9.7.0...9.8.0) (2016-06-14)


### Bug Fixes

* `tmuxp` shell completions not working ([a0cdce4](https://github.com/adambiggs/dotfiles/commit/a0cdce43d5698073cc4a21ebba4cf834723d164a))
* **git:** wrong path to global excludes file ([291a661](https://github.com/adambiggs/dotfiles/commit/291a66184b21ecb68b1db1804b8e3afdb7405b30))
* **install:** always changes default shell, even if already set correctly ([fb68728](https://github.com/adambiggs/dotfiles/commit/fb6872869cb99d203e6002fbc29af9400df55077))
* **update:** Homebrew cache path changed ([8c988ae](https://github.com/adambiggs/dotfiles/commit/8c988aed28d0aeb62063c684c5f08de565bb8987))


### Features

* **git:** add vim buffer options to `gitconfig` ([1e98d62](https://github.com/adambiggs/dotfiles/commit/1e98d62ab4e5df8f3a149141fd18014ae4946a99))
* **git:** use new `compactionHeuristic` option in Git 2.9 ([a318543](https://github.com/adambiggs/dotfiles/commit/a3185430ed398dcbe9256740db79c722a17641c4))
* **install:** install `msgpack` Pecl package ([9d449d0](https://github.com/adambiggs/dotfiles/commit/9d449d08df726b128d9d10bbf55ffe61f3e1150b))
* **install:** replace system PHP with PHP 7.0 installed via Homebrew ([9d5a36e](https://github.com/adambiggs/dotfiles/commit/9d5a36e83caaf18fa851f032c5c43d06e25cf848))
* **update:** update Pecl packages ([b9e7e07](https://github.com/adambiggs/dotfiles/commit/b9e7e079389a67afde64a52db73ede7ac8aa54f4))
* **vim:** changed some mappings to fix EasyMotion in Dirvish buffers ([cedde1f](https://github.com/adambiggs/dotfiles/commit/cedde1f783038eb4f02f045ef25be5e11eecac3d))
* **vim:** extra config for `vim-rooter` plugin ([ac5398b](https://github.com/adambiggs/dotfiles/commit/ac5398b18ce6c35f17e54622aeae3fa654f5b588))
* **vim:** initial setup of `vim-dirvish` (but still using NERDTree for now) ([33dcb9e](https://github.com/adambiggs/dotfiles/commit/33dcb9ed0076d4a9d713c23a7d83371522498f0c))
* **vim:** installed `neoman.vim` plugin ([8272edb](https://github.com/adambiggs/dotfiles/commit/8272edba8ce62407078320d90a074fbae4d2b9af))
* **vim:** reduce `maxmapdepth` to catch recursive mappings sooner ([424cd80](https://github.com/adambiggs/dotfiles/commit/424cd8061dcb76bd3f1b0f7181e7327ed9023320))
* **vim:** set `nohidden` to prevent buildup of unnamed buffers ([3fee1f8](https://github.com/adambiggs/dotfiles/commit/3fee1f8cec36f4b82f7b85e72fd8fd942488c506))
* **vim:** switch to `release/1.4.0` branch of `vim-stay` ([4d808d0](https://github.com/adambiggs/dotfiles/commit/4d808d01ec8bc95fb434c8835714f0486ffd6420))
* **vim:** switch to official `easymotion/vim-easymotion` repo ([a047638](https://github.com/adambiggs/dotfiles/commit/a0476384fd73305f6889607ac45d3b20010f1746))
* **vim:** uninstall `FastFold` plugin ([b608ace](https://github.com/adambiggs/dotfiles/commit/b608ace253d8d10906f9564546ad80bbf49be1a4))
* **zsh:** populate library paths more intelligently ([7926995](https://github.com/adambiggs/dotfiles/commit/79269953d8bcae129b38c2578b7594d04adb5f9c))



# [9.7.0](https://github.com/adambiggs/dotfiles/compare/9.6.2...9.7.0) (2016-05-17)


### Bug Fixes

* **vim:** folds won't stay open in `init.vim` ([2372332](https://github.com/adambiggs/dotfiles/commit/2372332faa66865416bb23edbc40dceef0b93b26))
* **vim:** trailing whitespace not removed when saving Yaml files ([f7237aa](https://github.com/adambiggs/dotfiles/commit/f7237aa5fc1140983acca3857f4a1e078224d954))


### Features

* **install:** switch from VirtualBox to VMware Fusion ([b8b3333](https://github.com/adambiggs/dotfiles/commit/b8b3333d8f6c8ef9f158907117b1634e114d4d90))
* **vim:** `:Ag` command passes arguments directly to `ag` CLI ([c534350](https://github.com/adambiggs/dotfiles/commit/c534350add7864b534fe7f353441096ea67cc8f1))
* **vim:** enable syntax highlighting for Symfony `*.yml.dist` files ([d7b333a](https://github.com/adambiggs/dotfiles/commit/d7b333a215038670f87210a8730b0d7cac248c7d))



## [9.6.2](https://github.com/adambiggs/dotfiles/compare/9.6.1...9.6.2) (2016-05-11)


### Bug Fixes

* **zsh:** `zsh-autosuggestions` not showing some history items ([7fe8ac9](https://github.com/adambiggs/dotfiles/commit/7fe8ac93f75fdb9bce752818e12f3de56b1e4917))


### Features

* **zsh:** rename `lmpm-builder` alias to `lmpm` ([4c274d8](https://github.com/adambiggs/dotfiles/commit/4c274d8afab221d9077bc1a4db4297881d629242))



## [9.6.1](https://github.com/adambiggs/dotfiles/compare/9.6.0...9.6.1) (2016-05-09)


### Bug Fixes

* **zsh:** path errors after updating `zplug` ([5085901](https://github.com/adambiggs/dotfiles/commit/50859015e477b03f57fb4e4bfef23c77e7bd6baf))


### Features

* replace `zplug` git submodule with Homebrew formula ([2a57bad](https://github.com/adambiggs/dotfiles/commit/2a57bade2846f92cde0a2063eb0ec95405ef843c))
* **vim:** installed `FastFold` plugin ([7a2cae0](https://github.com/adambiggs/dotfiles/commit/7a2cae07d5320663bc7095831934b9718f9b3477))
* **vim:** load `vim-easy-align` plugin on-demand ([57adc16](https://github.com/adambiggs/dotfiles/commit/57adc16f87450e161cdf6e378d5d070cfc47a077))
* **vim:** update `deoplete` plugin config ([81296ff](https://github.com/adambiggs/dotfiles/commit/81296ff181a71b1e4dcd75d81c6edbac75d5d5ec))
* **zsh:** alias `l` for `ls -lAh` and enable color output ([52ff703](https://github.com/adambiggs/dotfiles/commit/52ff7038fb230452be9008f0f73a36bcedb613d6))



# [9.6.0](https://github.com/adambiggs/dotfiles/compare/9.5.0...9.6.0) (2016-04-28)


### Bug Fixes

* `find-and-replace.sh` not properly escaping search string ([d1f5b82](https://github.com/adambiggs/dotfiles/commit/d1f5b820e3b245cdadccbef3fb2db06184ee7ec0))
* **zsh:** add `-f` flag to `dlc` alias for newer `docker-compose` versions ([bac74c7](https://github.com/adambiggs/dotfiles/commit/bac74c7a916cba7a7921c5983b58a4541ea37aff))
* **zsh:** command history isn't saved between shell sessions ([8f4818d](https://github.com/adambiggs/dotfiles/commit/8f4818d4a276fee0e6d2af6e1aa43e6c548fa807))


### Features

* **find-and-replace:** escape find/replace params and tell user what's going on ([906da41](https://github.com/adambiggs/dotfiles/commit/906da41f3557cb578ca7983845f61ca0524b77d7))
* update `nerd-fonts` and switch fonts in iTerm ([48951df](https://github.com/adambiggs/dotfiles/commit/48951df02a063e79e2539d47a3fb42120b748831))
* **vim:** enable spellcheck for markdown files ([80e7314](https://github.com/adambiggs/dotfiles/commit/80e7314377a5a8706d1cebacafbb66d21c71a71a))
* **vim:** more on-demand plugin loading ([2025b16](https://github.com/adambiggs/dotfiles/commit/2025b164d8a24e87b1c65ca9e1a662c42857c265))
* **vim:** replace `vim-autoclose` plugin with `lexima.vim` ([4e03906](https://github.com/adambiggs/dotfiles/commit/4e039067b41c240cf703cbd2ac9a363e6e38b330))
* **zsh:** update `zplug` to v2 and fix breaking changes in config ([ef19526](https://github.com/adambiggs/dotfiles/commit/ef19526a6d3a9f51fe203f58435bab801e0ae549))



# [9.5.0](https://github.com/adambiggs/dotfiles/compare/9.4.0...9.5.0) (2016-03-23)


### Bug Fixes

* **update:** `pip` packages sometimes not updated in both Python v2 and v3 ([eb497c8](https://github.com/adambiggs/dotfiles/commit/eb497c850b81ee8939827ef5289a66877fb128f5))


### Features

* **vim:** added keymaps for switching tabs ([54a4d65](https://github.com/adambiggs/dotfiles/commit/54a4d65a641362a7e1d4d0437f1613461fea2bd2))
* **vim:** disable `vdebug` continuous mode by default ([49e270f](https://github.com/adambiggs/dotfiles/commit/49e270f438ea4d1bed53cc3492d72ee9c3733569))
* **vim:** installed `deoplete-ternjs` plugin ([ade7c84](https://github.com/adambiggs/dotfiles/commit/ade7c845dfc078d64fc635bebd105277a9050b4c))
* **vim:** installed `neoinclude.vim` and `neopairs.vim` ([671c33e](https://github.com/adambiggs/dotfiles/commit/671c33ec8186e1444a07c3d6323c2f8d886bd1f7))
* **vim:** replace `restore_view` plugin with `vim-stay` ([b392670](https://github.com/adambiggs/dotfiles/commit/b39267019bc3b7f032b11c94795a32b487e4b88f))
* **vim:** started using `vimux` plugin again ([e4bc853](https://github.com/adambiggs/dotfiles/commit/e4bc8535c7e935bda6d81803b79f4fdaacd1ba19))



# [9.4.0](https://github.com/adambiggs/dotfiles/compare/9.3.2...9.4.0) (2016-03-09)


### Bug Fixes

* **tmux:** `tmuxline.vim` plugin breaks TPM plugins ([c80f1ea](https://github.com/adambiggs/dotfiles/commit/c80f1ead2566d3174a1956577a4a46383d8f1662)), closes [/github.com/edkolev/tmuxline.vim/issues/46#issuecomment-194453453](https://github.com//github.com/edkolev/tmuxline.vim/issues/46/issues/issuecomment-194453453)
* **zsh:** zsh theme stopped working ([92b5a75](https://github.com/adambiggs/dotfiles/commit/92b5a7545440f18b3a8562a55332e34a82ad5a4d))


### Features

* **tmux:** disable `reattach-to-user-namespace` because I don't need it anymore ([2ed1ac2](https://github.com/adambiggs/dotfiles/commit/2ed1ac2d7b62009acce42d0cdffe5c66cc237fc7))
* **tmux:** installed `tmux-yank` plugin ([f032813](https://github.com/adambiggs/dotfiles/commit/f0328134b65e0dac8be6c05674d93b990442cf8b))
* **tmux:** switch CPU load from custom script to `tmux-cpu` plugin ([b9f84e0](https://github.com/adambiggs/dotfiles/commit/b9f84e03cc27022f2e1c6038c22ac751d9cb2480))
* **vim:** installed `fzf.vim` and disabled custom commands ([348a047](https://github.com/adambiggs/dotfiles/commit/348a047ac9952056f53db4409426c29972aa4354))
* **vim:** uninstalled `vim-tmux-focus-events` because NeoVim doesn't need it ([175fcaf](https://github.com/adambiggs/dotfiles/commit/175fcaf5b040ecdedafddfa02d114b7d35517390))
* **zsh:** make sure all files exist before sourcing them ([ba5e48c](https://github.com/adambiggs/dotfiles/commit/ba5e48ce36a123c655df65fefeb43bf2ddacecec))



## [9.3.2](https://github.com/adambiggs/dotfiles/compare/9.3.1...9.3.2) (2016-02-18)


### Bug Fixes

* **zsh:** breaking changes in latest `zsh-autosuggestions` update ([39540f1](https://github.com/adambiggs/dotfiles/commit/39540f1a28b067058353fbc7fd8984ab1e9b621f))


### Features

* **iterm:** enable bold fonts ([2bd490a](https://github.com/adambiggs/dotfiles/commit/2bd490a959ed28e087691cad7e12288de0e20849))
* **vim:** update easymotion config ([a8465bc](https://github.com/adambiggs/dotfiles/commit/a8465bce6c99ae161c83a19356c583ad5257e091))
* **zsh:** reactivate `fzf` tab completion after `zsh-autosuggestions` bug fix ([14905b2](https://github.com/adambiggs/dotfiles/commit/14905b26732912212f7c82a972af1580fad0fd6c))



## [9.3.1](https://github.com/adambiggs/dotfiles/compare/9.3.0...9.3.1) (2016-02-09)


### Bug Fixes

* **zsh:** `zsh-autosuggestions` conflicts with `fzf` shell integration ([f085dd8](https://github.com/adambiggs/dotfiles/commit/f085dd80fc64f5d8451bb98de71888c10361d6a0))


### Features

* **fonts:** added script to install/update the icon font I use ([e3edf07](https://github.com/adambiggs/dotfiles/commit/e3edf079b6415f4b15aee96540d6fd918fcc1f7d))
* **zsh:** updated `zsh-autosuggestions` and fixed path change ([51b5c2a](https://github.com/adambiggs/dotfiles/commit/51b5c2a41fbf643dbe337cc500c7d101862870d4))



# [9.3.0](https://github.com/adambiggs/dotfiles/compare/9.2.0...9.3.0) (2016-02-02)


### Bug Fixes

* **vim:** `vim-airline` readonly icon displays missing character ([daaadfc](https://github.com/adambiggs/dotfiles/commit/daaadfc1c9bb0e0e5498f54c800db742d47b1269))
* **vim:** `vim-airline` themes moved to a separate repo ([9eee713](https://github.com/adambiggs/dotfiles/commit/9eee7139f34185b79a0bedfc74ac1f788cba343b))


### Features

* **vim:** installed `vim-go` plugin ([04138c2](https://github.com/adambiggs/dotfiles/commit/04138c2eb1bf8da28c1891ccfc8f087be94c5699))
* **zsh:** export `REPO_PATH` environment variable ([71039ca](https://github.com/adambiggs/dotfiles/commit/71039caea2cda97c16594d760d5a42c57cd5fc1a))
* **zsh:** installed `alias-tips` plugin ([f512644](https://github.com/adambiggs/dotfiles/commit/f5126440b9c20b3fbefae81e712d5fb5d588889b))
* **zsh:** installed `zsh-autosuggestions` plugin ([37ad353](https://github.com/adambiggs/dotfiles/commit/37ad3533a59cfa2987780c8c4d315f009de92298))
* **zsh:** uninstalled `k` and `bd` plugins ([6e4ca5d](https://github.com/adambiggs/dotfiles/commit/6e4ca5d1d721404686c61f62c80d3787304e3335))



# [9.2.0](https://github.com/adambiggs/dotfiles/compare/9.1.0...9.2.0) (2016-01-12)


### Bug Fixes

* **vim:** custom vim snippets not working ([dcb9b4b](https://github.com/adambiggs/dotfiles/commit/dcb9b4b9574992d0ef8997674f783ac3c2444fcd))


### Features

* **vim:** added `context_filetype.vim` plugin ([a114abd](https://github.com/adambiggs/dotfiles/commit/a114abdd089fa94aabce3cf1bab71cc66748c5f2))
* **vim:** switch from `ultisnips` to `neosnippet` ([3996746](https://github.com/adambiggs/dotfiles/commit/399674633ffdfb7f903c9b95e1092306c5666cca))



# [9.1.0](https://github.com/adambiggs/dotfiles/compare/9.0.0...9.1.0) (2015-12-24)


### Features

* **install:** installed python v3 and `pip3` version of `neovim` package ([8d0df08](https://github.com/adambiggs/dotfiles/commit/8d0df08e9d66667ea67b0f2db1e5f883f2686082))
* **vim:** switch from `YouCompleteMe` to `deoplete` ([67713de](https://github.com/adambiggs/dotfiles/commit/67713de68392d350ed542b0bc1085fe43b12d66f))



# [9.0.0](https://github.com/adambiggs/dotfiles/compare/8.0.1...9.0.0) (2015-12-24)


### Bug Fixes

* **brew:** `cask` is now included with `brew` ([c6fc381](https://github.com/adambiggs/dotfiles/commit/c6fc381c37cef385f0f09289aee918b2086f2a6a))
* **install:** script tries to set `zsh` as default shell when already set ([32b53f1](https://github.com/adambiggs/dotfiles/commit/32b53f1b30b8931f8f8bfe8016dbf1e7f770f90f))
* **zsh:** completions not working ([6c1b0dc](https://github.com/adambiggs/dotfiles/commit/6c1b0dc6e305d4303a4f0f46ccba913191e7d416))
* **zsh:** don't add duplicate entries to `$PATH` ([a017622](https://github.com/adambiggs/dotfiles/commit/a0176225660bdd1ee05a627c6367a6dac2829f3c))
* **zsh:** load `zsh-history-substring-search` after `zsh-syntax-highlighting` ([06c3971](https://github.com/adambiggs/dotfiles/commit/06c3971188c1cf8476012754d2a774a262b0dfbe))


### Features

* **find-and-replace:** run `sed` command on each file separately ([9f772b4](https://github.com/adambiggs/dotfiles/commit/9f772b4768a42b47342c0918ad72852c3385e703))
* **ruby:** switched from `rvm` back to system `ruby` ([18bebaf](https://github.com/adambiggs/dotfiles/commit/18bebaf63e9524ed35b6a373133393a2dcea64c0))
* **update:** clear `zplug` cache after updating ([2fdbf28](https://github.com/adambiggs/dotfiles/commit/2fdbf28f392e4fa21ca2412d9d65bb49f09d5562))
* **vim:** installed `airblade/vim-rooter` plugin ([15f4d73](https://github.com/adambiggs/dotfiles/commit/15f4d73b561fef3b589401a120eaa9504ec1d763))
* **vim:** open diffs vertically ([4a3c647](https://github.com/adambiggs/dotfiles/commit/4a3c647828bb0b21c74fdf6dffaca9ab21cbe339))
* **zsh:** added `echopath` alias to print `$PATH` in a nice way ([154b331](https://github.com/adambiggs/dotfiles/commit/154b3311f9b54c5a5c87f84eb7c83396e50602a4))
* **zsh:** added gulp task completion plugin ([b13608e](https://github.com/adambiggs/dotfiles/commit/b13608efac3c0537cba2faf8e05e6a80d9721235))


### BREAKING CHANGES

* **brew:** you should run `$ brew uninstall brew-cask --force`
* **ruby:** should run `$ rvm implode` to get rid of `rvm`
* **ruby:** need to run `./install` script again to reinstall gems



## [8.0.1](https://github.com/adambiggs/dotfiles/compare/8.0.0...8.0.1) (2015-12-10)


### Bug Fixes

* **zsh:** `zsh-syntax-highlighting` plugin needs to be loaded last ([05e4369](https://github.com/adambiggs/dotfiles/commit/05e4369d7f77128ff8b599af916338dfe9b9978e))


### Features

* **zsh:** change `zplug` directory to `~/.config/zplug` ([f96bcd6](https://github.com/adambiggs/dotfiles/commit/f96bcd6543e502f233987663aff1285c2904ccfb))
* **zsh:** check for uninstalled plugins on login and prompt to install ([5fa5db8](https://github.com/adambiggs/dotfiles/commit/5fa5db8c1e4c22eb7527a0181dcbb333deef723e))



# [8.0.0](https://github.com/adambiggs/dotfiles/compare/7.1.1...8.0.0) (2015-12-10)


### Features

* **install:** create symlinks as part of install command ([c293182](https://github.com/adambiggs/dotfiles/commit/c29318292123aa77178c99f0db5033fd6ba68667))
* **install:** install ZSH plugins ([e0635a8](https://github.com/adambiggs/dotfiles/commit/e0635a80cb900af58176b45bb856c20eb6794c01))
* **update:** switch from `zgen` to `zplug` ([510d1b7](https://github.com/adambiggs/dotfiles/commit/510d1b79e866e40eda36d51d2ee9b10899736270))
* **zsh:** add `zplug` submodule ([1b25cc1](https://github.com/adambiggs/dotfiles/commit/1b25cc1ad7460a53d686e55dd244658184920a40))
* **zsh:** switch from `zgen` to `zplug` ([c589093](https://github.com/adambiggs/dotfiles/commit/c5890936a94979943cc3ccbf996ea5a1785d9aeb))


### BREAKING CHANGES

* **update:** `update` command must be sourced, e.g.: `$ source ~/.dotfiles/update`



## [7.1.1](https://github.com/adambiggs/dotfiles/compare/7.1.0...7.1.1) (2015-12-10)


### Features

* **install:** added `neovim` ruby gem ([3b6f7e3](https://github.com/adambiggs/dotfiles/commit/3b6f7e34fea096f0f89998225068296e11cf829b))
* **tmux:** added `tmux-copycat` plugin ([c6fa8d4](https://github.com/adambiggs/dotfiles/commit/c6fa8d41650849fc5977c206a0051fac269cb17c))
* **tmux:** added `tmux-prefix-highlight` plugin to status line ([1651470](https://github.com/adambiggs/dotfiles/commit/1651470907b0dab213be19f5a4eb9d855fd65733))
* **tmux:** installed `tpm` (tmux plugin manager) ([ad503b3](https://github.com/adambiggs/dotfiles/commit/ad503b3137e834cebb7558ee27c0ab7b59031840))
* **vim:** added `vim-rhubarb` plugin ([d980ec5](https://github.com/adambiggs/dotfiles/commit/d980ec5d815984f8d5ea845a8cd7797401b0dd64))



# [7.1.0](https://github.com/adambiggs/dotfiles/compare/7.0.0...7.1.0) (2015-11-30)


### Bug Fixes

* **update:** `zgen-selfupdate` command fails ([95bdabd](https://github.com/adambiggs/dotfiles/commit/95bdabd61a0c3df8aa01de8060b4981f71913ef8))


### Features

* **install:** install `docker` and `docker-machine` with homebrew ([909f787](https://github.com/adambiggs/dotfiles/commit/909f7877990fda6fb902f4e05be5d9fb9e929696))
* **vim:** added `vim-css-color` plugin ([63ea644](https://github.com/adambiggs/dotfiles/commit/63ea644c72c3d6f1d1d0574bd13ba09cc0f8fbe3))



# [7.0.0](https://github.com/adambiggs/dotfiles/compare/6.0.0...7.0.0) (2015-11-23)


### Bug Fixes

* **install:** how do exit code work?? ([088894e](https://github.com/adambiggs/dotfiles/commit/088894ecad7303590df7bef19f7b989dec26981d))
* **vim:** `.` character displayed after icons in NERDTree ([2c7e1ef](https://github.com/adambiggs/dotfiles/commit/2c7e1ef4c0debe52a74e5213c009fa87e2716e36))
* **vim:** temp file directory paths configured incorrectly ([02d4c7c](https://github.com/adambiggs/dotfiles/commit/02d4c7c5189c6b6b4c98371ffa02d7f323a969e4))
* **zsh:** `vimclean` alias doesn't do anything ([b907b33](https://github.com/adambiggs/dotfiles/commit/b907b336fdc0e1c7060ac3e40b585c86f67957af))


### Features

* **install:** switch from `iterm2-nightly` to `iterm2-beta` ([1e0cac7](https://github.com/adambiggs/dotfiles/commit/1e0cac7dec51ebadaae29d712a199ff80bbe6059))
* **tmux:** switch to v2.1 stable ([55be3e6](https://github.com/adambiggs/dotfiles/commit/55be3e6499d14cc08e5e5f66cc117c61753c8f17))
* updated `nerd-fonts` and fixed broken icons ([5ac93a1](https://github.com/adambiggs/dotfiles/commit/5ac93a1a499fc98bd20a77aac777d7899bedebbf))
* **vim:** reactivate `vim-tmux-focus-events` now that NeoVim added support ([8b0bf15](https://github.com/adambiggs/dotfiles/commit/8b0bf15d3125dc814e2636f5e378c0bffffb0898))
* **vim:** use `vdebug` "compact" style watch window ([3b0530b](https://github.com/adambiggs/dotfiles/commit/3b0530b17737c4e319c533e9d9c454b8c9621b69))
* **zsh:** add Go paths to `.zshrc` ([9bdc206](https://github.com/adambiggs/dotfiles/commit/9bdc206cf43c040e836709abfdc6fb31463b9d88))


### BREAKING CHANGES

* **install:** You should `$ brew cask uninstall iterm2-nightly` and then run `$ ./install` to make the switch.



# [6.0.0](https://github.com/adambiggs/dotfiles/compare/5.0.1...6.0.0) (2015-11-02)


### Bug Fixes

* **install:** already-installed check sometimes fails ([d48d2f9](https://github.com/adambiggs/dotfiles/commit/d48d2f9dbaa779d14490fa731611afbead02f5f9))
* **vim:** don't throw an error if `colorscheme` isn't found ([1b88383](https://github.com/adambiggs/dotfiles/commit/1b883836ea0a197c841c950ee7b5b2bb91e6cf7e))


### Features

* **install:** don't install boot2docker anymore ([ae5bfc9](https://github.com/adambiggs/dotfiles/commit/ae5bfc95fe4cc24e32709cba0a912b11da349897))
* **install:** don't try to automatically install patched fonts ([5d90464](https://github.com/adambiggs/dotfiles/commit/5d90464c2f9f9c105d56affaa3edb77871a3033f))
* **install:** FZF already installed using `vim-plug` ([b9bfb3f](https://github.com/adambiggs/dotfiles/commit/b9bfb3f2fa055746d1fc23bf25b15ce7a92415c5))
* **install:** quit Vim after installing plugins ([8608d40](https://github.com/adambiggs/dotfiles/commit/8608d404f1a9ef22cf3e858761b03897ebde6571))
* **vim:** change NeoVim config directory to new XDG path ([44aa0d1](https://github.com/adambiggs/dotfiles/commit/44aa0d130609c625e573c00a2884fe92e7c9da13))


### BREAKING CHANGES

* **install:** Patched fonts should be manually installed for the time
being.
* **vim:** 1. Run `./link` command
2. Reinstall `vim-plug` at `~/.config/nvim/autoload/plug.vim`
3. Reinstall Vim plugins with `:PlugInstall`
4. Clean up old config: `$ rm -rf ~/.nvim`



## [5.0.1](https://github.com/adambiggs/dotfiles/compare/5.0.0...5.0.1) (2015-10-22)


### Bug Fixes

* **tmux:** mouse scrolling broken after tmux v2.1 update ([eabb31c](https://github.com/adambiggs/dotfiles/commit/eabb31caff6ce8777b8d8107b698760f60cb3b60))


### Features

* **tmux:** easily page through shell history ([c02c2ff](https://github.com/adambiggs/dotfiles/commit/c02c2fff34b3863d3065ef3b1067e7a71fa0e139))
* **zsh:** remove unused tmux plugin ([f4b7ef4](https://github.com/adambiggs/dotfiles/commit/f4b7ef468baa8223d6b1f00ede02f87baa72f2e7))



# [5.0.0](https://github.com/adambiggs/dotfiles/compare/4.2.1...5.0.0) (2015-10-15)


### Bug Fixes

* **tmux:** cron job to kill `notifyd` as workaround for El Capitan memory leak ([381413a](https://github.com/adambiggs/dotfiles/commit/381413a904724880f88d15243edee017f0bcc173)), closes [/github.com/tmux/tmux/issues/108#issuecomment-148044780](https://github.com//github.com/tmux/tmux/issues/108/issues/issuecomment-148044780)
* **tmux:** deprecated options causing warning messages on session start ([70f4fb6](https://github.com/adambiggs/dotfiles/commit/70f4fb666812283527e1a69aaf97d82b16af49c4))
* **tmux:** wifi signal bars empty if signal is exactly `-60` ([0b4fb83](https://github.com/adambiggs/dotfiles/commit/0b4fb835ae6a602e45ebcec177981c9d88a88172))


### Features

* install `docker-compose` with `pip` ([1d163f5](https://github.com/adambiggs/dotfiles/commit/1d163f5362340eec3e5c33fb300922318acc6af5))
* **tmux:** use latest HEAD version of Tmux ([42d0502](https://github.com/adambiggs/dotfiles/commit/42d0502a21fbacbfd1884ae10e7b1ec454f03c78))



## [4.2.1](https://github.com/adambiggs/dotfiles/compare/4.2.0...4.2.1) (2015-10-01)


### Features

* **tmux:** minor statusline tweaks ([559e855](https://github.com/adambiggs/dotfiles/commit/559e855cdfba2374da085b0364837122f41c5684))
* **zsh:** change to custom theme ([f992c42](https://github.com/adambiggs/dotfiles/commit/f992c42d29b35d8e094f2e6639b5abefaede44ec))



# [4.2.0](https://github.com/adambiggs/dotfiles/compare/4.1.0...4.2.0) (2015-10-01)


### Bug Fixes

* **vim:** previous folds aren't remembered when opening `nvimrc` ([59b9bdc](https://github.com/adambiggs/dotfiles/commit/59b9bdcf7eb2cde51451929758cd8d2d2971a5a8))


### Features

* **iterm:** increased font size ([384c0f7](https://github.com/adambiggs/dotfiles/commit/384c0f79981b9f9448d2bff724b0d354ca1c7c72))
* **tmux:** fancy new wifi strength meter ([d6f23ab](https://github.com/adambiggs/dotfiles/commit/d6f23ab759031d8b972b6af811d20dfbf09a0938))
* **tmux:** status line polish ([5cb77a3](https://github.com/adambiggs/dotfiles/commit/5cb77a389d571e6632c272ac568769876745fa51))
* **tmux:** tweaked battery icon percentages ([35716d1](https://github.com/adambiggs/dotfiles/commit/35716d1642037ae77c578bbf38ee5a615296d538))
* **update:** keep `pip` up to date ([e0f2f16](https://github.com/adambiggs/dotfiles/commit/e0f2f16b0f7efd9e26c92d111350af54688a0a21))
* **update:** update all gems now that I don't need Compass at work anymore ([97c1476](https://github.com/adambiggs/dotfiles/commit/97c147638d7f7080474bc4d1c8dc7eae216245ba))



# [4.1.0](https://github.com/adambiggs/dotfiles/compare/4.0.3...4.1.0) (2015-10-01)


### Features

* **tmux:** cleaned up status line & made a fancy custom battery status widget 🔋 ([019f323](https://github.com/adambiggs/dotfiles/commit/019f323cc20f901ccc28c0adeac9d8472f0a2e3d))
* **vim:** delete buffers in FZF buffer browser with `ctrl-d` ([1b67490](https://github.com/adambiggs/dotfiles/commit/1b67490aec79fb525e86e864c18956ab49cf184f))



## [4.0.3](https://github.com/adambiggs/dotfiles/compare/4.0.2...4.0.3) (2015-09-14)


### Bug Fixes

* **vim:** NERDTree folder icons not showing up ([c762f2b](https://github.com/adambiggs/dotfiles/commit/c762f2b437de1ea16f21f1481cb29cc6249b44cd))


### Features

* **tmux:** swapped some tmux status line icons 💸 ([da72c4d](https://github.com/adambiggs/dotfiles/commit/da72c4d0830329e8fe2ae898894d2a7abd9ad52e))
* **vim:** automatically keep Tmux theme up to date with Tmuxline changes ([cd0b26e](https://github.com/adambiggs/dotfiles/commit/cd0b26e5dbec72af2dce4fc46d616e7d83919033))
* **vim:** git repo specific NERDTree bookmarks ([36149c3](https://github.com/adambiggs/dotfiles/commit/36149c3473c2c68578b9b6e597bef5f4d0de1b24))
* **vim:** YouCompleteMe `install.sh` script deprecated in favour of `install.py` ([42b49ff](https://github.com/adambiggs/dotfiles/commit/42b49ff777665d1cba97f626abbf43ad8f24d59a))



## [4.0.2](https://github.com/adambiggs/dotfiles/compare/4.0.1...4.0.2) (2015-09-01)


### Features

* **iterm:** switched to iTerm 3 beta ([1cca6c5](https://github.com/adambiggs/dotfiles/commit/1cca6c5938bc94b3bb08f922640ecb78aa5f0f9a))
* **tmux:** added project `tmuxp` layout file ([c151186](https://github.com/adambiggs/dotfiles/commit/c1511860b80d04811f063a37173cca8a38f0b302))
* **tmux:** more fancy symbols! ✨ ([32ac2c6](https://github.com/adambiggs/dotfiles/commit/32ac2c6fb8c7c9fe7a821a70677197cca23354b5))
* **vim:** improved some airline symbols 🔧 ([dcb7144](https://github.com/adambiggs/dotfiles/commit/dcb7144452a4d4630908ac3cdc778d4f8ee5dca7))
* **zsh:** added `gitgraph` alias ([1c1fa9d](https://github.com/adambiggs/dotfiles/commit/1c1fa9d7c17237fe6e642237711e673d170ec7c7))



## [4.0.1](https://github.com/adambiggs/dotfiles/compare/4.0.0...4.0.1) (2015-08-25)


### Features

* **tmux:** fancy CPU monitor icon 😎 ([2e49e48](https://github.com/adambiggs/dotfiles/commit/2e49e4800b6a6b80ec315d3bcef09a45835d92c4))
* **tmux:** fine-tuned some config settings ([705759f](https://github.com/adambiggs/dotfiles/commit/705759f48cbe544fc77fd11e6a8fe39472ae4b82))
* **tmux:** improved WiFi status line icon 🍕 ([4e4dd67](https://github.com/adambiggs/dotfiles/commit/4e4dd67b4c572c1d171012c2230aaf30c31176f6))
* **zsh:** added `tmuxp` command completion ([29b7083](https://github.com/adambiggs/dotfiles/commit/29b70830f1a2d24b8df57b8a0cc70561ea26d528))



# [4.0.0](https://github.com/adambiggs/dotfiles/compare/3.3.1...4.0.0) (2015-08-24)


### Bug Fixes

* **zsh:** `sudo` doesn't work with aliases ([d0fa593](https://github.com/adambiggs/dotfiles/commit/d0fa593af2dae2fd755383b5dfebdb7d3e1983ed))


### Features

* added `slackshot` script to ease debugging running processes ([3712427](https://github.com/adambiggs/dotfiles/commit/371242756f11bd9a2abb445cb4b51bec4d463add))
* **tmux:** switched from `tmuxinator` to `tmuxp` ([015b73f](https://github.com/adambiggs/dotfiles/commit/015b73f956d4b1a4a7e5af2a67d518c5d87e3395))
* **vim:** don't open folds when navigating to them via block movements ([7ee22a8](https://github.com/adambiggs/dotfiles/commit/7ee22a8e7c1dc3d3b54e5a1fd69a7640b6301094))
* **vim:** open buffers in splits/tabs using FZF ([387b702](https://github.com/adambiggs/dotfiles/commit/387b702b1ba34b65fa29440aee7f692cb0c97b72))
* **vim:** removed unused `neovim-ruby` submodule ([7c83a7a](https://github.com/adambiggs/dotfiles/commit/7c83a7a89fb5b6b796b2d713d1dd5ee208d40720))
* **vim:** switch (again) from CtrlP to FZF (and live with the daily segfaults) ([67c8394](https://github.com/adambiggs/dotfiles/commit/67c839445c330f33dae2ebb36b2c9bdce1a47bef))



## [3.3.1](https://github.com/adambiggs/dotfiles/compare/3.3.0...3.3.1) (2015-08-12)


### Bug Fixes

* **tmux:** `grunt-concurrent` broken after removing OSX clipboard hack ([2f221b6](https://github.com/adambiggs/dotfiles/commit/2f221b6000ba10c87a3485d260cb3353180ec784))


### Features

* **iterm:** updated `nerd-fonts` and changed iTerm fonts ([1579c53](https://github.com/adambiggs/dotfiles/commit/1579c53ab199fef4c16f97c18638731e431101b2))
* **tmux:** increase main pane width to make space for GitGutter symbols in Vim ([f210b86](https://github.com/adambiggs/dotfiles/commit/f210b86633e395348ac074868ca5a11eee0b6164))
* **tmux:** minor change to Tmuxinator layout ([fd5dfa4](https://github.com/adambiggs/dotfiles/commit/fd5dfa48e7731636bcfec6005761afc5ad93b2a0))
* **tmux:** remove OSX clipboard workaround - issue fixed in Yosemite ([3d4a99f](https://github.com/adambiggs/dotfiles/commit/3d4a99f4dca0298ccfdb22056c1afc19a2f40baa))
* **vim:** perform `ag` searches from within Vim and narrow results with FZF ([1e143ed](https://github.com/adambiggs/dotfiles/commit/1e143ede5ae16754b21f3c15d1d36277657646fb))
* **vim:** removed `ag.nvim` plugin ([263a20a](https://github.com/adambiggs/dotfiles/commit/263a20aad817651df564ad38cd2dd6d518698e86))


### BREAKING CHANGES

* **tmux:** Tmux will no longer sync the clipboard with OSX in versions before Yosemite.



# [3.3.0](https://github.com/adambiggs/dotfiles/compare/3.2.1...3.3.0) (2015-07-21)


### Features

* removed private repo dependancy for `$ gulp release` task ([1b62e67](https://github.com/adambiggs/dotfiles/commit/1b62e672f4481fb22f803b64d29b002b450118fb))
* **vim:** disable `vimux` plugin for now because I wasn't using it ([0aca592](https://github.com/adambiggs/dotfiles/commit/0aca592d3f71379f75e45881978df592e77148ec))
* **vim:** reorganize `nvimrc` for faster launch times ([626c4df](https://github.com/adambiggs/dotfiles/commit/626c4df06459b2a5fe41bcfb53047c32ea6a4893))



## [3.2.1](https://github.com/adambiggs/dotfiles/compare/3.2.0...3.2.1) (2015-07-21)


### Bug Fixes

* **zsh:** no way to disable `--x-smart-recreate` option with `dcu` alias ([2554680](https://github.com/adambiggs/dotfiles/commit/255468042b11d3f06b94399914fb534556b679bb))


### Features

* **iTerm:** switched back to stable `v2.1.1` cuz nightly was totes ridic slow ([d902ef2](https://github.com/adambiggs/dotfiles/commit/d902ef23922de020e541cb0686b7c65ade74125f))
* **tmux:** added dotfiles window back into Tmuxinator template ([ac198bf](https://github.com/adambiggs/dotfiles/commit/ac198bfa53e765c6cab578b440e4d854995c1fc7))
* **tmux:** change back to default `C-b` prefix binding so Vim can use `C-t` ([bc25198](https://github.com/adambiggs/dotfiles/commit/bc251984f50c3f8603705593c7ac13a632a2fa60))
* **vim:** cleaned up & revised YCM config ([5c702a8](https://github.com/adambiggs/dotfiles/commit/5c702a8df728635fe30987f01be295f54a18d244))
* **vim:** forked `honza/vim-snippets` ([72a1ae2](https://github.com/adambiggs/dotfiles/commit/72a1ae2ff72edcab517926e87ed895f33528bcb3))
* **vim:** UtilSnips now uses `C-s` to expand snippets *and* jump forward ([3c15ed9](https://github.com/adambiggs/dotfiles/commit/3c15ed9e063285ddd72432077533301326d1b0cf))
* **zsh:** switch to more active fork of `zsh-syntax-highlighting` plugin ([e1ccb8a](https://github.com/adambiggs/dotfiles/commit/e1ccb8aab201f418380fa3986785ad7d0fec591e))



# [3.2.0](https://github.com/adambiggs/dotfiles/compare/3.1.2...3.2.0) (2015-07-06)


### Features

* **git:** added linked `.gitconfig` file ([ace06d2](https://github.com/adambiggs/dotfiles/commit/ace06d26704e239f615481321d8a8cfd4cab7ca8))
* **git:** added some useful command aliases ([0189308](https://github.com/adambiggs/dotfiles/commit/0189308bbd6d390e2416562e7bafbc0ba6fc51b0))
* renamed linked files ([7e2fc67](https://github.com/adambiggs/dotfiles/commit/7e2fc670f9c155779796af025b19f6a92c855911))
* **tmux:** added icon to wifi status line module ([0965ed2](https://github.com/adambiggs/dotfiles/commit/0965ed2f66406282c1d40214269b2a70dfcccf03))
* **tmuxinator:** added layout for Docker Machine setup ([52a14cd](https://github.com/adambiggs/dotfiles/commit/52a14cd8fc6b21f982d01739b63790228a0c2a6e))
* **vim:** added Incsearch.vim plugin ([596946a](https://github.com/adambiggs/dotfiles/commit/596946a823a43dd0cf9f6e0ddfa89bc6b987c081))
* **vim:** renamed `.nvimrc` file and some minor cleanup ([8650120](https://github.com/adambiggs/dotfiles/commit/865012084dbff47f93647fd34e806350f6f46a86))
* **zsh:** silence errors in Docker cleanup aliases ([9c13e6e](https://github.com/adambiggs/dotfiles/commit/9c13e6ef179c9cce91938c32f67efd7995187b7b))
* **zsh:** update `dcu` alias, fix issue with AWS completion, and rename file ([1f9df91](https://github.com/adambiggs/dotfiles/commit/1f9df91bbe23a92b0e9fc9e1f183d053b5d7e866))



## [3.1.2](https://github.com/adambiggs/dotfiles/compare/3.1.1...3.1.2) (2015-06-22)


### Features

* iTerm options changed after update ([0b7bf40](https://github.com/adambiggs/dotfiles/commit/0b7bf40a5fd3b7d10b465825f90940208a792622))
* updated NVM ([b36b507](https://github.com/adambiggs/dotfiles/commit/b36b50715ed63f9ef8a54624c5eb8b5aa3b13cfe))
* updated patched fonts ([8086375](https://github.com/adambiggs/dotfiles/commit/8086375041f7c515ab6d14aceb71d4111ed8ee0a))
* updated zgen ([0694e49](https://github.com/adambiggs/dotfiles/commit/0694e494ae2e0d82e21725ba6e47c4ce2efc146b))
* **vim:** removed options that are now NeoVim defaults ([11a3521](https://github.com/adambiggs/dotfiles/commit/11a3521273a6aa3aa34cf299d70486d4636c0488))
* **zsh:** update git submodules before updating zgen plugins ([eda235a](https://github.com/adambiggs/dotfiles/commit/eda235a772724642a2b325d0364cb1ed4de7454d))



## [3.1.1](https://github.com/adambiggs/dotfiles/compare/3.1.0...3.1.1) (2015-06-08)


### Bug Fixes

* **git:** only globally ignore `tags` in the root of a repo ([2227b55](https://github.com/adambiggs/dotfiles/commit/2227b55b0278df887c9a674d90025465ff7fbe20))
* **vim:** GitGutter default mappings cause delay with EasyMotion mappings ([cc15926](https://github.com/adambiggs/dotfiles/commit/cc159263c314cac83545e4a64c13417a34ef3e17))


### Features

* updated NVM to latest HEAD ([93e0c02](https://github.com/adambiggs/dotfiles/commit/93e0c02b23a591341c4534b46924404b77a5057a))
* **vim:** change Markdown preview from `Marked.app` to `Marked 2.app` ([2d6d5e9](https://github.com/adambiggs/dotfiles/commit/2d6d5e954b3f4b589e011513edb238c94985e73d))
* **vim:** increase GitGutter max number of signs from `500` to `10000` ([1b715f6](https://github.com/adambiggs/dotfiles/commit/1b715f683b6928dd8de2c96b69e4e08cd795dabd))
* **vim:** reduce `updatetime` to 750ms ([8894998](https://github.com/adambiggs/dotfiles/commit/889499807483cb75d9a836d6b472cf8c29e8c1b2))
* **zsh:** remove `zsh-notify` plugin cuz it was getting annoying ([ce3fbbf](https://github.com/adambiggs/dotfiles/commit/ce3fbbf3cb9536855903a34c935249578796434f))
* **zsh:** uninstall `opp.zsh` - Zsh 5.0.8 has native `textobject` support ([c0f138f](https://github.com/adambiggs/dotfiles/commit/c0f138fe71daba32de80c516cebea5453279036f))



# [3.1.0](https://github.com/adambiggs/dotfiles/compare/3.0.0...3.1.0) (2015-05-21)


### Bug Fixes

* `link` script creates nested `.tmuxinator` symlinks ([6e59706](https://github.com/adambiggs/dotfiles/commit/6e5970610a618da31f512e4013457e3a89806c8e))
* `link` script throws an error due to wrong path ([d9006c5](https://github.com/adambiggs/dotfiles/commit/d9006c50831d0573002d5b44168b1abced412df9))


### Features

* added global `.agignore` file ([026a6b9](https://github.com/adambiggs/dotfiles/commit/026a6b9b1e5594651398e08618a796c4d005ced8))
* added global `.gitignore` file ([8a06a41](https://github.com/adambiggs/dotfiles/commit/8a06a41ed56c0fba4a6f44edbb74dc44e68d8a62))
* **vim:** activated Vdebug continuous mode by default ([60cc8a6](https://github.com/adambiggs/dotfiles/commit/60cc8a6c00945dcaa45527f9cf206626493d8366))
* **vim:** added `ag.nvim` plugin ([87ce4e8](https://github.com/adambiggs/dotfiles/commit/87ce4e8d5e19bb3ae3220502c73d8812f55da6f5))



# [3.0.0](https://github.com/adambiggs/dotfiles/compare/2.2.0...3.0.0) (2015-05-20)


### Bug Fixes

* **vim:** CtrlP plugin config not working ([53c05a4](https://github.com/adambiggs/dotfiles/commit/53c05a43066496f7c1e77d85d573753391b40f5d))


### Features

* **tmux:** changed leader mapping from `C-a` to `C-t` for Vim compatability ([e326d71](https://github.com/adambiggs/dotfiles/commit/e326d714e12bbb6ced8fa95380c9fa555dbc566b))
* updated `nvm` ([76aaaf7](https://github.com/adambiggs/dotfiles/commit/76aaaf7b9dcf7cc2744e4f9e2290d4b43116333e))
* **vim:** added `ctrlp-cmatcher` plugin ([7a7cece](https://github.com/adambiggs/dotfiles/commit/7a7cece0b9a9a0c62716c74f7dbc6beff8aa8462))
* **vim:** added Ctrl-Space mapping for buffer browsing with CtrlP ([28d071d](https://github.com/adambiggs/dotfiles/commit/28d071db074ea8969dd89dfc4678d4a22ebdbb0b))
* **vim:** enabled CtrlP lazy update and Tag search extension ([bdec2c5](https://github.com/adambiggs/dotfiles/commit/bdec2c5a8ba9abd404b28d52ed3b8dcf867b2b3b))
* **vim:** got rid of `vim-startify` because I wasn't using it ([1fd6f81](https://github.com/adambiggs/dotfiles/commit/1fd6f813989e5092ee4641484be7d9fa108fab8c))
* **vim:** switched `tabular` plugin to `vim-easy-align` ([1665a21](https://github.com/adambiggs/dotfiles/commit/1665a21dc9413c3d4a3d86288328deedf337399a))



# [2.2.0](https://github.com/adambiggs/dotfiles/compare/2.1.1...2.2.0) (2015-05-15)


### Bug Fixes

* **vim:** FZF currently very broken in NeoVim - Switch back to CtrlP for now ([08944cb](https://github.com/adambiggs/dotfiles/commit/08944cb42cc67cd9b11158a55b7787a0e9e16ad4))
* **vim:** remove `options` from `viewoptions` setting ([9aa38d3](https://github.com/adambiggs/dotfiles/commit/9aa38d3d11090d14c328530d1e7d0482e2a73cf5))


### Features

* updated `nvm` ([2a2534b](https://github.com/adambiggs/dotfiles/commit/2a2534bb0d94bf457e979622463d77b527493ee0))
* updated `nvm` ([a63b2c5](https://github.com/adambiggs/dotfiles/commit/a63b2c5ea1f68c04cf0b67805274e930ec6bc748))
* updated `zgen` ([3bdb128](https://github.com/adambiggs/dotfiles/commit/3bdb128e488e1f9e7ddd0c7dba48066227f2974a))
* updated `zgen` ([4c36faf](https://github.com/adambiggs/dotfiles/commit/4c36faff8fcbddaa1a0565b31e8037d3352e82fe))
* **vim:** installed `vim-peekaboo` plugin ([87002f2](https://github.com/adambiggs/dotfiles/commit/87002f2969546570cc2cd31bf8fc289b2a4e586f))
* **vim:** installed `visualrepeat` plugin ([3d1a4a9](https://github.com/adambiggs/dotfiles/commit/3d1a4a9fc6553b3d9dbb3855d3bc9195f6a60ed2))
* **vim:** installed NERDTree CoffeeScript filter plugin ([214accd](https://github.com/adambiggs/dotfiles/commit/214accd728cc266e843468b65263c14e49008342))
* **zsh:** added aliases to help debug NeoVim segfaults ([01b61b1](https://github.com/adambiggs/dotfiles/commit/01b61b1a19e25fb084a21b0973ca79f6d515e277))



## [2.1.1](https://github.com/adambiggs/dotfiles/compare/2.1.0...2.1.1) (2015-05-04)


### Bug Fixes

* **vim:** `fzf` keymaps not working after changing install directory ([c4af63f](https://github.com/adambiggs/dotfiles/commit/c4af63f029339b3fffee0885f2ed0bdeb13de16d))


### Features

* updated NVM to latest origin commit ([261e980](https://github.com/adambiggs/dotfiles/commit/261e980eb524d9dc4dab392904d12833e994fc6f))
* **vim:** got Tagbar plugin working again ([ba4ad77](https://github.com/adambiggs/dotfiles/commit/ba4ad776bf4e0a5d05940996bfe7739f1f8d5f3b))
* **vim:** switched Syntastic back to NeoMake (no longer broken in NeoVim) ([b36969f](https://github.com/adambiggs/dotfiles/commit/b36969fc2a00f0e2575e5aed693001a31d429c34))



# [2.1.0](https://github.com/adambiggs/dotfiles/compare/2.0.0...2.1.0) (2015-05-04)


### Bug Fixes

* **update:** fetch remote before comparing NeoVim commits ([40cb2bc](https://github.com/adambiggs/dotfiles/commit/40cb2bcdc004231ed5948baddffa45fc3afeb417))
* **update:** OhMyZSH waits for prompt before updating ([4afa1f1](https://github.com/adambiggs/dotfiles/commit/4afa1f1e1350f35429fecc096d80a94e8d0768ee))


### Features

* removed `fzf` git submodule, install with VimPlug instead ([c893a6a](https://github.com/adambiggs/dotfiles/commit/c893a6a06322e9496c4f86d3997aa426048ef970))
* **update:** reinstall NeoVim from latest HEAD if there are updates available ([c965d40](https://github.com/adambiggs/dotfiles/commit/c965d403a83ca2115fe806ba6a6dcde553c652b2))



# [2.0.0](https://github.com/adambiggs/dotfiles/compare/1.6.2...2.0.0) (2015-04-23)


### Bug Fixes

* **update:** wrong path to `colors` script ([83c70dd](https://github.com/adambiggs/dotfiles/commit/83c70dd4e6ab3f7b9ee69a0aa706711c5059f4ce))


### Features

* install glyph fonts, refactored `install`/`link`/`update` scripts ([e6272ef](https://github.com/adambiggs/dotfiles/commit/e6272effb00fb80946c3d9ea92249226bf5ef19c))
* **iTerm:** changed font ([d0839a3](https://github.com/adambiggs/dotfiles/commit/d0839a3bbdf1db7fdcc2121d420560436b30d504))
* removed `patched-fonts` submodule ([1d3ba37](https://github.com/adambiggs/dotfiles/commit/1d3ba37974b81b20e8ffd687ba3fbbe3204b429b))
* **tmuxinator:** updated `lmpm.yml` to make better use of `vim-prosession` ([d861233](https://github.com/adambiggs/dotfiles/commit/d8612332de08dfccc3291e4c869ff15d9ccfec6c))
* updated `fzf`, `nvm`, and `zgen` submodules ([8063787](https://github.com/adambiggs/dotfiles/commit/8063787f0e40ae039d139f51b214b1f69ab713e5))
* **vim:** installed `php.vim` plugin ([1af6954](https://github.com/adambiggs/dotfiles/commit/1af6954368ee8c78a78cf886d0ee3f4fb89d3ec0))
* **vim:** installed `vim-prosession` session management plugin ([14cbbb2](https://github.com/adambiggs/dotfiles/commit/14cbbb26946032a2b170debcc660755f5e700221))
* **vim:** installed `vim-webdevicons` and glyph patched fonts ([a8f5533](https://github.com/adambiggs/dotfiles/commit/a8f553305f618e5934dd1743ec2d56f46acbadef))



## [1.6.2](https://github.com/adambiggs/dotfiles/compare/1.6.1...1.6.2) (2015-04-17)


### Features

* **fzf:** use `--multi` mode by default ([d478f7c](https://github.com/adambiggs/dotfiles/commit/d478f7cde377313645339afb547b28eb91543e26))
* **fzf:** use CtrlP mappings in FZF ([7a40234](https://github.com/adambiggs/dotfiles/commit/7a4023493155aae979a16b9a0e46513ba244f7fd))
* updated `nvm` ([caf8b80](https://github.com/adambiggs/dotfiles/commit/caf8b802abcf6ae9b5f793448fd3fb0d80e4789c))
* **update:** update `zgen` and use it to update `zsh` plugins ([a077f18](https://github.com/adambiggs/dotfiles/commit/a077f18487a54cd8043ffddf3de6281bbb651f9a))
* **vim:** browse buffers with FZF and remove CtrlSpace ([212e9ee](https://github.com/adambiggs/dotfiles/commit/212e9ee0f0705e0ffc2b78689ab54a1339c532f7))



## [1.6.1](https://github.com/adambiggs/dotfiles/compare/1.6.0...1.6.1) (2015-04-12)


### Bug Fixes

* **install:** if `brew` already exists, it might install out-of-date packages ([d1a0dbf](https://github.com/adambiggs/dotfiles/commit/d1a0dbf8882283b420e214ab00c17d44e4b9f7d3))


### Features

* updated `fzf` ([d55afc2](https://github.com/adambiggs/dotfiles/commit/d55afc2c09cd05b5d7b47c31a577d9142aae0bc9))
* updated `nvm` ([41bd370](https://github.com/adambiggs/dotfiles/commit/41bd3707a0e4fffd5d50693f6ca850a84de2a3bc))
* **vim:** more smarter Utilsnips keymaps ([7a7cec5](https://github.com/adambiggs/dotfiles/commit/7a7cec59cd3cae088039bffae28555436b32f69c))



# [1.6.0](https://github.com/adambiggs/dotfiles/compare/1.5.4...1.6.0) (2015-04-11)


### Bug Fixes

* **vim:** Handlebars plugin not activating properly ([c0a02c5](https://github.com/adambiggs/dotfiles/commit/c0a02c552d66235ba120d024ba8fcabc9e4c5dd0))
* **vim:** pane navigation keymaps broken in new NeoVim terminal buffers ([9af92f1](https://github.com/adambiggs/dotfiles/commit/9af92f1fe636f45ca846da75a791263a0630e66a))
* **vim:** Utilsnips keymaps not working ([744ea43](https://github.com/adambiggs/dotfiles/commit/744ea4396c45366cde426873fae5a2a002b506e3))
* **zsh:** `fzf` keybindings not working ([cd978bf](https://github.com/adambiggs/dotfiles/commit/cd978bf9fda75a4b231068c042a085c031c34d16))


### Features

* update fzf ([862b118](https://github.com/adambiggs/dotfiles/commit/862b1182828dd72f3c878c59bda5abbe4e2f72aa))
* **vim:** deactivate Tern plugin till I get around to making shit work right ([b7edb7b](https://github.com/adambiggs/dotfiles/commit/b7edb7bdcfbd03049b92ee64901b943c8b9b4703))
* **vim:** remove Unite plugin ([48a82b4](https://github.com/adambiggs/dotfiles/commit/48a82b444557fc01c8572a7e8cd8cfdd2c671cbb))
* **vim:** replace Unite with fzf for CtrlP mapping ([8a6cefa](https://github.com/adambiggs/dotfiles/commit/8a6cefa37d3a9221c69efa21d4955f61b7de314f))
* **vim:** update Airline tabline config ([ab19ae1](https://github.com/adambiggs/dotfiles/commit/ab19ae160ad09f64e34d2d8cb683fb16a4af97ec))
* **zsh:** get rid of aliases I don't use anymore ([4a741db](https://github.com/adambiggs/dotfiles/commit/4a741db0b2896ec101c1df909e05c9f918e2a05b))



## [1.5.4](https://github.com/adambiggs/dotfiles/compare/1.5.3...1.5.4) (2015-04-09)


### Bug Fixes

* **install:** don't install `gem` packages with sudo ([55b6e71](https://github.com/adambiggs/dotfiles/commit/55b6e71594ecd1ba81ff90dfc12663d37e8ba4fa))
* **update:** don't use sudo when updating `pip` packages ([95b9cbe](https://github.com/adambiggs/dotfiles/commit/95b9cbeee1ebdaf4b167633b6bfee2fc5bf65ebd))


### Features

* **install:** install brewed `python`, and improved Linux support ([ab4f853](https://github.com/adambiggs/dotfiles/commit/ab4f853d37eb9ac167e31401f8d6005810f3f277))
* **install:** install script updates existing git submodules to latest remote ([3bec295](https://github.com/adambiggs/dotfiles/commit/3bec2959903fbc4a825f78b8faa054c7d896f3e2))
* **install:** only install `pip` packages that haven't been installed yet ([dedffbf](https://github.com/adambiggs/dotfiles/commit/dedffbfb2380783b8910c2d41e007e52f22c6eb5))
* **tmuxinator:** updated lmpm workspace layout ([1b849a0](https://github.com/adambiggs/dotfiles/commit/1b849a0e4507652b8c5b64264fd5fd2fe762e639))



## [1.5.3](https://github.com/adambiggs/dotfiles/compare/1.5.2...1.5.3) (2015-04-08)


### Bug Fixes

* **vim:** remove `vim-tmux-focus-events` plugin b/c it doesn't work with NeoVim ([64fcba6](https://github.com/adambiggs/dotfiles/commit/64fcba65c223771bf3d083d55ce55005bbe54e66))


### Features

* add `fzf` vim plugin, zsh config, and add it to install script ([c6f37d1](https://github.com/adambiggs/dotfiles/commit/c6f37d13b80e1044e0440e51a5881c577182be71))
* added `fzf` git submodule ([a9ca4aa](https://github.com/adambiggs/dotfiles/commit/a9ca4aa1d1db6cc8575ff86b18c3374cdf0f8721))
* updated `patched-fonts` to latest version ([0d894cf](https://github.com/adambiggs/dotfiles/commit/0d894cf58e6a1ef1e400345a93bb0393e865781b))
* updated NVM to latest version ([0483ba6](https://github.com/adambiggs/dotfiles/commit/0483ba66dfec281e0ac2293f5f71d5044157202f))
* **update:** rebase submodules to latest commit in remote tracking branch ([7828dc8](https://github.com/adambiggs/dotfiles/commit/7828dc8961492f4faedf156f5a3bda06a327476e))
* **vim:** auto-escape pasted characters in Over.vim commands ([141cfc7](https://github.com/adambiggs/dotfiles/commit/141cfc76f4f4cad3c2e1b6132e36d6acb32f5984))
* **vim:** change Over.vim keymaps and add one to substitute visual selection ([909b851](https://github.com/adambiggs/dotfiles/commit/909b85149c68ad7d418aebbbd2d5d856ce0c4f5e))
* **vim:** disable `smartindent` b/c it was acting weird in some scenarios ([16e0a1e](https://github.com/adambiggs/dotfiles/commit/16e0a1ea5cb0fc13dbffede985d629df111a4e5f))
* **vim:** disable unused Vimux keymappings ([992093f](https://github.com/adambiggs/dotfiles/commit/992093fbe4b6e3f140c6e0561934beac5bbad900))



## [1.5.2](https://github.com/adambiggs/dotfiles/compare/1.5.1...1.5.2) (2015-03-31)


### Features

* **link:** make link script non-interactive (regenerate links without asking) ([8734d21](https://github.com/adambiggs/dotfiles/commit/8734d21e33f8b8149e6aa2b22c575ff7c8a013a8))
* **vim:** expand paths of temp files to avoid filename clashes ([3e36aed](https://github.com/adambiggs/dotfiles/commit/3e36aed2c91c46e88e5d444f9266af70b74a6df5))
* **vim:** switch from `vim-signify` to `vim-gitgutter` cuz I only use Git ([e853ee6](https://github.com/adambiggs/dotfiles/commit/e853ee60025aaa2998d5ce7b0ce02e5de2b3c77d))
* **vim:** who needs swap files anyway? ([0306137](https://github.com/adambiggs/dotfiles/commit/030613760a68edfd6eceaf861cf33a6df19c47b0))



## [1.5.1](https://github.com/adambiggs/dotfiles/compare/1.5.0...1.5.1) (2015-03-30)


### Features

* **install:** check if ruby gems are already installed ([4f93c87](https://github.com/adambiggs/dotfiles/commit/4f93c8788d92cd83c3ef6da4c5967304e7cf54a2))
* **install:** install Karabiner ([87bc341](https://github.com/adambiggs/dotfiles/commit/87bc341e110f70dacbb78cbe212a6cbadf5243d0))



# [1.5.0](https://github.com/adambiggs/dotfiles/compare/1.4.0...1.5.0) (2015-03-30)


### Bug Fixes

* **install:** `battery` brew package needs to be tapped ([d56c790](https://github.com/adambiggs/dotfiles/commit/d56c790c27cb24988b1d091def0885a2db5ffd22))
* **install:** shouldn't try to install Mac packages in Linux... ([61872ee](https://github.com/adambiggs/dotfiles/commit/61872ee0282924b15d628493d999cf326293ac75))
* **update:** `git submodule sync` command seems to leave submodules detached ([7f6415e](https://github.com/adambiggs/dotfiles/commit/7f6415eb1251a0732506503dbef4caff5fb1d382))


### Features

* added aws cli zsh completions ([d2dcebb](https://github.com/adambiggs/dotfiles/commit/d2dcebb538302d2a39e1f57208c4ed9852066c55))
* added iTerm CLI integration feature ([991e84f](https://github.com/adambiggs/dotfiles/commit/991e84f25264811da41d0b67ec860c9bfb41509d))
* **docker:** much improved Dockerfile ([1e99d2a](https://github.com/adambiggs/dotfiles/commit/1e99d2a3296e1dee6ca8371a931d06903724f3fb))
* don't create neovim spellfile symlink. use `:set spell` instead ([d90ce43](https://github.com/adambiggs/dotfiles/commit/d90ce4377459c4afba5a84ef049c64156323a019))
* **install:** install GUI apps using Homebrew Cask ([b4b0fe7](https://github.com/adambiggs/dotfiles/commit/b4b0fe75a2e23c0daa6a5cf51524c0ccbce08ca1))
* **install:** install Pip packages ([a05e7c8](https://github.com/adambiggs/dotfiles/commit/a05e7c86c4edf505e6cca66ebcb659154ec84e99))
* **install:** install Ruby gems ([2612689](https://github.com/adambiggs/dotfiles/commit/2612689dcbb8f99c1a31ccff7907cd4e971740e0))
* **install:** update script to install patched Powerline fonts ([3892ecd](https://github.com/adambiggs/dotfiles/commit/3892ecd7026c6f7b900e46b795ba739764dc1da7))
* store custom Karabiner key mappings ([36f876e](https://github.com/adambiggs/dotfiles/commit/36f876ea835190a048fe7f19d615ac35ae06d7ea))
* **vim:** move all neovim plugins to `~/.nvim/plugged` directory ([f6242b9](https://github.com/adambiggs/dotfiles/commit/f6242b9bc83ff86cf931d3f3edf3a44d79535524))
* **vim:** switch from VimPlug back to Syntastic due to breaking NeoVim changes ([03bb909](https://github.com/adambiggs/dotfiles/commit/03bb90981654a18d6489fbddf72062bf48094c25))
* **vim:** use a single `<Leader>` for all default EasyMotion mappings ([25119bd](https://github.com/adambiggs/dotfiles/commit/25119bd6a9ce93945b682f5d67a9cccc44851675))
* **zsh:** added `zsh-notify` plugin ([41f3837](https://github.com/adambiggs/dotfiles/commit/41f383725e1c0cf5b7dc08166cf4555d2f5f6037))
* **zsh:** alias `github` to `gitit` ([007df21](https://github.com/adambiggs/dotfiles/commit/007df21a80d1b96f42b992fd9c29f629dbfab36b))



# [1.4.0](https://github.com/adambiggs/dotfiles/compare/1.3.1...1.4.0) (2015-03-24)


### Bug Fixes

* typo in `install.sh` script ([5126559](https://github.com/adambiggs/dotfiles/commit/5126559cd0bec05705f1b9d2dd3379f6dbe02e71))
* **vim:** insert mode cursor shape not changing ([6c015e4](https://github.com/adambiggs/dotfiles/commit/6c015e4f7853c9a57da54639e7a8da805bca7c04))


### Features

* added `nvm` as a submodule ([5a467e8](https://github.com/adambiggs/dotfiles/commit/5a467e8d16d7726c5c0fb646b295270c5fdaa4c4))
* **update:** update git submodules ([16bbe99](https://github.com/adambiggs/dotfiles/commit/16bbe99c305162bf03ae4a1fd0111baf8192d8e1))
* **vim:** added `sass-syntax` plugin ([48a4ced](https://github.com/adambiggs/dotfiles/commit/48a4ced851691e19caa55920123ab0bccac25d44))
* **vim:** added `vim-tmux` and `vim-tmux-focus-events` plugins ([7501f27](https://github.com/adambiggs/dotfiles/commit/7501f27e634c8f7e4961404c3008b1d0f4071ea7))
* **vim:** on-demand plugin loading for faster launch ([f298f6f](https://github.com/adambiggs/dotfiles/commit/f298f6f13b83a5297925e6f7e73beb20240f84bc))
* **vim:** set global options for `vdebug` plugin ([c735dfc](https://github.com/adambiggs/dotfiles/commit/c735dfcd1bfb80dd5ed2a92d59ffc31effbc437f))
* **vim:** some extra vim config tweaks ([6985f81](https://github.com/adambiggs/dotfiles/commit/6985f8147598730fd16ba0e47bf8871154aa37ea))
* **vim:** switched to my fork of `vdebug` plugin ([2affc76](https://github.com/adambiggs/dotfiles/commit/2affc766a2f6bf93b57e1066b78822bd7e4e90d1))



## [1.3.1](https://github.com/adambiggs/dotfiles/compare/1.3.0...1.3.1) (2015-03-24)


### Bug Fixes

* **vim:** Startify config disables IndentGuides plugin globally ([4b216d5](https://github.com/adambiggs/dotfiles/commit/4b216d5bf48838258d3d336153f3a58c28482c61))
* **zsh:** only source NVM if it exists ([26a4b5b](https://github.com/adambiggs/dotfiles/commit/26a4b5b74ab07bba6c791a6c3e74bba2c352a3ca))


### Features

* install script now installs Vim plugins ([16930f9](https://github.com/adambiggs/dotfiles/commit/16930f9aaf17f3e7494e1deef5ff1643b11973d8))
* **install:** added `ctags` and `battery` brew packages ([acccc9b](https://github.com/adambiggs/dotfiles/commit/acccc9b57d97296676432193f74d37c075938d14))
* store iTerm2 preferences in the repo ([4fff5d5](https://github.com/adambiggs/dotfiles/commit/4fff5d59e8dfc67bc7c70bd7bde1a971c273eb70))
* **tmux:** tweaked some tmux settings ([a93ab8e](https://github.com/adambiggs/dotfiles/commit/a93ab8eee2fabbfe2b4f793ddf8d70c96eadf7e5))
* **vim:** added heading for Startify sessions ([dd159f0](https://github.com/adambiggs/dotfiles/commit/dd159f08f4d43718eb1da30298253410b5b0acd2))
* **vim:** better looking indent guides when not using default 2-spaces ([686772c](https://github.com/adambiggs/dotfiles/commit/686772c9d0c8fd48f17b257f23af133088fda101))
* **vim:** show NeoVim commit in Startify footer ([6531dd3](https://github.com/adambiggs/dotfiles/commit/6531dd369c1b257192fcd0ff2121c44157b04082))



# [1.3.0](https://github.com/adambiggs/dotfiles/compare/1.2.4...1.3.0) (2015-03-23)


### Features

* install script ([609ace7](https://github.com/adambiggs/dotfiles/commit/609ace72ad2504c646e945e8f144729bf80f5a60))
* more better install script ([fa3bac6](https://github.com/adambiggs/dotfiles/commit/fa3bac6b667f1059ba99b5a9f22f66cb81dda96f))
* update script (wip) ([772dc03](https://github.com/adambiggs/dotfiles/commit/772dc0310a6c2c7b737128d7c7c4f749716dada1))
* **vim:** added Startify plugin and customized config ([422ccac](https://github.com/adambiggs/dotfiles/commit/422ccac4953a249c394ad59e0fb543700e123e47))
* **zsh:** only source `nvm` if it's been installed ([014893a](https://github.com/adambiggs/dotfiles/commit/014893ae35a9126fc43a9f95442ee23a7208ad58))



## [1.2.4](https://github.com/adambiggs/dotfiles/compare/1.2.3...1.2.4) (2015-03-20)


### Bug Fixes

* **vim:** `<C-h>` key mapping no longer working due to weird terminal behaviour ([2c1e935](https://github.com/adambiggs/dotfiles/commit/2c1e935ba34a95a93daf7260284020fe0eb42ba3)), closes [/github.com/neovim/neovim/issues/2048#issuecomment-78045837](https://github.com//github.com/neovim/neovim/issues/2048/issues/issuecomment-78045837)
* **zsh:** `2ds` boot2docker alias not working ([6de4ac4](https://github.com/adambiggs/dotfiles/commit/6de4ac4eeab56814c92477f4ed55b87cd0e7e24e))


### Features

* installed `neovim-ruby` submodule ([680fe4f](https://github.com/adambiggs/dotfiles/commit/680fe4f67182319281043d159ab5b9351db66ddb))
* **tmuxinator:** added window to work on base Docker images ([b8fd665](https://github.com/adambiggs/dotfiles/commit/b8fd66570da21bd6acb9836acba37ab702c44b3b))
* **tmuxinator:** moved `spine-xp` repo into `lmpm` project directory ([75b5125](https://github.com/adambiggs/dotfiles/commit/75b5125aead3feb727692c24be7028a5c1c70b80))
* **vim:** changed PHP indentation to use 4 spaces as per PSR-2 ([7dcb4f4](https://github.com/adambiggs/dotfiles/commit/7dcb4f42ee99109fb5794573581104d7053949a6))
* **zsh:** added Docker Compose zsh completion plugin ([7827062](https://github.com/adambiggs/dotfiles/commit/78270620f903737d32f83252f670fb02ba3d2f4b))
* **zsh:** updated aliases ([cfe0d2c](https://github.com/adambiggs/dotfiles/commit/cfe0d2cef0c63fb317acca3642ddfd10dce6f0cb))



## [1.2.3](https://github.com/adambiggs/dotfiles/compare/1.2.2...1.2.3) (2015-03-06)


### Bug Fixes

* **vim:** highlight isn't re-enabled when performing a search ([1090090](https://github.com/adambiggs/dotfiles/commit/1090090dc40da60bcfa12903b7ee15f2f1a78d5f))


### Features

* **lmpm:** updated tmuxinator template a little ([1fe16fd](https://github.com/adambiggs/dotfiles/commit/1fe16fd4b74d01c470928781b9d9d1c88a50b2e4))
* **vim:** added `vim-visual-star-search` plugin ([0ff4e17](https://github.com/adambiggs/dotfiles/commit/0ff4e172b383a16abb909f0d49096f5a9e1fb506))
* **vim:** added mappings for quick EasyMotion word navigation ([54414a4](https://github.com/adambiggs/dotfiles/commit/54414a411e6fb088c794010685c552e1c9cd52d8))
* **zgen:** upgraded to latest version ([4809893](https://github.com/adambiggs/dotfiles/commit/4809893563e8aee515d86f16d82d80fb878f8a8b))



## [1.2.2](https://github.com/adambiggs/dotfiles/compare/1.2.1...1.2.2) (2015-03-02)


### Features

* **tmuxinator:** update to use new window-root feature ([1c6c55f](https://github.com/adambiggs/dotfiles/commit/1c6c55f0b86860aa2dcfcf4c9555e9ca5dd143e2))
* **tmux:** update status line every 5 seconds ([e2b6dbb](https://github.com/adambiggs/dotfiles/commit/e2b6dbbb1ae7aa9ac5be89b9ee0c038627897169))
* **zgen:** update to latest version ([fc00be5](https://github.com/adambiggs/dotfiles/commit/fc00be5ea3829a39c6361f019b53481903dc6e88))
* **zsh:** add `docker-machine` alias ([8684b1c](https://github.com/adambiggs/dotfiles/commit/8684b1cb90dbe57f3012a1f7dfa5793248bef98b))



## [1.2.1](https://github.com/adambiggs/dotfiles/compare/1.2.0...1.2.1) (2015-02-25)


### Features

* added `.zlogin` file ([e402e81](https://github.com/adambiggs/dotfiles/commit/e402e81b2d511b1df6dd14839ad091a59e6c15c0))
* **tmux:** added CPU meter and now-playing to Tmuxline template ([6e327c8](https://github.com/adambiggs/dotfiles/commit/6e327c8283896c1f467bc758eb58bebedffeedf6))
* **tmuxinator:** got rid of unnecessary panel from main control window ([03f0c68](https://github.com/adambiggs/dotfiles/commit/03f0c68b612cd31ea1f6341587e1961001633d9e))



# [1.2.0](https://github.com/adambiggs/dotfiles/compare/1.1.1...1.2.0) (2015-02-16)


### Bug Fixes

* **lmpm:** `docker-compose` startup commands take way too long ([430ae0f](https://github.com/adambiggs/dotfiles/commit/430ae0f9af17182d42e6f2abced227b80cab8557))
* **vim:** finally found nice looking colors for `vim-indent-guides` plugin ([a7dbac5](https://github.com/adambiggs/dotfiles/commit/a7dbac521471d9319c76a4dcb245e1855c24987b))
* **zgen:** `selfupdate` doesn't work ([2014af4](https://github.com/adambiggs/dotfiles/commit/2014af40a7845d34ecce17db898eac420eca67cf))


### Features

* added a couple more `Tabular` bindings ([fe89880](https://github.com/adambiggs/dotfiles/commit/fe898804db185097e68a0d573474a5e3f34edf5a))
* **tux:** custom Tmuxline theme that works outside Vim ([007634f](https://github.com/adambiggs/dotfiles/commit/007634f70866c4cd20834b457cc66ce19522e50f))
* **vim:** slightly smaller NERDTree window ([d6d88bc](https://github.com/adambiggs/dotfiles/commit/d6d88bc9aab72d7e3bc41ea9ec511b983feccd06))
* **zsh:** added a few more useful zsh plugins ([87d941d](https://github.com/adambiggs/dotfiles/commit/87d941db1b07cc6cdb44a4cef718b6c2e2ddbb93))
* **zsh:** added basic find-and-replace `sed` shortcut ([a8a54cb](https://github.com/adambiggs/dotfiles/commit/a8a54cb9ad1119eb18b77c2ce2c45bbc4c143886))
* **zsh:** removed some unused aliases ([b622064](https://github.com/adambiggs/dotfiles/commit/b6220645d904febcb2f0aed5601dce5926274d0f))



## [1.1.1](https://github.com/adambiggs/dotfiles/compare/1.1.0...1.1.1) (2015-02-11)


### Bug Fixes

* **vim:** Airline patched fonts not working in NeoVim ([52bd64c](https://github.com/adambiggs/dotfiles/commit/52bd64cd2c2a44a3ce5ec6930fa3a675a43709e0))


### Features

* **zsh:** switched from `antigen` to `zgen` ([44b3e39](https://github.com/adambiggs/dotfiles/commit/44b3e39f8db375188ffb0b8fd6962028f4c18ae5))



# [1.1.0](https://github.com/adambiggs/dotfiles/compare/1.0.2...1.1.0) (2015-02-11)


### Features

* added `base16` terminal themes as submodules ([80d11e7](https://github.com/adambiggs/dotfiles/commit/80d11e7e5ecef899aaff6e3eec90e16a84da0905))
* added powerline patched fonts as submodule ([9c09c67](https://github.com/adambiggs/dotfiles/commit/9c09c670e5c67b0372370921c1dc8886537935fe))
* switched theme from `solarized` to `eighties` (using `base16` library) ([7e1a16b](https://github.com/adambiggs/dotfiles/commit/7e1a16b4e5b58f5359ffb1a60459b7518d16dbc6))
* **vim:** let Airline choose it's theme automatically based on Vim theme ([aa88726](https://github.com/adambiggs/dotfiles/commit/aa8872674cd4252796235ea0de3ca47ee3df5128))



## [1.0.2](https://github.com/adambiggs/dotfiles/compare/1.0.1...1.0.2) (2015-02-11)


### Bug Fixes

* cursor not changing shape in insert mode ([714972d](https://github.com/adambiggs/dotfiles/commit/714972d4db0f3ad49fa6396666f1b6fb5670c3aa))
* did I just refer to myself in the 3rd person? ([9404d86](https://github.com/adambiggs/dotfiles/commit/9404d863874a159b2ab8054600048e82c45ee4ae))
* link script creating weird nested links if run multiple times ([6191f48](https://github.com/adambiggs/dotfiles/commit/6191f4807285ff295b07d7b2a3be5898d2ea892c))
* **tmuxinator:** can't do that there... ([b98e187](https://github.com/adambiggs/dotfiles/commit/b98e187c7b87f2a5182156d301f4044658b8553b))
* **vim:** spell file errors when opening certain files ([b908db5](https://github.com/adambiggs/dotfiles/commit/b908db59e01cfce733df3d6dfd6fa5fc3fa4b3e9)), closes [#1](https://github.com/adambiggs/dotfiles/issues/1)



## [1.0.1](https://github.com/adambiggs/dotfiles/compare/1.0.0...1.0.1) (2015-02-06)


### Bug Fixes

* always use absolute path of `link.sh` script when creating symlinks ([fe9d3d2](https://github.com/adambiggs/dotfiles/commit/fe9d3d2eccce581a96ffbc07a1c0bcdaa290fd8b))


### Features

* added tmuxinator config to the repo ([a8c5070](https://github.com/adambiggs/dotfiles/commit/a8c507092ff7acd706329d6859dcf162c32003b7))



# [1.0.0](https://github.com/adambiggs/dotfiles/compare/7b3c08ff9ac6ad996598dc92d694bca62bd086e8...1.0.0) (2015-02-06)


### Features

* added gulp release task ([8820c77](https://github.com/adambiggs/dotfiles/commit/8820c77d69e2ba95442a7d4e42fe4af2ee5fca1a))
* added some Docker aliases ([1769b1a](https://github.com/adambiggs/dotfiles/commit/1769b1a98c941e466b2e3e639da1e4162c7b0c69))
* don't source AWS SSH key for every new terminal ([b4db8e3](https://github.com/adambiggs/dotfiles/commit/b4db8e363890f1a9fa7c1ef5db0622ae89709c5e))
* initial commit ([7b3c08f](https://github.com/adambiggs/dotfiles/commit/7b3c08ff9ac6ad996598dc92d694bca62bd086e8))
* **lmpm:** added LMPM build script alias ([c4f329b](https://github.com/adambiggs/dotfiles/commit/c4f329b92ae122a4d6e8373aae7d1bde112daa26))
* uninstalled PHP via Brew. No need for extra stuff in `$PATH` ([6261cd9](https://github.com/adambiggs/dotfiles/commit/6261cd941890af2fd4e311e8dfc1cb09add5fc1b))
* **vim:** added `.nvimrc` file ([5b5c738](https://github.com/adambiggs/dotfiles/commit/5b5c738dc9ac2fb866fb0db5d9660334b64d7999))
* **vim:** clean up NeoVim temp files with `vimclean` alias ([4c25268](https://github.com/adambiggs/dotfiles/commit/4c252683c78f346c041bf6629bcb2164de0173b9))



