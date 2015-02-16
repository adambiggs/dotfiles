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


