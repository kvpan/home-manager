{
  pkgs,
  config,
  ...
}: let
  link = config.lib.file.mkOutOfStoreSymlink;
  moduleHome = "${config.home.homeDirectory}/code/nix/modules/emacs";
in {
  programs.emacs = {
    enable = true;
  };

  home.file = {
    ".config/emacs" = {
      recursive = true;
      source = link "${moduleHome}/config";
    };
  };
}
