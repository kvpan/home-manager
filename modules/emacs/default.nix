{
  pkgs,
  config,
  ...
}: let
  link = config.lib.file.mkOutOfStoreSymlink;
  moduleHome = "${config.home.homeDirectory}/code/nix/modules/emacs";
in {
  home.file = {
    ".config/emacs/early-init.el".source = link "${moduleHome}/config/early-init.el";
    ".config/emacs/init.el".source = link "${moduleHome}/config/init.el";
    ".config/emacs/extras" = {
      recursive = true;
      source = link "${moduleHome}/config/extras";
    };
  };
}
