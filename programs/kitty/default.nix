{pkgs, config, ...}: let
    nixGL = import ../../nixgl.nix { inherit pkgs config; };
in {
    programs.kitty = {
        enable = true;
        package = (nixGL pkgs.kitty);
        font.name = "VictorMono Nerd Font";
        font.size = 11; 
        shellIntegration.enableZshIntegration = true;
        theme = "Atom";
        extraConfig = ''
            background_opacity 0.8
            background_blur 2
        '';
    };
}
