{
  description = "Flake of Samir";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    disko.url = "github:nix-community/disko";
    home-manager.url = "github:nix-community/home-manager";
  };

  outputs = { self, nixpkgs, home-manager, disko, ... } @ inputs: {
    nixosConfigurations = {
      thinkpad-t490 = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        pkgs = import nixpkgs { system = "x86_64-linux"; };
        specialArgs = { inherit inputs; };
        modules = [
          ./hosts/thinkpad-t490.nix
        ];
      };
    };
  };
}
