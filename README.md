## Instalation

```
nix run home-manager -- switch  --flake . --impure
```

## Terminals
Install terminals from the base system. This repo will only manage the configs

## Emacs
Install Emacs from the base system. This repo will only manage the configs

## ZSH

add `$HOME/.nix-profile/bin/zsh` as a line to `/etc/shell` and then `chsh -s $HOME/.nix-profile/bin/zsh`
