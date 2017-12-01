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

### JavaScript development

The `javascript` layer is enabled by default. But we've disabled its error checking because [it conflicts with flycheck](https://github.com/syl20bnr/spacemacs/issues/8078) (enabled with the `syntax-checking` layer). Ideally we should use flycheck for errors and warnings since we can choose which linter to use. Install any of the [available linters](http://www.flycheck.org/en/latest/languages.html#javascript) and verify it's working with `flycheck-verify-setup`.

## Tmux

Custom keybindings:
- `C-a` is used as the prefix instead of the default `C-b`
- `C-a C--` split horizontally
- `C-a C-|` split vertically
