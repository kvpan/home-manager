## Instalation

```
nix run home-manager -- switch  --flake .
```

## ZSH

add `$HOME/.nix-profile/bin/zsh` as a line to `/etc/shell` and then `chsh -s $HOME/.nix-profile/bin/zsh`

## NIXGL

To support apps that need OpenGL

```
nix-channel --add https://github.com/guibou/nixGL/archive/main.tar.gz nixgl && nix-channel --update
```
