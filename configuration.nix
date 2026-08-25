{ config, pkgs, ... }: {
	imports = [
		./hardware-configuration.nix
		./nixosModules/app
      		./nixosModules/service
      		./nixosModules/system
	];
	system.stateVersion = "26.05";
}
