{pkgs, config, ...}:  {
    programs.alacritty = {
        enable = true;
        settings = {
            window = {
                padding.x = 10;
                padding.y = 10;
                opacity = 0.8;
            };
            font = {
                normal.family = "VictorMono Nerd Font";
                normal.style = "Regular";
                size = 11;
            };
            colors = {
                primary.background = "0x16171E";
                primary.foreground = "0xD1D2D3";

                cursor.text = "0xFEFFFF";
                cursor.cursor = "0xC7C7C7";

                normal.black = "0x000000";
                normal.red = "0xE68E8E";
                normal.green = "0x83AC8E";
                normal.yellow = "0xF5B78A";
                normal.blue = "0x9BB8DC";
                normal.magenta = "0xBAACE2";
                normal.cyan = "0x00C5C7";
                normal.white = "0xC7C7C7";

                bright.black = "0x676767";
                bright.red = "0xFF6D67";
                bright.green = "0x5FF967";
                bright.yellow = "0xFEFB67";
                bright.blue = "0x6871FF";
                bright.magenta = "0xFF76FF";
                bright.cyan = "0x5FFDFF";
                bright.white = "0xFEFFFF";
            };
        };
    };
}
