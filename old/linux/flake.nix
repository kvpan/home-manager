{
  description = "Alex Config";

  inputs = {
    nixpkgs.url 	    = "github:NixOS/nixpkgs/nixos-unstable";
    home-manager.url 	= "github:nix-community/home-manager";
    emacs-overlay.url   = "github:nix-community/emacs-overlay";
  };

  outputs = { nixpkgs, home-manager, emacs-overlay, ... }@inputs:
    let
      pkgs = import nixpkgs {
        config = { allowUnfree = true; };
        system = "x86_64-linux";
        overlays = [ (import emacs-overlay) ];
      };
    in {

      homeConfigurations.alex = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;

        extraSpecialArgs = inputs;

        modules = [
        ../common/programs/direnv
        ../common/programs/emacs
        ../common/programs/git
        ../common/programs/kitty
        ../common/programs/nix
        ../common/programs/nvim
        ../common/programs/zsh
        {

            targets.genericLinux.enable = true;
            programs.home-manager.enable = true;
            fonts.fontconfig.enable = true;
            home.packages = with pkgs; [ 
                (nerdfonts.override { fonts = [ "VictorMono" "Iosevka" "D2Coding" ]; })

                nixd 

                # utils
                ripgrep
                fd
            ];

            home.username = "alex";
            home.homeDirectory = "/home/alex";
            home.stateVersion = "23.11";
        }];
      };
    };
}
