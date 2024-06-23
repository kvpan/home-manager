{
  description = "Alex Config";

  inputs = {
    nixpkgs.url 	    = "github:NixOS/nixpkgs/nixos-unstable";
    home-manager.url 	= "github:nix-community/home-manager";
  };

  outputs = { nixpkgs, home-manager, ... }@inputs:
    let
      pkgs = import nixpkgs {
        config = { allowUnfree = true; };
        system = "aarch64-darwin";
      };
    in {

      homeConfigurations.alex = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;

        modules = [
        ../common/programs/alacritty
        ../common/programs/direnv
        ../common/programs/git
        ../common/programs/kitty
        ../common/programs/nix
        ../common/programs/nvim
        ../common/programs/tmux
        ../common/programs/zsh
        {
            programs.home-manager.enable = true;

            fonts.fontconfig.enable = true;

            home.packages = with pkgs; [ 
                nixd 
                ripgrep 
                (nerdfonts.override { fonts = [ "VictorMono" "Iosevka" ]; })
            ];

            home.username = "alex";
            home.homeDirectory = "/Users/alex";
            home.stateVersion = "24.05";
        }];
      };
    };
}
