# Cultivate Shared Config

## Spacemacs

### Custom keybindings:
- `C-q` toggle `holy-mode` - makes it easier to switch between Emacs and Vim modes.
- `C-x g` run `magit-status`

### Useful keybindings
To use these shortcuts, press `Space` in Vim mode and `M-m` (Alt-m) in Emacs mode followed by the key combination:

| *Description*            | *Keys*  |
| -------------            | ------  |
| Toggle neotree           | `p t`   |
| Reload `.spacemacs` file | `f e R` |

### Copying to system clipboard from `emacs -nw` in tmux/tmate

When running Spacemacs in the terminal inside a tmux/tmate session, the system clipboard is not available as usual. The [`xclipboard` layer](https://github.com/syl20bnr/spacemacs/tree/develop/layers/%2Btools/xclipboard) is included for those using the `develop` branch of Spacemacs. This way you can select text and copy it to the system's clipboard with `x y` and paste it from the system clipboard to Spacemacs with `x p` (prefixed by the special command `SPC` in Vim mode and `alt-m` in Emacs mode).

### Custom configuration file

If you want to have custom configurations, you can create a configuration layer for yourself. See [this blog post](http://www.cultivatehq.com/posts/spacemacs-shared-config/) for more information on how to create a private layer, and [this repo](https://github.com/picandocodigo/spacemacs-config/tree/master/personal-config-layer) as an example layer.

### Magit

Call `magit-status`' by pressing `SPC g s` in evil-mode and `C-x g` in holy-mode. In case you don't know how to use magit and want to start, [this](https://github.com/syl20bnr/spacemacs/tree/master/layers/%2Bsource-control/git#magit) is good documentation. There's also [the official Getting started](https://magit.vc/manual/magit/Getting-started.html), to understand how common workflows work.

### JavaScript development

The `javascript` layer is enabled by default. But we've disabled its error checking because [it conflicts with flycheck](https://github.com/syl20bnr/spacemacs/issues/8078) (enabled with the `syntax-checking` layer). Ideally we should use flycheck for errors and warnings since we can choose which linter to use. Install any of the [available linters](http://www.flycheck.org/en/latest/languages.html#javascript) and verify it's working with `flycheck-verify-setup`.

## Tmux

Custom keybindings:
- `C-a` is used as the prefix instead of the default `C-b`
- `C-a C--` split horizontally
- `C-a C-|` split vertically


## Neovim

Yeah yeah I know, this isn't Spacemacs. However I'm sure there is room in this world for both options ❤️

If you'd like to use neovim then you can do the following to get started.

### Up and running

```
brew install neovim
```

On Mac OS X (and also Linux I suspect) you'll want to create a `~/.config/nvim` folder and symlink `init.vim` from this repo into it. You can also copy paste `custom_color.vim` and `custom_plugins.vim` if you want a starter kit.

We're using [vim-plug](https://github.com/junegunn/vim-plug) for plugin management. Head to that link and download the `plug.vim` file. Put it in a folder called `~/.config/nvim/autoload`.

Now open neovim using the command `nvim` in the root folder of your project. You'll see some errors first time as we've not installed anything yet. Once neovim opens type `:PlugInstall` and hit return to install the plugins listed in `init.vim` (and `custom_plugins.vim` if you took that too).

### Extras

If you want to use the fuzzy finder (`<leader>f`) you'll also need to install [fzf](https://github.com/junegunn/fzf).

If you want to use the alt file finder (`<leader>.`) you'll also need to install [alt](https://github.com/uptech/alt).


### Philosophy

I've split the config out into several files to allow it to be pretty customisable:

1. `init.vim` is the standard shared config and should only contain config that everyone will use.
1. `custom_color.vim` is where you can put your desired colorscheme. If it needs a plugin then add that to `custom_plugins.vim` so that it gets added to the right part of the config file.
1. `custom_overrides.vim` (not included) is where you can override anything else in the standard file if you so desire. Caution though, the further you get from the standard setup, the harder it will be for others to pair with you.
1. `custom_plugins.vim` is for adding any plugins that you'd like to use that are not yet canon in the company.
1. There's also a sample project specific `.nvimrc` file included in this repo so that you can see how to override things at a project level. Add it to the root of your project, fill out the desired overrides and enjoy. 😎 

