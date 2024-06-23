{ config, lib, pkgs, ... }:
let
    link = config.lib.file.mkOutOfStoreSymlink;
in
{
  programs.emacs.enable = true;

  home.file = {
    ".config/doom" = {
      recursive = true;
      source =  link "${config.home.homeDirectory}/code/nix/common/programs/emacs/doom";
    };
  };
}
