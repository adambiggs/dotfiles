## 3.1.0 (2015-05-21)


#### Bug Fixes

* `link` script creates nested `.tmuxinator` symlinks ([6e597061](https://github.com/adambiggs/dotfiles.git/commit/6e5970610a618da31f512e4013457e3a89806c8e))
* `link` script throws an error due to wrong path ([d9006c50](https://github.com/adambiggs/dotfiles.git/commit/d9006c50831d0573002d5b44168b1abced412df9))


#### Features

* added global `.agignore` file ([026a6b9b](https://github.com/adambiggs/dotfiles.git/commit/026a6b9b1e5594651398e08618a796c4d005ced8))
* added global `.gitignore` file ([8a06a41e](https://github.com/adambiggs/dotfiles.git/commit/8a06a41ed56c0fba4a6f44edbb74dc44e68d8a62))
* **vim:**
  * activated Vdebug continuous mode by default ([60cc8a6c](https://github.com/adambiggs/dotfiles.git/commit/60cc8a6c00945dcaa45527f9cf206626493d8366))
  * added `ag.nvim` plugin ([87ce4e8d](https://github.com/adambiggs/dotfiles.git/commit/87ce4e8d5e19bb3ae3220502c73d8812f55da6f5))


## 3.0.0 (2015-05-19)


#### Bug Fixes

* **vim:** CtrlP plugin config not working ([53c05a43](https://github.com/adambiggs/dotfiles.git/commit/53c05a43066496f7c1e77d85d573753391b40f5d))


#### Features

* updated `nvm` ([76aaaf7b](https://github.com/adambiggs/dotfiles.git/commit/76aaaf7b9dcf7cc2744e4f9e2290d4b43116333e))
* **tmux:** changed leader mapping from `C-a` to `C-t` for Vim compatability ([e326d714](https://github.com/adambiggs/dotfiles.git/commit/e326d714e12bbb6ced8fa95380c9fa555dbc566b))
* **vim:**
  * got rid of `vim-startify` because I wasn't using it ([1fd6f813](https://github.com/adambiggs/dotfiles.git/commit/1fd6f813989e5092ee4641484be7d9fa108fab8c))
  * switched `tabular` plugin to `vim-easy-align` ([1665a21d](https://github.com/adambiggs/dotfiles.git/commit/1665a21dc9413c3d4a3d86288328deedf337399a))
  * added Ctrl-Space mapping for buffer browsing with CtrlP ([28d071db](https://github.com/adambiggs/dotfiles.git/commit/28d071db074ea8969dd89dfc4678d4a22ebdbb0b))
  * enabled CtrlP lazy update and Tag search extension ([bdec2c5a](https://github.com/adambiggs/dotfiles.git/commit/bdec2c5a8ba9abd404b28d52ed3b8dcf867b2b3b))
  * added `ctrlp-cmatcher` plugin ([7a7cece0](https://github.com/adambiggs/dotfiles.git/commit/7a7cece0b9a9a0c62716c74f7dbc6beff8aa8462))


## 2.2.0 (2015-05-15)


#### Bug Fixes

* **vim:**
  * FZF currently very broken in NeoVim - Switch back to CtrlP for now ([08944cb4](https://github.com/adambiggs/dotfiles.git/commit/08944cb42cc67cd9b11158a55b7787a0e9e16ad4))
  * remove `options` from `viewoptions` setting ([9aa38d3d](https://github.com/adambiggs/dotfiles.git/commit/9aa38d3d11090d14c328530d1e7d0482e2a73cf5))


#### Features

* updated `zgen` ([3bdb128e](https://github.com/adambiggs/dotfiles.git/commit/3bdb128e488e1f9e7ddd0c7dba48066227f2974a))
* updated `nvm` ([2a2534bb](https://github.com/adambiggs/dotfiles.git/commit/2a2534bb0d94bf457e979622463d77b527493ee0))
* updated `nvm` ([a63b2c5e](https://github.com/adambiggs/dotfiles.git/commit/a63b2c5ea1f68c04cf0b67805274e930ec6bc748))
* updated `zgen` ([4c36faff](https://github.com/adambiggs/dotfiles.git/commit/4c36faff8fcbddaa1a0565b31e8037d3352e82fe))
* **vim:**
  * installed `visualrepeat` plugin ([3d1a4a9f](https://github.com/adambiggs/dotfiles.git/commit/3d1a4a9fc6553b3d9dbb3855d3bc9195f6a60ed2))
  * installed NERDTree CoffeeScript filter plugin ([214accd7](https://github.com/adambiggs/dotfiles.git/commit/214accd728cc266e843468b65263c14e49008342))
  * installed `vim-peekaboo` plugin ([87002f29](https://github.com/adambiggs/dotfiles.git/commit/87002f2969546570cc2cd31bf8fc289b2a4e586f))
* **zsh:** added aliases to help debug NeoVim segfaults ([01b61b1a](https://github.com/adambiggs/dotfiles.git/commit/01b61b1a19e25fb084a21b0973ca79f6d515e277))


### 2.1.1 (2015-05-04)


#### Bug Fixes

* **vim:** `fzf` keymaps not working after changing install directory ([c4af63f0](https://github.com/adambiggs/dotfiles.git/commit/c4af63f029339b3fffee0885f2ed0bdeb13de16d))


#### Features

* updated NVM to latest origin commit ([261e980e](https://github.com/adambiggs/dotfiles.git/commit/261e980eb524d9dc4dab392904d12833e994fc6f))
* **vim:**
  * switched Syntastic back to NeoMake (no longer broken in NeoVim) ([b36969fc](https://github.com/adambiggs/dotfiles.git/commit/b36969fc2a00f0e2575e5aed693001a31d429c34))
  * got Tagbar plugin working again ([ba4ad776](https://github.com/adambiggs/dotfiles.git/commit/ba4ad776bf4e0a5d05940996bfe7739f1f8d5f3b))


## 2.1.0 (2015-05-04)


#### Bug Fixes

* **update:**
  * OhMyZSH waits for prompt before updating ([4afa1f1e](https://github.com/adambiggs/dotfiles.git/commit/4afa1f1e1350f35429fecc096d80a94e8d0768ee))
  * fetch remote before comparing NeoVim commits ([40cb2bcd](https://github.com/adambiggs/dotfiles.git/commit/40cb2bcdc004231ed5948baddffa45fc3afeb417))


#### Features

* removed `fzf` git submodule, install with VimPlug instead ([c893a6a0](https://github.com/adambiggs/dotfiles.git/commit/c893a6a06322e9496c4f86d3997aa426048ef970))
* **update:** reinstall NeoVim from latest HEAD if there are updates available ([c965d403](https://github.com/adambiggs/dotfiles.git/commit/c965d403a83ca2115fe806ba6a6dcde553c652b2))


## 2.0.0 (2015-04-23)


#### Bug Fixes

* **update:** wrong path to `colors` script ([83c70dd4](https://github.com/adambiggs/dotfiles.git/commit/83c70dd4e6ab3f7b9ee69a0aa706711c5059f4ce))


#### Features

* updated `fzf`, `nvm`, and `zgen` submodules ([8063787f](https://github.com/adambiggs/dotfiles.git/commit/8063787f0e40ae039d139f51b214b1f69ab713e5))
* removed `patched-fonts` submodule ([1d3ba379](https://github.com/adambiggs/dotfiles.git/commit/1d3ba37974b81b20e8ffd687ba3fbbe3204b429b))
* install glyph fonts, refactored `install`/`link`/`update` scripts ([e6272eff](https://github.com/adambiggs/dotfiles.git/commit/e6272effb00fb80946c3d9ea92249226bf5ef19c))
* **iTerm:** changed font ([d0839a3b](https://github.com/adambiggs/dotfiles.git/commit/d0839a3bbdf1db7fdcc2121d420560436b30d504))
* **tmuxinator:** updated `lmpm.yml` to make better use of `vim-prosession` ([d8612332](https://github.com/adambiggs/dotfiles.git/commit/d8612332de08dfccc3291e4c869ff15d9ccfec6c))
* **vim:**
  * installed `php.vim` plugin ([1af69543](https://github.com/adambiggs/dotfiles.git/commit/1af6954368ee8c78a78cf886d0ee3f4fb89d3ec0))
  * installed `vim-prosession` session management plugin ([14cbbb26](https://github.com/adambiggs/dotfiles.git/commit/14cbbb26946032a2b170debcc660755f5e700221))
  * installed `vim-webdevicons` and glyph patched fonts ([a8f55330](https://github.com/adambiggs/dotfiles.git/commit/a8f553305f618e5934dd1743ec2d56f46acbadef))


### 1.6.2 (2015-04-17)


#### Features

* updated `nvm` ([caf8b802](https://github.com/adambiggs/dotfiles.git/commit/caf8b802abcf6ae9b5f793448fd3fb0d80e4789c))
* **fzf:**
  * use CtrlP mappings in FZF ([7a402349](https://github.com/adambiggs/dotfiles.git/commit/7a4023493155aae979a16b9a0e46513ba244f7fd))
  * use `--multi` mode by default ([d478f7cd](https://github.com/adambiggs/dotfiles.git/commit/d478f7cde377313645339afb547b28eb91543e26))
* **update:** update `zgen` and use it to update `zsh` plugins ([a077f184](https://github.com/adambiggs/dotfiles.git/commit/a077f18487a54cd8043ffddf3de6281bbb651f9a))
* **vim:** browse buffers with FZF and remove CtrlSpace ([212e9ee0](https://github.com/adambiggs/dotfiles.git/commit/212e9ee0f0705e0ffc2b78689ab54a1339c532f7))


### 1.6.1 (2015-04-12)


#### Bug Fixes

* **install:** if `brew` already exists, it might install out-of-date packages ([d1a0dbf8](https://github.com/adambiggs/dotfiles.git/commit/d1a0dbf8882283b420e214ab00c17d44e4b9f7d3))


#### Features

* updated `nvm` ([41bd3707](https://github.com/adambiggs/dotfiles.git/commit/41bd3707a0e4fffd5d50693f6ca850a84de2a3bc))
* updated `fzf` ([d55afc2c](https://github.com/adambiggs/dotfiles.git/commit/d55afc2c09cd05b5d7b47c31a577d9142aae0bc9))
* **vim:** more smarter Utilsnips keymaps ([7a7cec59](https://github.com/adambiggs/dotfiles.git/commit/7a7cec59cd3cae088039bffae28555436b32f69c))


## 1.6.0 (2015-04-10)


#### Bug Fixes

* **vim:**
  * pane navigation keymaps broken in new NeoVim terminal buffers ([9af92f1f](https://github.com/adambiggs/dotfiles.git/commit/9af92f1fe636f45ca846da75a791263a0630e66a))
  * Utilsnips keymaps not working ([744ea439](https://github.com/adambiggs/dotfiles.git/commit/744ea4396c45366cde426873fae5a2a002b506e3))
  * Handlebars plugin not activating properly ([c0a02c55](https://github.com/adambiggs/dotfiles.git/commit/c0a02c552d66235ba120d024ba8fcabc9e4c5dd0))
* **zsh:** `fzf` keybindings not working ([cd978bf9](https://github.com/adambiggs/dotfiles.git/commit/cd978bf9fda75a4b231068c042a085c031c34d16))


#### Features

* update fzf ([862b1182](https://github.com/adambiggs/dotfiles.git/commit/862b1182828dd72f3c878c59bda5abbe4e2f72aa))
* **vim:**
  * deactivate Tern plugin till I get around to making shit work right ([b7edb7bd](https://github.com/adambiggs/dotfiles.git/commit/b7edb7bdcfbd03049b92ee64901b943c8b9b4703))
  * update Airline tabline config ([ab19ae16](https://github.com/adambiggs/dotfiles.git/commit/ab19ae160ad09f64e34d2d8cb683fb16a4af97ec))
  * replace Unite with fzf for CtrlP mapping ([8a6cefa3](https://github.com/adambiggs/dotfiles.git/commit/8a6cefa37d3a9221c69efa21d4955f61b7de314f))
  * remove Unite plugin ([48a82b44](https://github.com/adambiggs/dotfiles.git/commit/48a82b444557fc01c8572a7e8cd8cfdd2c671cbb))
* **zsh:** get rid of aliases I don't use anymore ([4a741db0](https://github.com/adambiggs/dotfiles.git/commit/4a741db0b2896ec101c1df909e05c9f918e2a05b))


### 1.5.4 (2015-04-09)


#### Bug Fixes

* **install:** don't install `gem` packages with sudo ([55b6e715](https://github.com/adambiggs/dotfiles.git/commit/55b6e71594ecd1ba81ff90dfc12663d37e8ba4fa))
* **update:** don't use sudo when updating `pip` packages ([95b9cbee](https://github.com/adambiggs/dotfiles.git/commit/95b9cbeee1ebdaf4b167633b6bfee2fc5bf65ebd))


#### Features

* **install:**
  * install script updates existing git submodules to latest remote ([3bec2959](https://github.com/adambiggs/dotfiles.git/commit/3bec2959903fbc4a825f78b8faa054c7d896f3e2))
  * only install `pip` packages that haven't been installed yet ([dedffbfb](https://github.com/adambiggs/dotfiles.git/commit/dedffbfb2380783b8910c2d41e007e52f22c6eb5))
  * install brewed `python`, and improved Linux support ([ab4f853d](https://github.com/adambiggs/dotfiles.git/commit/ab4f853d37eb9ac167e31401f8d6005810f3f277))
* **tmuxinator:** updated lmpm workspace layout ([1b849a0e](https://github.com/adambiggs/dotfiles.git/commit/1b849a0e4507652b8c5b64264fd5fd2fe762e639))


### 1.5.3 (2015-04-08)


#### Bug Fixes

* **vim:** remove `vim-tmux-focus-events` plugin b/c it doesn't work with NeoVim ([64fcba65](https://github.com/adambiggs/dotfiles.git/commit/64fcba65c223771bf3d083d55ce55005bbe54e66))


#### Features

* add `fzf` vim plugin, zsh config, and add it to install script ([c6f37d13](https://github.com/adambiggs/dotfiles.git/commit/c6f37d13b80e1044e0440e51a5881c577182be71))
* updated `patched-fonts` to latest version ([0d894cf5](https://github.com/adambiggs/dotfiles.git/commit/0d894cf58e6a1ef1e400345a93bb0393e865781b))
* updated NVM to latest version ([0483ba66](https://github.com/adambiggs/dotfiles.git/commit/0483ba66dfec281e0ac2293f5f71d5044157202f))
* added `fzf` git submodule ([a9ca4aa1](https://github.com/adambiggs/dotfiles.git/commit/a9ca4aa1d1db6cc8575ff86b18c3374cdf0f8721))
* **update:** rebase submodules to latest commit in remote tracking branch ([7828dc89](https://github.com/adambiggs/dotfiles.git/commit/7828dc8961492f4faedf156f5a3bda06a327476e))
* **vim:**
  * disable `smartindent` b/c it was acting weird in some scenarios ([16e0a1ea](https://github.com/adambiggs/dotfiles.git/commit/16e0a1ea5cb0fc13dbffede985d629df111a4e5f))
  * change Over.vim keymaps and add one to substitute visual selection ([909b8514](https://github.com/adambiggs/dotfiles.git/commit/909b85149c68ad7d418aebbbd2d5d856ce0c4f5e))
  * disable unused Vimux keymappings ([992093fb](https://github.com/adambiggs/dotfiles.git/commit/992093fbe4b6e3f140c6e0561934beac5bbad900))
  * auto-escape pasted characters in Over.vim commands ([141cfc76](https://github.com/adambiggs/dotfiles.git/commit/141cfc76f4f4cad3c2e1b6132e36d6acb32f5984))


### 1.5.2 (2015-03-31)


#### Features

* **link:** make link script non-interactive (regenerate links without asking) ([8734d21e](https://github.com/adambiggs/dotfiles.git/commit/8734d21e33f8b8149e6aa2b22c575ff7c8a013a8))
* **vim:**
  * expand paths of temp files to avoid filename clashes ([3e36aed2](https://github.com/adambiggs/dotfiles.git/commit/3e36aed2c91c46e88e5d444f9266af70b74a6df5))
  * who needs swap files anyway? ([03061376](https://github.com/adambiggs/dotfiles.git/commit/030613760a68edfd6eceaf861cf33a6df19c47b0))
  * switch from `vim-signify` to `vim-gitgutter` cuz I only use Git ([e853ee60](https://github.com/adambiggs/dotfiles.git/commit/e853ee60025aaa2998d5ce7b0ce02e5de2b3c77d))


### 1.5.1 (2015-03-30)


#### Features

* **install:**
  * install Karabiner ([87bc341e](https://github.com/adambiggs/dotfiles.git/commit/87bc341e110f70dacbb78cbe212a6cbadf5243d0))
  * check if ruby gems are already installed ([4f93c878](https://github.com/adambiggs/dotfiles.git/commit/4f93c8788d92cd83c3ef6da4c5967304e7cf54a2))


## 1.5.0 (2015-03-30)


#### Bug Fixes

* **install:**
  * shouldn't try to install Mac packages in Linux... ([61872ee0](https://github.com/adambiggs/dotfiles.git/commit/61872ee0282924b15d628493d999cf326293ac75))
  * `battery` brew package needs to be tapped ([d56c790c](https://github.com/adambiggs/dotfiles.git/commit/d56c790c27cb24988b1d091def0885a2db5ffd22))
* **update:** `git submodule sync` command seems to leave submodules detached ([7f6415eb](https://github.com/adambiggs/dotfiles.git/commit/7f6415eb1251a0732506503dbef4caff5fb1d382))


#### Features

* added aws cli zsh completions ([d2dcebb5](https://github.com/adambiggs/dotfiles.git/commit/d2dcebb538302d2a39e1f57208c4ed9852066c55))
* store custom Karabiner key mappings ([36f876ea](https://github.com/adambiggs/dotfiles.git/commit/36f876ea835190a048fe7f19d615ac35ae06d7ea))
* added iTerm CLI integration feature ([991e84f2](https://github.com/adambiggs/dotfiles.git/commit/991e84f25264811da41d0b67ec860c9bfb41509d))
* don't create neovim spellfile symlink. use `:set spell` instead ([d90ce437](https://github.com/adambiggs/dotfiles.git/commit/d90ce4377459c4afba5a84ef049c64156323a019))
* **docker:** much improved Dockerfile ([1e99d2a3](https://github.com/adambiggs/dotfiles.git/commit/1e99d2a3296e1dee6ca8371a931d06903724f3fb))
* **install:**
  * install Pip packages ([a05e7c86](https://github.com/adambiggs/dotfiles.git/commit/a05e7c86c4edf505e6cca66ebcb659154ec84e99))
  * install Ruby gems ([2612689d](https://github.com/adambiggs/dotfiles.git/commit/2612689dcbb8f99c1a31ccff7907cd4e971740e0))
  * install GUI apps using Homebrew Cask ([b4b0fe75](https://github.com/adambiggs/dotfiles.git/commit/b4b0fe75a2e23c0daa6a5cf51524c0ccbce08ca1))
  * update script to install patched Powerline fonts ([3892ecd7](https://github.com/adambiggs/dotfiles.git/commit/3892ecd7026c6f7b900e46b795ba739764dc1da7))
* **vim:**
  * switch from VimPlug back to Syntastic due to breaking NeoVim changes ([03bb9098](https://github.com/adambiggs/dotfiles.git/commit/03bb90981654a18d6489fbddf72062bf48094c25))
  * move all neovim plugins to `~/.nvim/plugged` directory ([f6242b9b](https://github.com/adambiggs/dotfiles.git/commit/f6242b9bc83ff86cf931d3f3edf3a44d79535524))
  * use a single `<Leader>` for all default EasyMotion mappings ([25119bd6](https://github.com/adambiggs/dotfiles.git/commit/25119bd6a9ce93945b682f5d67a9cccc44851675))
* **zsh:**
  * added `zsh-notify` plugin ([41f38372](https://github.com/adambiggs/dotfiles.git/commit/41f383725e1c0cf5b7dc08166cf4555d2f5f6037))
  * alias `github` to `gitit` ([007df21a](https://github.com/adambiggs/dotfiles.git/commit/007df21a80d1b96f42b992fd9c29f629dbfab36b))


## 1.4.0 (2015-03-24)


#### Bug Fixes

* typo in `install.sh` script ([5126559c](https://github.com/adambiggs/dotfiles.git/commit/5126559cd0bec05705f1b9d2dd3379f6dbe02e71))
* **vim:** insert mode cursor shape not changing ([6c015e4f](https://github.com/adambiggs/dotfiles.git/commit/6c015e4f7853c9a57da54639e7a8da805bca7c04))


#### Features

* added `nvm` as a submodule ([5a467e8d](https://github.com/adambiggs/dotfiles.git/commit/5a467e8d16d7726c5c0fb646b295270c5fdaa4c4))
* **update:** update git submodules ([16bbe99c](https://github.com/adambiggs/dotfiles.git/commit/16bbe99c305162bf03ae4a1fd0111baf8192d8e1))
* **vim:**
  * set global options for `vdebug` plugin ([c735dfcd](https://github.com/adambiggs/dotfiles.git/commit/c735dfcd1bfb80dd5ed2a92d59ffc31effbc437f))
  * some extra vim config tweaks ([6985f814](https://github.com/adambiggs/dotfiles.git/commit/6985f8147598730fd16ba0e47bf8871154aa37ea))
  * on-demand plugin loading for faster launch ([f298f6f1](https://github.com/adambiggs/dotfiles.git/commit/f298f6f13b83a5297925e6f7e73beb20240f84bc))
  * switched to my fork of `vdebug` plugin ([2affc766](https://github.com/adambiggs/dotfiles.git/commit/2affc766a2f6bf93b57e1066b78822bd7e4e90d1))
  * added `sass-syntax` plugin ([48a4ced8](https://github.com/adambiggs/dotfiles.git/commit/48a4ced851691e19caa55920123ab0bccac25d44))
  * added `vim-tmux` and `vim-tmux-focus-events` plugins ([7501f27e](https://github.com/adambiggs/dotfiles.git/commit/7501f27e634c8f7e4961404c3008b1d0f4071ea7))


### 1.3.1 (2015-03-23)


#### Bug Fixes

* **vim:** Startify config disables IndentGuides plugin globally ([4b216d5b](https://github.com/adambiggs/dotfiles.git/commit/4b216d5bf48838258d3d336153f3a58c28482c61))
* **zsh:** only source NVM if it exists ([26a4b5b7](https://github.com/adambiggs/dotfiles.git/commit/26a4b5b74ab07bba6c791a6c3e74bba2c352a3ca))


#### Features

* store iTerm2 preferences in the repo ([4fff5d59](https://github.com/adambiggs/dotfiles.git/commit/4fff5d59e8dfc67bc7c70bd7bde1a971c273eb70))
* install script now installs Vim plugins ([16930f9a](https://github.com/adambiggs/dotfiles.git/commit/16930f9aaf17f3e7494e1deef5ff1643b11973d8))
* **install:** added `ctags` and `battery` brew packages ([acccc9b5](https://github.com/adambiggs/dotfiles.git/commit/acccc9b57d97296676432193f74d37c075938d14))
* **tmux:** tweaked some tmux settings ([a93ab8ee](https://github.com/adambiggs/dotfiles.git/commit/a93ab8eee2fabbfe2b4f793ddf8d70c96eadf7e5))
* **vim:**
  * better looking indent guides when not using default 2-spaces ([686772c9](https://github.com/adambiggs/dotfiles.git/commit/686772c9d0c8fd48f17b257f23af133088fda101))
  * show NeoVim commit in Startify footer ([6531dd36](https://github.com/adambiggs/dotfiles.git/commit/6531dd369c1b257192fcd0ff2121c44157b04082))
  * added heading for Startify sessions ([dd159f08](https://github.com/adambiggs/dotfiles.git/commit/dd159f08f4d43718eb1da30298253410b5b0acd2))


## 1.3.0 (2015-03-23)


#### Features

* update script (wip) ([772dc031](https://github.com/adambiggs/dotfiles.git/commit/772dc0310a6c2c7b737128d7c7c4f749716dada1))
* more better install script ([fa3bac6b](https://github.com/adambiggs/dotfiles.git/commit/fa3bac6b667f1059ba99b5a9f22f66cb81dda96f))
* install script ([609ace72](https://github.com/adambiggs/dotfiles.git/commit/609ace72ad2504c646e945e8f144729bf80f5a60))
* **vim:** added Startify plugin and customized config ([422ccac4](https://github.com/adambiggs/dotfiles.git/commit/422ccac4953a249c394ad59e0fb543700e123e47))
* **zsh:** only source `nvm` if it's been installed ([014893ae](https://github.com/adambiggs/dotfiles.git/commit/014893ae35a9126fc43a9f95442ee23a7208ad58))


### 1.2.4 (2015-03-20)


#### Bug Fixes

* **vim:** `<C-h>` key mapping no longer working due to weird terminal behaviour ([2c1e935b](https://github.com/adambiggs/dotfiles.git/commit/2c1e935ba34a95a93daf7260284020fe0eb42ba3))
* **zsh:** `2ds` boot2docker alias not working ([6de4ac4e](https://github.com/adambiggs/dotfiles.git/commit/6de4ac4eeab56814c92477f4ed55b87cd0e7e24e))


#### Features

* installed `neovim-ruby` submodule ([680fe4f6](https://github.com/adambiggs/dotfiles.git/commit/680fe4f67182319281043d159ab5b9351db66ddb))
* **tmuxinator:**
  * added window to work on base Docker images ([b8fd6657](https://github.com/adambiggs/dotfiles.git/commit/b8fd66570da21bd6acb9836acba37ab702c44b3b))
  * moved `spine-xp` repo into `lmpm` project directory ([75b5125a](https://github.com/adambiggs/dotfiles.git/commit/75b5125aead3feb727692c24be7028a5c1c70b80))
* **vim:** changed PHP indentation to use 4 spaces as per PSR-2 ([7dcb4f42](https://github.com/adambiggs/dotfiles.git/commit/7dcb4f42ee99109fb5794573581104d7053949a6))
* **zsh:**
  * updated aliases ([cfe0d2ce](https://github.com/adambiggs/dotfiles.git/commit/cfe0d2cef0c63fb317acca3642ddfd10dce6f0cb))
  * added Docker Compose zsh completion plugin ([78270620](https://github.com/adambiggs/dotfiles.git/commit/78270620f903737d32f83252f670fb02ba3d2f4b))


### 1.2.3 (2015-03-06)


#### Bug Fixes

* **vim:** highlight isn't re-enabled when performing a search ([1090090d](https://github.com/adambiggs/dotfiles.git/commit/1090090dc40da60bcfa12903b7ee15f2f1a78d5f))


#### Features

* **lmpm:** updated tmuxinator template a little ([1fe16fd4](https://github.com/adambiggs/dotfiles.git/commit/1fe16fd4b74d01c470928781b9d9d1c88a50b2e4))
* **vim:**
  * added mappings for quick EasyMotion word navigation ([54414a41](https://github.com/adambiggs/dotfiles.git/commit/54414a411e6fb088c794010685c552e1c9cd52d8))
  * added `vim-visual-star-search` plugin ([0ff4e172](https://github.com/adambiggs/dotfiles.git/commit/0ff4e172b383a16abb909f0d49096f5a9e1fb506))
* **zgen:** upgraded to latest version ([48098935](https://github.com/adambiggs/dotfiles.git/commit/4809893563e8aee515d86f16d82d80fb878f8a8b))


### 1.2.2 (2015-03-02)


#### Features

* **tmux:** update status line every 5 seconds ([e2b6dbbb](https://github.com/adambiggs/dotfiles.git/commit/e2b6dbbb1ae7aa9ac5be89b9ee0c038627897169))
* **tmuxinator:** update to use new window-root feature ([1c6c55f0](https://github.com/adambiggs/dotfiles.git/commit/1c6c55f0b86860aa2dcfcf4c9555e9ca5dd143e2))
* **zgen:** update to latest version ([fc00be5e](https://github.com/adambiggs/dotfiles.git/commit/fc00be5ea3829a39c6361f019b53481903dc6e88))
* **zsh:** add `docker-machine` alias ([8684b1cb](https://github.com/adambiggs/dotfiles.git/commit/8684b1cb90dbe57f3012a1f7dfa5793248bef98b))


### 1.2.1 (2015-02-24)


#### Features

* added `.zlogin` file ([e402e81b](https://github.com/adambiggs/dotfiles.git/commit/e402e81b2d511b1df6dd14839ad091a59e6c15c0))
* **tmux:** added CPU meter and now-playing to Tmuxline template ([6e327c82](https://github.com/adambiggs/dotfiles.git/commit/6e327c8283896c1f467bc758eb58bebedffeedf6))
* **tmuxinator:** got rid of unnecessary panel from main control window ([03f0c68b](https://github.com/adambiggs/dotfiles.git/commit/03f0c68b612cd31ea1f6341587e1961001633d9e))


## 1.2.0 (2015-02-16)


#### Bug Fixes

* **lmpm:** `docker-compose` startup commands take way too long ([430ae0f9](https://github.com/adambiggs/dotfiles.git/commit/430ae0f9af17182d42e6f2abced227b80cab8557))
* **vim:** finally found nice looking colors for `vim-indent-guides` plugin ([a7dbac52](https://github.com/adambiggs/dotfiles.git/commit/a7dbac521471d9319c76a4dcb245e1855c24987b))
* **zgen:** `selfupdate` doesn't work ([2014af40](https://github.com/adambiggs/dotfiles.git/commit/2014af40a7845d34ecce17db898eac420eca67cf))


#### Features

* added a couple more `Tabular` bindings ([fe898804](https://github.com/adambiggs/dotfiles.git/commit/fe898804db185097e68a0d573474a5e3f34edf5a))
* **tux:** custom Tmuxline theme that works outside Vim ([007634f7](https://github.com/adambiggs/dotfiles.git/commit/007634f70866c4cd20834b457cc66ce19522e50f))
* **vim:** slightly smaller NERDTree window ([d6d88bc9](https://github.com/adambiggs/dotfiles.git/commit/d6d88bc9aab72d7e3bc41ea9ec511b983feccd06))
* **zsh:**
  * added a few more useful zsh plugins ([87d941db](https://github.com/adambiggs/dotfiles.git/commit/87d941db1b07cc6cdb44a4cef718b6c2e2ddbb93))
  * added basic find-and-replace `sed` shortcut ([a8a54cb9](https://github.com/adambiggs/dotfiles.git/commit/a8a54cb9ad1119eb18b77c2ce2c45bbc4c143886))
  * removed some unused aliases ([b6220645](https://github.com/adambiggs/dotfiles.git/commit/b6220645d904febcb2f0aed5601dce5926274d0f))


### 1.1.1 (2015-02-11)


#### Bug Fixes

* **vim:** Airline patched fonts not working in NeoVim ([52bd64cd](https://github.com/adambiggs/dotfiles.git/commit/52bd64cd2c2a44a3ce5ec6930fa3a675a43709e0))


#### Features

* **zsh:** switched from `antigen` to `zgen` ([44b3e39f](https://github.com/adambiggs/dotfiles.git/commit/44b3e39f8db375188ffb0b8fd6962028f4c18ae5))


## 1.1.0 (2015-02-11)


#### Features

* added powerline patched fonts as submodule ([9c09c670](https://github.com/adambiggs/dotfiles.git/commit/9c09c670e5c67b0372370921c1dc8886537935fe))
* switched theme from `solarized` to `eighties` (using `base16` library) ([7e1a16b4](https://github.com/adambiggs/dotfiles.git/commit/7e1a16b4e5b58f5359ffb1a60459b7518d16dbc6))
* added `base16` terminal themes as submodules ([80d11e7e](https://github.com/adambiggs/dotfiles.git/commit/80d11e7e5ecef899aaff6e3eec90e16a84da0905))
* **vim:** let Airline choose it's theme automatically based on Vim theme ([aa887267](https://github.com/adambiggs/dotfiles.git/commit/aa8872674cd4252796235ea0de3ca47ee3df5128))


### 1.0.2 (2015-02-10)


#### Bug Fixes

* link script creating weird nested links if run multiple times ([6191f480](https://github.com/adambiggs/dotfiles.git/commit/6191f4807285ff295b07d7b2a3be5898d2ea892c))
* did I just refer to myself in the 3rd person? ([9404d863](https://github.com/adambiggs/dotfiles.git/commit/9404d863874a159b2ab8054600048e82c45ee4ae))
* cursor not changing shape in insert mode ([714972d4](https://github.com/adambiggs/dotfiles.git/commit/714972d4db0f3ad49fa6396666f1b6fb5670c3aa))
* **tmuxinator:** can't do that there... ([b98e187c](https://github.com/adambiggs/dotfiles.git/commit/b98e187c7b87f2a5182156d301f4044658b8553b))
* **vim:** spell file errors when opening certain files ([b908db59](https://github.com/adambiggs/dotfiles.git/commit/b908db59e01cfce733df3d6dfd6fa5fc3fa4b3e9), closes [#1](https://github.com/adambiggs/dotfiles.git/issues/1))


### 1.0.1 (2015-02-06)


#### Bug Fixes

* always use absolute path of `link.sh` script when creating symlinks ([fe9d3d2e](https://github.com/adambiggs/dotfiles.git/commit/fe9d3d2eccce581a96ffbc07a1c0bcdaa290fd8b))


#### Features

* added tmuxinator config to the repo ([a8c50709](https://github.com/adambiggs/dotfiles.git/commit/a8c507092ff7acd706329d6859dcf162c32003b7))


## 1.0.0 (2015-02-06)


#### Features

* added gulp release task ([8820c77d](https://github.com/adambiggs/dotfiles.git/commit/8820c77d69e2ba95442a7d4e42fe4af2ee5fca1a))
* don't source AWS SSH key for every new terminal ([b4db8e36](https://github.com/adambiggs/dotfiles.git/commit/b4db8e363890f1a9fa7c1ef5db0622ae89709c5e))
* added some Docker aliases ([1769b1a9](https://github.com/adambiggs/dotfiles.git/commit/1769b1a98c941e466b2e3e639da1e4162c7b0c69))
* uninstalled PHP via Brew. No need for extra stuff in `$PATH` ([6261cd94](https://github.com/adambiggs/dotfiles.git/commit/6261cd941890af2fd4e311e8dfc1cb09add5fc1b))
* initial commit ([7b3c08ff](https://github.com/adambiggs/dotfiles.git/commit/7b3c08ff9ac6ad996598dc92d694bca62bd086e8))
* **lmpm:** added LMPM build script alias ([c4f329b9](https://github.com/adambiggs/dotfiles.git/commit/c4f329b92ae122a4d6e8373aae7d1bde112daa26))
* **vim:**
  * clean up NeoVim temp files with `vimclean` alias ([4c252683](https://github.com/adambiggs/dotfiles.git/commit/4c252683c78f346c041bf6629bcb2164de0173b9))
  * added `.nvimrc` file ([5b5c738d](https://github.com/adambiggs/dotfiles.git/commit/5b5c738dc9ac2fb866fb0db5d9660334b64d7999))


