{
        description = "NixOS Flake";
        inputs = {
                nixpkgs.url = "github:nixos/nixpkgs/nixos-26.05";
                home-manager = {
                        url = "github:nix-community/home-manager";
                        inputs.nixpkgs.follows = "nixpkgs";
                        };
                nixvim = {
                        url = "github:nix-community/nixvim";
                        inputs.nixpkgs.follows = "nixpkgs";
                        };
                };
        outputs = { self, nixpkgs, home-manager, nixvim, ... }@inputs: {
                nixosConfigurations = {
                        nixos = nixpkgs.lib.nixosSystem {
                                system = "x86_64-linux";
                                modules = [
                                        ./configuration.nix
                                        home-manager.nixosModules.home-manager
                                        {
                                        nix.settings.experimental-features = [ "nix-command" "flakes" ];
                                        home-manager.useGlobalPkgs = true;
                                        home-manager.useUserPackages = true;
                                        home-manager.sharedModules = [ nixvim.homeModules.nixvim ];
                                        }
                                ];
                        };
                };
        };
}
