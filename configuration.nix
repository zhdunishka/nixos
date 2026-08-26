{ config, pkgs, ... }: {
	imports = [
		./hardware-configuration.nix
		./nixosModules
		./homeModules
	];
	system.stateVersion = "26.05";
}
