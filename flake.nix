{
  description = "Alex Config";

  inputs = {
    nixpkgs.url 	    = "github:NixOS/nixpkgs/nixos-unstable";
    home-manager.url 	= "github:nix-community/home-manager";
    neorg.url           = "github:nvim-neorg/nixpkgs-neorg-overlay";
  };

  outputs = { nixpkgs, home-manager, neorg, ... }@inputs:
    let
      pkgs = import nixpkgs {
        config = { 
            allowUnfree = true; 
        };
        system = "x86_64-linux";
        overlays = [ neorg.overlays.default ];
      };
    in {

      homeConfigurations.alex = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;

        modules = [
        ./programs/alacritty
        ./programs/direnv
        ./programs/git
        ./programs/kitty
        ./programs/nix
        ./programs/nvim
        ./programs/tmux
        ./programs/zsh
        {

            targets.genericLinux.enable = true;

            programs.home-manager.enable = true;

            fonts.fontconfig.enable = true;

            home.packages = with pkgs; [ 
                nixd 
                ripgrep 
                (nerdfonts.override { fonts = [ "VictorMono" "Iosevka" ]; })
            ];

            home.username = "alex";
            home.homeDirectory = "/home/alex";
            home.stateVersion = "23.11";
        }];
      };
    };
}
