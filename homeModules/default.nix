	let
 		nixvim = import (builtins.fetchGit {
    		url = "https://github.com/nix-community/nixvim";
		ref = "nixos-26.05";	
	});
in
{ config, pkgs, ... }: { 
	imports = [
	<home-manager/nixos>
	];
	home-manager.backupFileExtension = "backup";
	home-manager.users.zhdunishka = {
		imports = [
		nixvim.homeModules.nixvim
		./gnome.nix
		./nixvim.nix
		];
		home.stateVersion = "26.05";
	};
}
