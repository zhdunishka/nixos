{ config, pkgs, ... }: { 
	home-manager.backupFileExtension = "backup";
	home-manager.users.zhdunishka = {
		imports = [
		./gnome.nix
		./nixvim.nix
		];
		home.stateVersion = "26.05";
	};
}
