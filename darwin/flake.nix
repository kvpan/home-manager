{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    home-manager.url = "github:nix-community/home-manager";
  };

  outputs = {
    nixpkgs,
    home-manager,
    ...
  }: let
    pkgs = import nixpkgs {
      config = {allowUnfree = true;};
      system = "aarch64-darwin";
    };
  in {
    homeConfigurations.alex = home-manager.lib.homeManagerConfiguration {
      inherit pkgs;

      modules = [
        ../zsh
        {
          programs.home-manager.enable = true;

          fonts.fontconfig.enable = true;

          home.username = "alex";
          home.homeDirectory = "/Users/alex";
          home.stateVersion = "24.05";

          home.packages = with pkgs; [
            ripgrep
            (callPackage ../fonts {})
            (nerdfonts.override {
              fonts = [
                "D2Coding"
                "Hermit"
                "Iosevka"
                "IosevkaTerm"
                "JetBrainsMono"
                "Monoid"
                "VictorMono"
                "ZedMono"
              ];
            })
          ];
        }
      ];
    };
  };
}
