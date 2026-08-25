{ config, pkgs, ... }: {
	imports = [
		./hardware-configuration.nix
		./nixosModules
	];
	system.stateVersion = "26.05";
}
