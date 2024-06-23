{pkgs, config, ...}: {
    programs.kitty = {
        enable = true;
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
