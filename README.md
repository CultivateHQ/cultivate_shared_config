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

### Magit

Call `magit-status`' by pressing `SPC g s` in evil-mode and `C-x g` in holy-mode. In case you don't know how to use magit and want to start, [this](https://github.com/syl20bnr/spacemacs/tree/master/layers/%2Bsource-control/git#magit) is good documentation. There's also [the official Getting started](https://magit.vc/manual/magit/Getting-started.html), to understand how common workflows work.

## Tmux

Custom keybindings:
- `C-a` is used as the prefix instead of the default `C-b`
- `C-a C--` split horizontally
- `C-a C-|` split vertically
