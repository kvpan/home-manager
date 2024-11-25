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
    ".config/emacs/early_init.el".source = link "${moduleHome}/config/early_init.el";
    ".config/emacs/init.el".source = link "${moduleHome}/config/init.el";
    ".config/emacs/extras" = {
      recursive = true;
      source = link "${moduleHome}/config/extras";
    };
  };
}
