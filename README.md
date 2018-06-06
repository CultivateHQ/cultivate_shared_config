# Cultivate Shared Config

## Spacemacs

### Custom keybindings:
- `C-q` toggle `holy-mode` - makes it easier to switch between Emacs and Vim modes.
- `C-x g` run `magit-status`

### Useful keybindings
To use these shortcuts, press `Space` in Vim mode and `M-m` (Alt-m) in Emacs mode followed by the key combination:

| *Description* | *Keys* |
| ------------- | ------ |
| Toggle neotree | `p t` |
| Reload `.spacemacs` file | `f e R` |

### Custom configuration file

If you want to have custom configurations, you can create a configuration layer for yourself. See [this blog post](http://www.cultivatehq.com/posts/spacemacs-shared-config/) for more information on how to create a private layer, and [this repo](https://github.com/picandocodigo/spacemacs-config/tree/master/personal-config-layer) as an example layer.

### Magit

Call `magit-status`' by pressing `SPC g s` in evil-mode and `C-x g` in holy-mode. In case you don't know how to use magit and want to start, [this](https://github.com/syl20bnr/spacemacs/tree/master/layers/%2Bsource-control/git#magit) is good documentation. There's also [the official Getting started](https://magit.vc/manual/magit/Getting-started.html), to understand how common workflows work.

## Tmux

Custom keybindings:
- `C-a` is used as the prefix instead of the default `C-b`
- `C-a C--` split horizontally
- `C-a C-|` split vertically


## Neovim

Yeah yeah I know, this isn't Spacemacs. However I'm sure there is room in this world for both options ❤️

If you'd like to use neovim then you can do the following to get started:

```
brew install neovim
```

On Mac OS X (and also Linux I suspect) you'll want to create a `~/.config/nvim` folder and symlink `init.vim` from this repo into it. You can also copy paste `custom_color.vim` and `custom_plugins.vim` if you want a starter kit.

We're using [vim-plug](https://github.com/junegunn/vim-plug) for plugin management. Head to that link and download the `plug.vim` file. Put it in a folder called `~/.config/nvim/autoload`.

Now open neovim using the command `nvim` in the root folder of your project. You'll see some errors first time as we've not installed anything yet. Once neovim opens type `:PlugInstall` and hit return to install the plugins listed in `init.vim` (and `custom_plugins.vim` if you took that too).

If you want to use the fuzzy finder you'll also need to install [fzf](https://github.com/junegunn/fzf).

There's also a sample project specific `.nvimrc` file included in this repo so that you can see how to override things at a project level. Add it to the root of your project, fill out the desired overrides and enjoy. 😎

