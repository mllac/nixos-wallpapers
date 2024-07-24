{
  description = "wallpapers for dahlia";

  inputs.nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";

  outputs = { nixpkgs, ... }:
  let
    system = "x86_64-linux";
    pkgs = nixpkgs.legacyPackages.${system};
  in {
    packages.${system}.default = pkgs.stdenv.mkDerivation {
      name = "wallpaper-dahlia";

      src = ./.;

      installPhase = ''
      mkdir -p $out
      mv nixchan.png $out
      '';
    };
  };
}
